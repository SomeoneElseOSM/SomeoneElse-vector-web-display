#!/bin/bash
# -----------------------------------------------------------------------------
# svwd03_call_icon_convert.sh
# Based on the generic svwd_call_icon_convert.sh
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
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_arts_centre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/atm2.p.16.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_atm.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bank_d.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bank.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bar.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bench.p07.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bench.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/rental_bicycle.p.20.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bicycle_rental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/biergarten.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_biergarten.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_cafe_ddd.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_cafe.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_rental.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_car_rental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/car_share.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_car_sharing.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_wash.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_car_wash.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cinema.p.24.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_cinema.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_clinic.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_community_centre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_court.p.20.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_courthouse.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_dentist.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_dentist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_doctors.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_doctors.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tap_drinking.p.20.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_drinking_water.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/embassy.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_embassy.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/firestation.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fire_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fountain.png                                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fountain.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hospital.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_hospital.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/huntingstand.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_hunting_stand.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/library.p.20.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_library.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/nightclub.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_nightclub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_nursing_home.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_pharmacy.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/christian3.p.14.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_christian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/islamic3.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_muslim.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/sikh3.p.16.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_sikh.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/jewish3.p.16.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_jewish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hindu.png                                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_hindu.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/buddhist.png                                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_buddhist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shinto.png                                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_shinto.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/taoist.png                                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_taoist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/place_of_worship3.p.16.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_place_of_worship_other.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/playground.p.20.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_playground.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/police.p.16.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_police.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_box.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_post_box.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_office.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_post_office.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_prison.p.20.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_prison.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pub_ydddnnndd.p.16.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_pub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_public_building.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/recycling.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_recycling.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_african.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_african.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_african.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_south_african.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_african.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_north_african.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_british_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_british.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_british_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_english.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_british_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_pie_and_mash.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_british_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_pub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_british_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_modern_british.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_burger.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_american.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_argentinian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_brazilian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_diner.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_grill.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_burger_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_steak_house.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_caribbean.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_caribbean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_caribbean.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_jamaican.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_caribbean.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_afro_caribbean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_caribbean.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_afro-caribbean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_afrocaribbean.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_caribbean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chicken_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_chicken.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chicken_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_fried_chicken.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chicken_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_wings.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_chinese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_thai.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_asian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_japanese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_sushi.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_korean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_vietnamese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_ramen.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_noodle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_malaysian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_indonesian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_cantonese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_oriental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_chinese_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_filipino.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_coffee_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_coffee.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_coffee_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_coffee_shop.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_coffee_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_cake.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_dessert.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_dessert.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_dessert.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_frozen_yogurt.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_fish_and_chips_d.png                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_fish_and_chips.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_fish_and_chips_d.png                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_fish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_fish_and_chips_d.png                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_friture.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_french_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_french.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_greek.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_greek.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_ice_cream.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_ice_cream.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_indian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_curry.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_nepalese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_bangladeshi.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_pakistani.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_tandoori.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_afghan.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_sri_lankan.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_indian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_punjabi.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_italian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_italian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_italian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_italian_pizza.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_italian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_mediterranean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_italian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_pasta.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_italian_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_pizza.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_kebab_d.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_kebab.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_kebab_d.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_turkish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_lebanese.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_lebanese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_lebanese.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_syrian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_mexican_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_mexican.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_mexican_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_tex-mex.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_sandwich_d.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_sandwich.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_seafood_d.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_seafood.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_spanish.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_spanish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant_spanish.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant_tapas.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shelter2.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_shelter.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/telephone.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_telephone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/theatre.p.20.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_theatre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/toilets_free.p.20.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_toilets.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_townhall.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/vending.p.16.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_vending_machine.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/veterinary.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_veterinary.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/waste_basket.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_waste_basket.png

