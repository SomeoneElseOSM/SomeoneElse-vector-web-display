#!/bin/bash
# -----------------------------------------------------------------------------
# svwd03_call_icon_convert.sh
# Based on the generic svwd_call_icon_convert.sh
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
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food.png
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
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shelter2.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_shelter.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/telephone.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_telephone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/theatre.p.20.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_theatre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/toilets_free.p.20.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_toilets.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_townhall.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/vending.p.16.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_vending_machine.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/veterinary.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_veterinary.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/waste_basket.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_waste_basket.png

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
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_long.png               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_long.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_short.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_short_double.png          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_short_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_long.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_long_double.png           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_long_double.png
#
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_short.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_long.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_long.png

#
# Oneway marker
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/marker_oneway.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/marker_oneway.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/marker_onewayminusone.png              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/marker_onewayminusone.png
