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
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shelter2.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_shelter.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/atm2.p.16.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_atm.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bank_d.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bank.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bar.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/nightclub.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_nightclub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/concert_hall.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_concert_hall.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/car_share.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_car_sharing.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/taxi_stand.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_taxi.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/taxi_office.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_taxi_office.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/rental_bicycle.p.20.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bicycle_rental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bicycle_parking.p.20.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bicycle_parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/motorcycle_parking.p.20.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_motorcycle_parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_station.n.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bus_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_stop_small.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_ferry_terminal.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_cafe_ddd.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_cafe.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cinema.p.24.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_cinema.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/firestation.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fire_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/lifeboat.png                                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_lifeboat.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fuel.p.16.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fuel.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/charging_station.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_charging_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hospital.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_hospital.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/embassy.png                                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_embassy.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/library.p.20.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_library.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_court.p.20.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_courthouse.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_monastery.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_monastery.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/waste_basket.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_waste_basket.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/waste_disposal.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_waste_disposal.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/grit_bin.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_grit_bin.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/left_luggage.p.16.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_left_luggage.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parcel_locker.p.16.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_parcel_locker.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bench.p07.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_bench.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parking_free.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/vending.p.16.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_vending_machine.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_doctors.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_doctors.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_dentist.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_dentist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_pharmacy.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_ambulance.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_ambulance_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/police.p.16.png                                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_police.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_box.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_post_box.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_office.p.16.png                            ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_post_office.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/biergarten.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_biergarten.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/boatyard.p.16.png                               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_boatyard.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/recycling.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_recycling.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_restaurant.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food.png                                   ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fast_food.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/telephone.p.16.png                              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_telephone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/theatre.p.20.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_theatre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/toilets_free.p.20.png                           ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_toilets.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fountain.png                                    ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_fountain.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_prison.p.20.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_prison.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/view_point.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/tourism_viewpoint.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/veterinary.p.16.png                             ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_veterinary.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/animal_boarding.p.16.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_animal_boarding.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/animal_shelter.p.16.png                         ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_animal_shelter.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_wash.p.16.png                       ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_car_wash.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_rental.p.16.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_car_rental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pub_ydddnnndd.p.16.png                          ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/amenity_pub.png

#
# Shields
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_short.png              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_motorway_long.png               ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_motorway_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_short.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_trunk_long.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_trunk_long.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_short.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_short.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shield_other_long.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/shield_other_long.png

#
# Oneway marker
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/marker_oneway.png                      ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/marker_oneway.png
cp ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/marker_onewayminusone.png              ~/src/SomeoneElse-vector-web-display/resources/svwd03_icons/marker_onewayminusone.png
