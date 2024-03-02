#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_convert_icon_from_raster.sh
#
# Copyright (C) 2023-2024  Andy Townsend
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
# Dependencies:  Command used:  Installed via
# ImageMagick    convert        sudo apt install imagemagick
#
# Run this script with the following parameters.
#
# Parameter: For example:                                                       Meaning:
# $1         ~/src/openstreetmap-carto-AJT/symbols/pub_yyyyydyy.p.16.png        From raster .png
# $2         ~/src/SomeoneElse-vector-web-display/icons/pub_yyyyydyy.p.16.png   To vector.png
# $3         yes                                                                Overwrite an existing file.
#
# Set e.v.s for these parameters
FROM_PNG=$1
TO_PNG=$2
OVERWRITE=$3
#
# -----------------------------------------------------------------------------
# The "from" file is whatever file name is used in the "openstreetmap-carto-AJT"
# project.  These do not always match the name of the feature in OSM.  Some,
# like pub_yyyyydyy.p.16.png, contain the pixel size of the .png file.
#
# The "to" files are all created on a 64x64 canvas.
# They are blown up from (roughly) 16x16 to 32x32 in the middle of that canvas.
# The 32x32 file is the basis of the "@2x" .png and .json sprite files.
# The name of the "to" file will need to be derived from the class of the
# feature written in to the vector tile file.  Exactly how that is done is
# determined by the vector style .json.
#
# Other parameters as follows:
# -gravity center
# -resize 200%x200%
# -background transparent
# -extent 64x64
#
# Typically, a directory of icons will be created and then those files
# processed with "montage" to create an "@2x" .png file containing them.
# An accompanying .json file listing the file names and sizes also needs to
# be created.
#
# These are basically placeholders of the right size - they're scaled up from
# 16x16 or so so will benefit from subsequent editing.
# -----------------------------------------------------------------------------
convert_file()
{
    convert ${FROM_PNG} -gravity center -resize 200%x200% -background transparent -extent 64x64 ${TO_PNG}
    echo "Created ${TO_PNG}"
}
#
if [ -f "${TO_PNG}" ]
then
    if [ "${OVERWRITE}" = "yes" ]
    then
	convert_file
    else
	echo "Not overwriting existing file ${TO_PNG}"
    fi
else
    convert_file
fi
#