#
# amenity=fast_food
# The catch-all icon is used when something is not a cuisine that we recognise (or not set)
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pizza.png                                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pizza.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_burger.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_burger.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_coffee.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_coffee_shop.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_chinese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pizza.png                                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_italian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_sandwich.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_sandwich.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_chicken.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_chicken.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_mexican_d.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_mexican.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_japanese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_kebab.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_kebab.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_burger.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_american.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_indian.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_indian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_sushi.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_asian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_thai.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_ice_cream.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_ice_cream.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_french.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_french.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_seafood.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_seafood.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_korean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_greek.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_greek.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_burger.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_steak_house.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fishnchips.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_fish_and_chips.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_vietnamese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_noodle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_mexican.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_tex-mex.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_kebab.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_turkish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_ramen.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_donut.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_donut.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_spanish.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_spanish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fishnchips.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_fish.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pizza.png                                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_mediterranean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fishnchips.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_friture.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_chicken.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_wings.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_lebanese.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_lebanese.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_indonesian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_spanish.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_tapas.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_filipino.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pizza.png                                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_italian_pizza.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_african.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_african.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chinese.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_malaysian.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pizza.png                                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pasta.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_dessert.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_dessert.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_ice_cream.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_frozen_yogurt.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_caribbean.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_caribbean.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_burger.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_grill.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_pie.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pasties.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_pie.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pasty.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_pie.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_cornish_pasty.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_pie.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pie.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_pie.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pies.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_british.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_british.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_british.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_english.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_british.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pie_and_mash.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_british.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_pub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_british.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food_modern_british.png

#
# emergency
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_defibrillator.p.16.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/emergency_defibrillator.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/firehydrant.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/emergency_fire_hydrant.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/sosphone.png                                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/emergency_phone.png

#
# highway
#
# highway=emergency_access_point not yet implemented
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/emergency_access_point.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/highway_emergency_access_point.png

#
# historic
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_archaelogical.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_archaeological_site.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_battlefield.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_battlefield.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_castle.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_castle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_hillfort.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_fort.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/memorial_nonspecific.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_memorial.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_monument.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_monument.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_ruins.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/memorial_cross.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_wayside_cross.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/mass_rock.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/historic_wayside_shrine.png

#
# leisure
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_golf.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/leisure_golf_course.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/leisure_ice_rink.png
# No icon for generic leisure=pitch
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_sports_centre32.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/leisure_sports_centre.png
# No icon for leisure=stadium
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/leisure_swimming_pool.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/leisure_water_park.png

#
# man_made
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/lighthouse.p.20.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/man_made_lighthouse.png
# man_made=surveillance (I've never included on a map)
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/communications.p.20.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/man_made_tower.png
# man_made=wastewater_plant (no icon)
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/water_well.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/man_made_water_well.png
# man_made=water_works (no icon)
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/watermill.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/man_made_watermill.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/windmill.png                                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/man_made_windmill.png

#
# office
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/office_diplomatic.png

#
# shop
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_alcohol.p.20.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_alcohol.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bakery.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_bakery.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_beauty.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_beauty.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_coffee.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_beverages.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_bicycle.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_bicycle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_book.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_books.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_butcher.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_butcher.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_car.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_chemist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_clothes.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_clothes.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_computer.p.16.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_computer.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_convenience.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/department_store.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_department_store.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_diy.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_doityourself.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_laundry.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_dry_cleaning.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/florist.p.16.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_florist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_furniture.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_furniture.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gardencentre.p.16.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_garden_centre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_general.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gift.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_gift.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_greengrocer.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_greengrocer.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_hairdresser.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_hairdresser.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_diy.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_hardware.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_jewellery.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_jewelry.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_kiosk.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_laundry.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_laundry.png
# No icon for shop=mall
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_mobilephone.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_mobile_phone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_newsagent.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_optician.p.16.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_optician.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_outdoor.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_outdoor.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_shoes.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_shoes.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_sports.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_sports.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_stationery.p.16.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_stationery.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_supermarket.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_supermarket.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_toys.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_toys.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/travel_agent.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_travel_agency.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shop_video.png

