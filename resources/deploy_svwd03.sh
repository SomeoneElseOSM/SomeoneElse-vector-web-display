#!/bin/bash
# -----------------------------------------------------------------------------
# deploy_svwd03.sh
#
# Copyright (C) 2023-2026  Andy Townsend
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
# This script deploys a new copy of the svwd03 map style, which depends on:
#
# svwd03_spec.json, which points at:
#   OSMF vector tiles at https://vector.openstreetmap.org/shortbread_v1/{z}/{x}/{y}.mvt
#   Style about page at https://map.atownsend.org.uk/vector/About_svwd03.html
#   OpenStreetMap's copyright page at https://www.openstreetmap.org/copyright
#
# svwd03_metadata.json
# fonts that can be obtained from below
#   https://github.com/systemed/tilemaker/tree/master/server/static/fonts
#
# svwd03_style.json, which points at
#   The spec location above
#   Some sprite file
#   The font location above
#
# The source of the html index file
# The base name of the sprite files (to which "@2x" etc. may be added)
# -----------------------------------------------------------------------------
#
# The local user account we are using.
# "local_filesystem_user" is whichever non-root account is used to fetch from
# github.
#
local_filesystem_user=ajtown
#
sudo /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/svwd_into_apache.sh NONE osmf_shortbread https://map.atownsend.org.uk /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd03_spec.json /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd03_metadata.json /home/${local_filesystem_user}/src/tilemaker/server/static/fonts /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd03_style.json /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd03_index.html svwd03sprite /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources
#
pandoc -s -f markdown -t html --metadata title="About this map" /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/About_svwd03.md > /var/www/html/vector/About_svwd03.html 
#
# No header:  -H /home/${local_filesystem_user}/src/SomeoneElse-map/vector_header.html
