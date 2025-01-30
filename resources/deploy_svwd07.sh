#!/bin/bash
# -----------------------------------------------------------------------------
# deploy_svwd07.sh
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
# This script deploys a new copy of the svwd07 map style, which depends on:
#
# svwd07_spec.json, which points at:
#   OSMF vector tiles at https://vector.openstreetmap.org/shortbread_v1/{z}/{x}/{y}.mvt
#   Designed for use with https://switch2osm.org/using-vector/
#   OpenStreetMap's copyright page at https://www.openstreetmap.org/copyright
#
# svwd07_metadata.json
# fonts that can be obtained from below
#   https://github.com/systemed/tilemaker/tree/master/server/static/fonts
#
# svwd07_style.json, which points at
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
sudo /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/svwd_into_apache.sh NONE svwd07 https://map.atownsend.org.uk /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd07_spec.json /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd07_metadata.json /home/${local_filesystem_user}/src/tilemaker/server/static/fonts /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd07_style.json /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources/svwd07_index.html svwd07sprite /home/${local_filesystem_user}/src/SomeoneElse-vector-web-display/resources
#
# No header:  -H /home/${local_filesystem_user}/src/SomeoneElse-map/vector_header.html