#
# tourism
# The catch-all icon is used when something is not an information value that we recognise (or not set)
#
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/information.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationmarker.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_guidepost.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_board.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_map.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationroutemarker.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_route_marker.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationoffice.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_office.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationroutemarker.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_trail_blaze.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_terminal.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationsign.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_sign.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationstele.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_stele.png
# nothing for "mobile" yet
# no icon makes sense for "yes", "name"
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationoffice.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_visitor_centre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationear.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_audioguide.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_hikingmap.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_tactile_model.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_tactile_map.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationmarker.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_marker.png
# no icon makes sense for "0308", "0208"
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_history.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_nature.png
# no icon yet for "route_numbering"
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_map_board.png
# no icon yet for "board;map" or other semicolon ones as the semicolon would be a challenge in a file name
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_citymap.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationplaque.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_plaque.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationstele.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_post.png
# no icon yet for "wild_life"
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/information.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_public_transport.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationoffice.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_information_office.png
# no icon yet for "phone", ""Unterflurhydrant am Straßenrand vor dem Haus Am Gwend 18"", 
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationsign.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_signpost.png
# no icon yet for "seasonal",
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationboard.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_bicyclemap.png
# no icon yet for "checkpoint", "pedestrians_crossing", or any others down to these last two:
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationstele.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_stone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/informationartwork.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_information_artwork.png

# not yet tested
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/view_point.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_viewpoint.png

# sites
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parking_free.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bicycle_parking.p.20.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/bicycle_parking.png

#
# public_transport
# aeroway
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/aerodrome.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/aerodrome.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/helipad.p.16.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/helipad.png
#
# railway
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/station.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/station.png
#
# other
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_station.n.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bus_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_stop_small.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_ferry_terminal.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_stop_small.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/aerialway_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_stop_pole_24.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/bus_stop.png

#
# Area patterns used with the "land" layer:
# These must be 32x32 to avoid a white background
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/military_red_hatch.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_danger_area.png

#
# Many are converted from a 32x32 version in svwd01_source_icons,
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/beach32.png              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_beach.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/rock32.png             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_rock.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/scree32.png            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_scree.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shingle32.png          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_shingle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/scrub32.png            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_scrub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/marsh.png                                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_wetland.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/wetmeadow32.png        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_wet_meadow.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/wetland_swamp.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_swamp.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/wetland_bog.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_bog.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/wetland_string_bog.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_string_bog.png

#
# Some area patterns copy straight from raster 64x64
# These must tile nicely.
cp ~/src/openstreetmap-carto-AJT/symbols/wood_mixed_pattern.png         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_forest.png

#
# Some area patterns copy from a local 32x32 source
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/allotments32.png         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_allotments.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/othercemetery32.png      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_othercemetery.png


#
# Some area patterns copy from a local 64x64 source
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/quarry64.png             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_quarry.png

# Line patterns used with the various layers such as "aerialways"
# Many are converted from a 32x32 version in svwd01_source_icons,
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/orchard32.png          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_orchard.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/vineyard32.png         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_vineyard.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/cable_car32.png        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_aerialway_cable_car.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/chair_lift32.png       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/pattern_aerialway_chair_lift.png

#
# Road Shields
# The source icons for these are shared with the svwd01 style.
# "short" are for road refs with ref_cols of <6, "long" for >=6.
# The normal shields are for ref_rows==1, "double" for ref_rows=2.
# Larger "ref_rows" values are omitted.
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_short.png              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_short_double.png       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_short_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_long.png               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_long_double.png        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_long_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_short.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_short_double.png          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_short_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_long.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_long_double.png           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_long_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_short.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_short_double.png          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_short_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_long.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_long_double.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_long_double.png

#
# Oneway marker
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/marker_oneway.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/marker_oneway.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/marker_onewayminusone.png              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/marker_onewayminusone.png
