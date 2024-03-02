#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_delete.sh
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
# $2         omt_ny_1                                                       name of this deployment.
# $3         /etc/apache2/sites-available/000-default.conf                  location of Apache config file
# $4         svwd01                                                         Name of first part of sprite files.
#
# Set e.v.s for these parameters
TILESET_NAME=$1
DEPLOYMENT_NAME=$2
APACHECONF_LOCATION=$3
SPRITE_NAME=$4
#
# -----------------------------------------------------------------------------
# Now we have all the information we need.
# Delete the vector tiles that we installed
# -----------------------------------------------------------------------------
if [ "${TILESET_NAME}" = "" ]
then
    echo "No tileset deleted; no name provided"
else
    rm -ir ${APACHE_SUBDIR}/${TILESET_NAME}
    echo "Deleted tileset from:   ${APACHE_SUBDIR}/${TILESET_NAME}"
    #
    # -----------------------------------------------------------------------------
    # Remove tileset location from apache config file
    # -----------------------------------------------------------------------------
    if [ "${APACHECONF_LOCATION}" = "" ]
    then
	echo "Apache config file untouched; name not provided"
    else
	if [ -f "${APACHECONF_LOCATION}" ]
	then
	    if grep 'MbtilesEnabled true' ${APACHECONF_LOCATION} > /dev/null
	    then
		grep -v "MbtilesAdd ${TILESET_NAME}" ${APACHECONF_LOCATION} > apacheconf_temp.$$
		mv apacheconf_temp.$$ ${APACHECONF_LOCATION}
		systemctl restart apache2
		echo "Apache config file updated: ${APACHECONF_LOCATION}"
	    else
		echo "Apache config file untouched; MbtilesEnabled true missing from ${APACHECONF_LOCATION}"
	    fi
	else
	    echo "Apache config file untouched; does not exist: ${APACHECONF_LOCATION}"
	fi
    fi
    #
    # -----------------------------------------------------------------------------
    # Delete the spec.json
    # -----------------------------------------------------------------------------
    rm -i ${APACHE_SUBDIR}/spec_${DEPLOYMENT_NAME}.json
    echo "Deleted spec file:     ${APACHE_SUBDIR}/spec_${DEPLOYMENT_NAME}.json"
    #
    # -----------------------------------------------------------------------------
    # Delete the metadata file
    # -----------------------------------------------------------------------------
    rm -i ${APACHE_SUBDIR}/metadata_${DEPLOYMENT_NAME}.json
    echo "Deleted metadata file: ${APACHE_SUBDIR}/metadata_${DEPLOYMENT_NAME}.json"
    #
    # -----------------------------------------------------------------------------
    # We don't delete fonts files below main Apache directory.
    # It is expected that most styles will share fonts
    # -----------------------------------------------------------------------------
    # -----------------------------------------------------------------------------
    # Delete the style.json
    # -----------------------------------------------------------------------------
    rm -i ${APACHE_SUBDIR}/style_${DEPLOYMENT_NAME}.json
    echo "Deleted style json:    ${APACHE_SUBDIR}/style_${DEPLOYMENT_NAME}.json"
    #
    # -----------------------------------------------------------------------------
    # Delete the index.html
    # -----------------------------------------------------------------------------
    rm -i ${APACHE_SUBDIR}/index_${DEPLOYMENT_NAME}.html
    echo "Deleted web page:      ${APACHE_SUBDIR}/index_${DEPLOYMENT_NAME}.html"
    #
    # -----------------------------------------------------------------------------
    # Delete the sprite files
    # -----------------------------------------------------------------------------
    rm -i ${APACHE_SUBDIR}/${SPRITE_NAME}@2x.png
    rm -i ${APACHE_SUBDIR}/${SPRITE_NAME}@2x.json
    echo "Deleted sprite files:      ${SPRITE_NAME}@2x.png and ${SPRITE_NAME}@2x.json"
    #
fi
#
