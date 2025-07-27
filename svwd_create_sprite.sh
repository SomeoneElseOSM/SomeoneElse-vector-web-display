#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_create_sprite.sh
#
# Copyright (C) 2023-2025  Andy Townsend
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# -----------------------------------------------------------------------------
# A vector tile specification such as
# https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/style.json
# defines a "sprite" file obtained via a URL.
# See https://docs.mapbox.com/help/glossary/sprite/
#
# This script creates the files needed for those from .png files in e.g.
# ~/src/SomeoneElse-vector-web-display/icons/
# which in turn may have been derived from e.g.
# ~/src/openstreetmap-carto-AJT/symbols/
# with e.g. ~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh
#
# Dependencies:  Command used:  Installed via
# ImageMagick    montage        sudo apt install imagemagick (Debian 11, Ubuntu 22.04, Debian 12)
# "              "              sudo apt install graphicsmagick-imagemagick-compat (where real
#                               one unavailable, but see caveat below)
# jsonlint       jsonlint-php   sudo apt install jsonlint
#
# Parameter: For example:     Meaning:
# $1         ./icons          icon source directory
# $2         ./svwd01         name and location of the sprite files "svwd01@2x.png" and "svwd01@2x.json"
#
# Set e.v.s for these parameters
ICON_SOURCE=$1
SPRITE_LOCATION=$2
#
# The montage comes from different packages and arguments are different.
# The graphicsmagick-imagemagick-compat one seems very much the poor relation and the -geometry
# option does not work there in the same way (splodges instead of images are produced)
#
# Historically there was a check for Ubuntu 22.04 here, but modern Debian 11 and Debian 12 do have a
# genuine imagemagick available, so the arguments for that apply for all OSes now.
#
IMAGEMAGICK_ARGS="-geometry 64x64 -support 1.0"
#
# -----------------------------------------------------------------------------
# The "128" below corresponds to some default (but modifiable) limites for montage.
# The code below supports multiple lines anyway, so we don't need to exceed those.
# -----------------------------------------------------------------------------
if [ "${ICON_SOURCE}" = "" ]
then
    echo "No sprites created; no icon source provided"
else
    if [ "${SPRITE_LOCATION}" = "" ]
    then
	echo "No sprites created; no sprite location provided"
    else
	if [ -e "${ICON_SOURCE}" ]
	then
	    # -----------------------------------------------------------------------------
	    # First, how many icons are there?
	    # -----------------------------------------------------------------------------
	    NUMBEROFICONS=`ls ${ICON_SOURCE}/*.png | wc -l`
	    echo "There are ${NUMBEROFICONS} icons"
	    # -----------------------------------------------------------------------------
	    # Then, create the sprite .png
	    # -----------------------------------------------------------------------------
	    NUMBEROFROWS="$((( ${NUMBEROFICONS} / 128 ) + 1 ))"
	    NUMBEROFCOLS="$((( ${NUMBEROFICONS} / ${NUMBEROFROWS} ) + 1 ))"
	    echo "There will be ${NUMBEROFROWS} rows and ${NUMBEROFCOLS} columns"
	    montage -background "transparent" -depth 8 -type TrueColorMatte ${ICON_SOURCE}/*.png ${IMAGEMAGICK_ARGS} -tile ${NUMBEROFCOLS}x${NUMBEROFROWS} -matte -transparent "transparent" -type TrueColorMatte -depth 8 ${SPRITE_LOCATION}@2x.png
	    #
	    # -----------------------------------------------------------------------------
	    # Next, create the .json
	    # -----------------------------------------------------------------------------
	    echo "{"                                      >  ${SPRITE_LOCATION}@2x.json
	    current_x=0
	    current_y=0
	    for f in ${ICON_SOURCE}/*.png; do

		if [[ "$current_x" -ne 0 || "$current_y" -ne 0 ]]
		then
		    echo ','                                 >>  ${SPRITE_LOCATION}@2x.json
		fi
		
		echo '"'`basename $f`'": {' | sed "s!.png!!" >>  ${SPRITE_LOCATION}@2x.json
		echo '"height": 64,'                         >>  ${SPRITE_LOCATION}@2x.json
		echo '"pixelRatio": 2,'                      >>  ${SPRITE_LOCATION}@2x.json
		echo '"width": 64,'                          >>  ${SPRITE_LOCATION}@2x.json
		echo '"x": '${current_x}','                  >>  ${SPRITE_LOCATION}@2x.json
		echo '"y": '${current_y}''                   >>  ${SPRITE_LOCATION}@2x.json
		echo '}'                                     >>  ${SPRITE_LOCATION}@2x.json
		current_x=`expr ${current_x} + 64`

		if [[ "$current_x" -ge "${NUMBEROFCOLS} * 64" ]]
                then
		    current_x=0
		    current_y=`expr ${current_y} + 64`
                fi
	    done
	    echo '}'                                         >>  ${SPRITE_LOCATION}@2x.json
	    jsonlint-php ${SPRITE_LOCATION}@2x.json
	    #
	    # ------------------------------------------------------------------------------
	    # Linux clients seem to want "*@2x.png"; Windows ones "*.png"
	    # ------------------------------------------------------------------------------
	    cp ${SPRITE_LOCATION}@2x.json ${SPRITE_LOCATION}.json
	    cp ${SPRITE_LOCATION}@2x.png  ${SPRITE_LOCATION}.png
	else
	    echo "No sprites created; icon source ${ICON_SOURCE} does not exist"
	fi
    fi
fi
#
