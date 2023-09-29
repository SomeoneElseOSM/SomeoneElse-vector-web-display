#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_into_apache.sh
#
# Copyright (C) 2023  Andy Townsend
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
# -----------------------------------------------------------------------------
# After running Tilemaker to create some vector tiles, this script is designed
# to copy the necessary support files to an apache website.
#
# Install https://github.com/systemed/mod_mbtiles , then edit the apache site 
# config such as "000-default.conf" to contain something like:
#
# MbtilesEnabled true
# MbtilesAdd sve01 "/var/www/html/vector/sve01/output_sve01.mbtiles"
#
# (modifying the path in that line as needed)
#
# -----------------------------------------------------------------------------
# Then (as root) run this script, with the following parameters.
# These must not contain spaces.  Full paths, no "~".
#
# Parameter: For example:                                                   Meaning:
# $1         omt_ny                                                         name of this tileset.  
# $2         /home/ajtown/data/tilemaker_omt_ny.mbtiles                     location of this tileset.
# $3         http://localhost                                               target index URL part 1
# $4         /home/ajtown/src/SomeoneElse-vector-web-display/spec.json      Source of "spec.json" file
# $5         /home/ajtown/src/SomeoneElse-vector-web-display/metadata.json  Source of "metadata" file
# $6         /home/ajtown/src/tilemaker/server/static/fonts                 Source of fonts
# $7         /home/ajtown/src/tilemaker/server/static/style.json            Source of style.json
# $8         /home/ajtown/src/tilemaker/server/static/index.html            Source of index.html
#
# Set e.v.s for these parameters
TILESET_NAME=$1
TILESET_LOCATION=$2
DEPLOYMENT_URL=$3
SPEC_SOURCE=$4
METADATA_SOURCE=$5
FONTS_SOURCE=$6
STYLE_SOURCE=$7
INDEX_SOURCE=$8
#
# -----------------------------------------------------------------------------
# Now we have all the information we need.
# Create a directory for the generated vector tiles and copy the files there
# -----------------------------------------------------------------------------
if [ "${TILESET_NAME}" = "" ]
then
    echo "No tileset installed; no name provided"
else
    if [ "${TILESET_LOCATION}" = "" ]
    then
	echo "No tileset installed; no source provided"
    else
	if [ -f "${TILESET_LOCATION}" ]
	then
	    mkdir -p ${APACHE_SUBDIR}/${TILESET_NAME}
	    cp ${TILESET_LOCATION} ${APACHE_SUBDIR}/${TILESET_NAME}
	    echo "Copied tileset into:   ${APACHE_SUBDIR}/${TILESET_NAME}"
	else
	    echo "No tileset installed; source does not exist"
	fi
    fi
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
	    sed "s!SPEC_NAME!${TILESET_NAME}!" ${SPEC_SOURCE}  | sed "s!SPEC_DESCRIPTION!${TILESET_NAME}!" | sed "s!PBF_URL!${DEPLOYMENT_URL}/${TILESET_NAME}/{z}/{x}/{y}.pbf!" > ${APACHE_SUBDIR}/spec_${TILESET_NAME}.json
	    echo "Created spec file:     ${APACHE_SUBDIR}/spec_${TILESET_NAME}.json"
	else
	    echo "No spec file created; source does not exist"
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
	    sed "s!SPEC_NAME!${TILESET_NAME}!" ${METADATA_SOURCE}  | sed "s!SPEC_DESCRIPTION!${TILESET_NAME}!" > ${APACHE_SUBDIR}/metadata_${TILESET_NAME}.json
	    echo "Created metadata file: ${APACHE_SUBDIR}/metadata_${TILESET_NAME}.json"
	else
	    echo "No metadata file created; source does not exist"
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
	    echo "No fonts installed; source does not exist"
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
	    sed "s!SPEC_NAME!${TILESET_NAME}!" ${STYLE_SOURCE}  | sed "s!SPEC_URL!${DEPLOYMENT_URL}/vector/spec_${TILESET_NAME}.json!" | sed "s!http://localhost:8080/spec.json!${DEPLOYMENT_URL}/vector/spec_${TILESET_NAME}.json!" | sed "s!FONT_URL!${DEPLOYMENT_URL}/vector/fonts/!" | sed "s!http://localhost:8080/fonts/!${DEPLOYMENT_URL}/vector/fonts/!" > ${APACHE_SUBDIR}/style_${TILESET_NAME}.json
	    echo "Created style json:    ${APACHE_SUBDIR}/style_${TILESET_NAME}.json"
	else
	    echo "No style json created; source does not exist"
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
	    sed "s!SPEC_NAME!${TILESET_NAME}!" ${INDEX_SOURCE}  | sed "s!Tilemaker example server!${TILESET_NAME}!" | sed "s!/style.json!/vector/style_${TILESET_NAME}.json!" | sed "s!/metadata!/vector/metadata_${TILESET_NAME}.json!" > ${APACHE_SUBDIR}/index_${TILESET_NAME}.html
	    echo "Created web page:      ${APACHE_SUBDIR}/index_${TILESET_NAME}.html"
	    echo "Access via:            ${DEPLOYMENT_URL}/vector/index_${TILESET_NAME}.html"
	else
	    echo "No web page created; source does not exist"
	fi
    fi
    #
fi # [ "${TILESET_NAME}" = "" ]
#

