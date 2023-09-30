#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_call_icon_convert.sh
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
# This script calls svwd_convert_icon_from_raster.sh multiple times to create
# a directory of icons.
#
# These are basically placeholders of the right size - they're scaled up from
# 16x16 or so so will benefit from subsequent editing.
#
# Then, then those files will be processed with "montage" to create an "@2x"
# .png file containing them.  An accompanying .json file listing the file
# names and sizes also needs to be created.
# -----------------------------------------------------------------------------
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/place_of_worship3.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/place_of_worship.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_farm.png                 ~/src/SomeoneElse-vector-web-display/icons/shop_farm.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png  ~/src/SomeoneElse-vector-web-display/icons/leisure_nonspecific.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_box.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/post_box.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_office.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/post_office.png
#
