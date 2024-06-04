#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_into_apache.sh
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
# This script makes some assumptions about where things are:
#
# Apache subdirectory for generated tiles, json and html files, etc.
APACHE_SUBDIR=/var/www/html/vector
#
# File extension of json files is assumed to be ".json";
# File extension of html file is assumed to be ".html".
# Generated .mbtiles files are currently assumed to be prefixed with "tilemaker_".
# -----------------------------------------------------------------------------
# After running Tilemaker to create some vector tiles, and creating a style to 
# display them, this script is designed to copy the necessary support files to
# an apache website.
# -----------------------------------------------------------------------------
# Use
# https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/sve01_extract.sh
# to extract data and
# https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/sve_into_apache.sh
# to install it (check both scripts for required parameters)
#
# Then (as root) run this script, with the following parameters.
# These must not contain spaces.  Full paths, no "~".
#
# Parameter: For example:                                                   Meaning:
# $1         omt_ny                                                         name of this tileset.  
# $2         omt_ny_1                                                       name of this deployment.
# $3         http://localhost                                               target index URL part 1
# $4         /home/ajtown/src/SomeoneElse-vector-web-display/spec.json      Source of "spec.json" file
# $5         /home/ajtown/src/SomeoneElse-vector-web-display/metadata.json  Source of "metadata" file
# $6         /home/ajtown/src/tilemaker/server/static/fonts                 Source of fonts
# $7         /home/ajtown/src/tilemaker/server/static/style.json            Source of style.json
# $8        /home/ajtown/src/tilemaker/server/static/index.html            Source of index.html
# $9        svwd01                                                         Name of first part of sprite files.
# $10        /home/ajtown/src/SomeoneElse-vector-web-display                Directory of sprite files.
#
# Set e.v.s for these parameters
TILESET_NAME=$1
DEPLOYMENT_NAME=$2
DEPLOYMENT_URL=$3
SPEC_SOURCE=$4
METADATA_SOURCE=$5
FONTS_SOURCE=$6
STYLE_SOURCE=$7
INDEX_SOURCE=${8}
SPRITE_NAME=${9}
SPRITE_SOURCE=${10}
#
# -----------------------------------------------------------------------------
# Now we have all the information we need.
# -----------------------------------------------------------------------------
if [ "${TILESET_NAME}" = "" ]
then
    echo "No tileset installed; no name provided"
