#!/bin/bash
# -----------------------------------------------------------------------------
# svwd07_call_icon_convert.sh
# Based on the generic svwd_call_icon_convert.sh
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
# This script calls svwd_convert_icon_from_raster.sh multiple times to create
# a directory of icons.
#
# It takes no parameters; details are hardcoded below.
# Icons are being created to support the "sve01" schema (with conversions 
# based on SomeoneElse-style).  
#
# In many cases, the icons created are basically placeholders of the right 
# size - they're scaled up from 16x16 or smaller so so will benefit from 
# subsequent editing.
#
# Then, "svwd_create_sprite.sh" can be called to process with "montage" to 
# create an "@2x" ".png" file containing them and an accompanying .json file 
# listing the file names and sizes.  A very wide sprite 1 icon deep is created.
#
# Montage's maximum width is defined in /etc/ImageMagick-6/policy.xml - to
# create wider montages (at the files sizes used, > 256 icons) this value 
# must be increased.
# -----------------------------------------------------------------------------
#
# A selection of icons included as an example

#
# amenity
# This icon was derived from one originally designed for use in a raster style.
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/amenity_cafe.png ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/amenity_cafe.png

#
# emergency
# (none included in this simple example)

#
# highway
# (none included in this simple example)

#
# historic
# (none included in this simple example)

#
# leisure
# (none included in this simple example)

#
# man_made
# (none included in this simple example)

#
# office
# (none included in this simple example)

#
# shop
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/shop_convenience.png ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/shop_convenience.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/shop_supermarket.png ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/shop_supermarket.png

# sites
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/parking.png ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/parking.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/bicycle_parking.png ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/bicycle_parking.png

#
# public_transport
# aeroway
# railway
# other
# (none included in this simple example)

#
# Area patterns used with the "land" layer:
# (none included in this simple example)

# Line patterns used with the various layers such as "aerialways"
# (none included in this simple example)

#
# Road Shields
# The source icons for these were designed for use in a similar vector style.
# "short" are for road refs with ref_cols of <6, "long" for >=6.
# The normal shields are for ref_rows==1, "double" for ref_rows=2.
# Larger "ref_rows" values are omitted.
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/shield_motorway_short.png              ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/shield_motorway_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/shield_motorway_short_double.png       ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/shield_motorway_short_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/shield_motorway_long.png               ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/shield_motorway_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/shield_motorway_long_double.png        ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/shield_motorway_long_double.png
#

#
# Oneway marker
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/marker_oneway.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/marker_oneway.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd07_source_icons/marker_onewayminusone.png              ~/src/SomeoneElse-vector-web-display/resources/svwd07_icons/marker_onewayminusone.png
