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
# This script removes a map style from below apache.
# It is a companion to
# https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/svwd_into_apache.sh
# which is the matching "install" script and
# https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/sve_delete.sh
# https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/sve_into_apache.sh
# which do the same thing, but delete/install generated map tiles.
# -----------------------------------------------------------------------------
# Then (as root) run this script, with the following parameters.
# These must not contain spaces.  Full paths, no "~".
#
# Parameter: For example:                                                   Meaning:
# $1         omt_ny_1                                                       name of this deployment.
# $2         svwd01                                                         Name of first part of sprite files.
#
# Set e.v.s for these parameters
DEPLOYMENT_NAME=$1
SPRITE_NAME=$2
#
# -----------------------------------------------------------------------------
# Now we have all the information we need.
# Delete the vector tiles that we installed
# -----------------------------------------------------------------------------
#
# -----------------------------------------------------------------------------
# Delete the spec.json
# -----------------------------------------------------------------------------
rm ${APACHE_SUBDIR}/spec_${DEPLOYMENT_NAME}.json
echo "Deleted spec file:     ${APACHE_SUBDIR}/spec_${DEPLOYMENT_NAME}.json"
#
# -----------------------------------------------------------------------------
# Delete the metadata file
# -----------------------------------------------------------------------------
rm ${APACHE_SUBDIR}/metadata_${DEPLOYMENT_NAME}.json
echo "Deleted metadata file: ${APACHE_SUBDIR}/metadata_${DEPLOYMENT_NAME}.json"
#
# -----------------------------------------------------------------------------
# We don't delete fonts files below main Apache directory.
# It is expected that most styles will share fonts
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# Delete the style.json
# -----------------------------------------------------------------------------
rm ${APACHE_SUBDIR}/style_${DEPLOYMENT_NAME}.json
echo "Deleted style json:    ${APACHE_SUBDIR}/style_${DEPLOYMENT_NAME}.json"
#
# -----------------------------------------------------------------------------
# Delete the index.html
# -----------------------------------------------------------------------------
rm ${APACHE_SUBDIR}/index_${DEPLOYMENT_NAME}.html
echo "Deleted web page:      ${APACHE_SUBDIR}/index_${DEPLOYMENT_NAME}.html"
#
# -----------------------------------------------------------------------------
# Delete the sprite files
# We definitely expect "normal" and "@2x" versions.
# I'm guessing that "@3x" and "@4x" versions are used by higher resolution
# displays.
# -----------------------------------------------------------------------------
rm ${APACHE_SUBDIR}/${SPRITE_NAME}.png
rm ${APACHE_SUBDIR}/${SPRITE_NAME}.json
echo "Deleted sprite files:      ${SPRITE_NAME}.png and ${SPRITE_NAME}.json"
rm ${APACHE_SUBDIR}/${SPRITE_NAME}@2x.png
rm ${APACHE_SUBDIR}/${SPRITE_NAME}@2x.json
echo "Deleted sprite files:      ${SPRITE_NAME}@2x.png and ${SPRITE_NAME}@2x.json"
rm ${APACHE_SUBDIR}/${SPRITE_NAME}@3x.png
rm ${APACHE_SUBDIR}/${SPRITE_NAME}@3x.json
echo "Deleted sprite files:      ${SPRITE_NAME}@2x.png and ${SPRITE_NAME}@3x.json"
rm ${APACHE_SUBDIR}/${SPRITE_NAME}@4x.png
rm ${APACHE_SUBDIR}/${SPRITE_NAME}@4x.json
echo "Deleted sprite files:      ${SPRITE_NAME}@2x.png and ${SPRITE_NAME}@4x.json"
#
#