else
    #
    # -----------------------------------------------------------------------------
    # Create a spec.json
    # -----------------------------------------------------------------------------
    if [ "${SPEC_SOURCE}" = "" ]
    then
	echo "No spec file created; no source provided"
    else
	if [ -f "${SPEC_SOURCE}" ]
	then
	    sed "s!SPEC_NAME!${DEPLOYMENT_NAME}!" ${SPEC_SOURCE}  | sed "s!SPEC_DESCRIPTION!${DEPLOYMENT_NAME}!" | sed "s!PBF_URL!${DEPLOYMENT_URL}/${TILESET_NAME}/{z}/{x}/{y}.pbf!" > ${APACHE_SUBDIR}/spec_${DEPLOYMENT_NAME}.json
	    echo "Created spec file:     ${APACHE_SUBDIR}/spec_${DEPLOYMENT_NAME}.json"
	else
	    echo "No spec file created; source does not exist: ${SPEC_SOURCE}"
	fi
    fi
    #
    # -----------------------------------------------------------------------------
    # Create a metadata file
    # -----------------------------------------------------------------------------
    if [ "${METADATA_SOURCE}" = "" ]
    then
	echo "No metadata file created; no source provided"
    else
	if [ -f "${METADATA_SOURCE}" ]
	then
	    sed "s!SPEC_NAME!${DEPLOYMENT_NAME}!" ${METADATA_SOURCE}  | sed "s!SPEC_DESCRIPTION!${DEPLOYMENT_NAME}!" > ${APACHE_SUBDIR}/metadata_${DEPLOYMENT_NAME}.json
	    echo "Created metadata file: ${APACHE_SUBDIR}/metadata_${DEPLOYMENT_NAME}.json"
	else
	    echo "No metadata file created; source does not exist: ${METADATA_SOURCE}"
	fi
    fi
    #
    # -----------------------------------------------------------------------------
    # Install fonts files below main Apache directory
    # -----------------------------------------------------------------------------
    if [ "${FONTS_SOURCE}" = "" ]
    then
	echo "No fonts installed; no source provided"
    else
	if [ -e "${FONTS_SOURCE}" ]
	then
	    cp -r ${FONTS_SOURCE} ${APACHE_SUBDIR}/
	    echo "Installed fonts into:  ${APACHE_SUBDIR}"
	else
	    echo "No fonts installed; source does not exist: ${FONTS_SOURCE}"
	fi
    fi
    #
    # -----------------------------------------------------------------------------
    # Create a style.json
    # -----------------------------------------------------------------------------
    if [ "${STYLE_SOURCE}" = "" ]
    then
	echo "No style json created; no source provided"
    else
	if [ -f "${STYLE_SOURCE}" ]
	then
	    sed "s!SPEC_NAME!${DEPLOYMENT_NAME}!" ${STYLE_SOURCE}  | sed "s!SPEC_URL!${DEPLOYMENT_URL}/vector/spec_${DEPLOYMENT_NAME}.json!" | sed "s!http://localhost:8080/spec.json!${DEPLOYMENT_URL}/vector/spec_${DEPLOYMENT_NAME}.json!" | sed "s!FONT_URL!${DEPLOYMENT_URL}/vector/fonts/!" | sed "s!http://localhost:8080/fonts/!${DEPLOYMENT_URL}/vector/fonts/!" | sed "s!SPRITE_URL!${DEPLOYMENT_URL}/vector/${SPRITE_NAME}!" > ${APACHE_SUBDIR}/style_${DEPLOYMENT_NAME}.json
	    echo "Created style json:    ${APACHE_SUBDIR}/style_${DEPLOYMENT_NAME}.json"
	else
	    echo "No style json created; source does not exist: ${STYLE_SOURCE}"
	fi
    fi
    #
    # -----------------------------------------------------------------------------
    # Create an index.html
    # -----------------------------------------------------------------------------
    if [ "${INDEX_SOURCE}" = "" ]
    then
	echo "No web page created; no source provided"
    else
	if [ -f "${INDEX_SOURCE}" ]
	then
	    sed "s!SPEC_NAME!${DEPLOYMENT_NAME}!" ${INDEX_SOURCE}  | sed "s!Tilemaker example server!${DEPLOYMENT_NAME}!" | sed "s!/style.json!/vector/style_${DEPLOYMENT_NAME}.json!" | sed "s!/metadata!/vector/metadata_${DEPLOYMENT_NAME}.json!" > ${APACHE_SUBDIR}/index_${DEPLOYMENT_NAME}.html
	    echo "Created web page:      ${APACHE_SUBDIR}/index_${DEPLOYMENT_NAME}.html"
	    echo "Access via:            ${DEPLOYMENT_URL}/vector/index_${DEPLOYMENT_NAME}.html"
	else
	    echo "No web page created; source does not exist: ${INDEX_SOURCE}"
	fi
    fi
    #
    # -----------------------------------------------------------------------------
    # Copy over sprite files.
    # The "@2x" ones seem to be used by regular browsers.
    # -----------------------------------------------------------------------------
    if [ "${SPRITE_NAME}" = "" ]
    then
	echo "No sprite files created; no sprite name provided"
    else	
	if [ "${SPRITE_SOURCE}" = "" ]
	then
	    echo "No sprite files created; no sprite source provided"
	else
	    if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@2x.png" ]
	    then
		if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@2x.json" ]
		then
		    cp ${SPRITE_SOURCE}/${SPRITE_NAME}@2x.png  ${APACHE_SUBDIR}/
		    cp ${SPRITE_SOURCE}/${SPRITE_NAME}@2x.json ${APACHE_SUBDIR}/
		    echo "${SPRITE_NAME}@2x.png and ${SPRITE_NAME}@2x.json copied to ${APACHE_SUBDIR}"
		    #
		    # -----------------------------------------------------------------------------
		    # If smaller ones exist, they are copied too.
		    # -----------------------------------------------------------------------------
		    if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}.png" ]
		    then
			if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}.json" ]
			then
			    cp ${SPRITE_SOURCE}/${SPRITE_NAME}.png  ${APACHE_SUBDIR}/
			    cp ${SPRITE_SOURCE}/${SPRITE_NAME}.json ${APACHE_SUBDIR}/
			    echo "${SPRITE_NAME}.png and ${SPRITE_NAME}.json copied to ${APACHE_SUBDIR}"
			else
			    echo "No optional non-@2x sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}.json does not exist."
			fi
		    else
			echo "No optional non-@2x sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}.png does not exist."
		    fi # [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}.png" ]

		    #
		    # -----------------------------------------------------------------------------
		    # If larger @3x ones exist, they are copied too.
		    # -----------------------------------------------------------------------------
		    if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@3x.png" ]
		    then
			if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@3x.json" ]
			then
			    cp ${SPRITE_SOURCE}/${SPRITE_NAME}@3x.png  ${APACHE_SUBDIR}/
			    cp ${SPRITE_SOURCE}/${SPRITE_NAME}@3x.json ${APACHE_SUBDIR}/
			    echo "${SPRITE_NAME}@3x.png and ${SPRITE_NAME}@3x.json copied to ${APACHE_SUBDIR}"
			else
			    echo "No optional @3x sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}@3x.json does not exist."
			fi
		    else
			echo "No optional @3x sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}@3x.png does not exist."
		    fi # [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@3x.png" ]

		    #
		    # -----------------------------------------------------------------------------
		    # If even larger @4x ones exist, they are copied too.
		    # -----------------------------------------------------------------------------
		    if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@4x.png" ]
		    then
			if [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@4x.json" ]
			then
			    cp ${SPRITE_SOURCE}/${SPRITE_NAME}@4x.png  ${APACHE_SUBDIR}/
			    cp ${SPRITE_SOURCE}/${SPRITE_NAME}@4x.json ${APACHE_SUBDIR}/
			    echo "${SPRITE_NAME}@4x.png and ${SPRITE_NAME}@4x.json copied to ${APACHE_SUBDIR}"
			else
			    echo "No optional @4x sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}@4x.json does not exist."
			fi
		    else
			echo "No optional @4x sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}@4x.png does not exist."
		    fi # [ -f "${SPRITE_SOURCE}/${SPRITE_NAME}@3x.png" ]

		else
		    echo "No sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}@2x.json does not exist"
		fi
	    else
		echo "No sprite files created; ${SPRITE_SOURCE}/${SPRITE_NAME}@2x.png does not exist"
	    fi
	fi
    fi
    #
fi # [ "${TILESET_NAME}" = "" ]
#
