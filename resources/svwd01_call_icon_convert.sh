#!/bin/bash
# -----------------------------------------------------------------------------
# svwd01_call_icon_convert.sh
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
# A selection of icons from "openstreetmap-carto-AJT" have been chosen based
# on tag popularity in UK+IE.  Icons are created to support both the "sve01"
# schema (with some conversions based on SomeoneElse-style) and Shortbread
# (which is closer to native OSM tagging).  There is some duplication due to
# supporting both schemas.
#
# The icons created are basically placeholders of the right size - they're
# scaled up from 16x16 or so so will benefit from subsequent editing.
#
# Then, "svwd_create_sprite.sh" can be called to process with "montage" to 
# create an "@2x" ".png" file containing them and an accompanying .json file 
# listing the file names and sizes.
# -----------------------------------------------------------------------------
#
# Icons:
# amenity
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parking_free.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bench.p07.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_bench.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_box.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_post_box.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/waste_basket.p.16.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_waste_basket.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bicycle_parking.p.20.png       ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_bicycle_parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/place_of_worship3.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_place_of_worship.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pub_ydddnnndd.p.16.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_pub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_fast_food.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_cafe_ddd.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_cafe.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_restaurant.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/telephone.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_telephone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_community_centre.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/toilets_free.p.20.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_toilets.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/grit_bin.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_grit_bin.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/recycling.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_recycling.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/atm2.p.16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_atm.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_pharmacy.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_office.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_post_office.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fuel.p.16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_fuel.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shelter2.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_shelter.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_social_facility.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_bar.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/charging_station.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_charging_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bank_d.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_bank.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/huntingstand.p.16.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_hunting_stand.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_doctors.p.16.png       ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_doctors.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/vending.p.16.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_vending_machine.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_dentist.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_dentist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/library.p.20.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_library.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_wash.p.16.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_car_wash.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/rental_bicycle.p.20.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_bicycle_rental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_clinic.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_childcare.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_veterinary.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fountain.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_fountain.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/taxi_stand.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_taxi.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/police.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_police.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/firestation.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_fire_station.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/motorcycle_parking.p.20.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_motorcycle_parking.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hospital.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_hospital.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tap_drinking.p.20.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_drinking_water.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/publicbookcase.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_public_bookcase.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_townhall.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/theatre.p.20.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_theatre.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/clockpedestal.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_clock.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parcel_locker.p.16.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_parcel_locker.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_ice_cream.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_ice_cream.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_nightclub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_car_rental.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_nursing_home.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_post_depot.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cinema.p.24.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_cinema.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_station.n.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_bus_station.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/amenity_arts_centre.png
#
# leisure
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/playground.p.20.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_playground.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/picnic.p.16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_picnic_table.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_sports_centre.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/transport_slipway.p.20.png       ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_slipway.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_fitness_centre.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_fitnessstation.p.16.png  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_fitness_station.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_horse_riding.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/birdhide.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_bird_hide.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_miniature_golf.png
#
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/leisure_nonspecific.png
#
# shop
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_convenience.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_hairdresser.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_hairdresser.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_clothes.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_clothes.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_supermarket.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_supermarket.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_repair.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_car_repair.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_beauty.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_beauty.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_vacant.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_charity.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_charity.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_car.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gift.p.16.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_gift.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bookmaker.p.16.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_bookmaker.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bakery.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_bakery.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_optician.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_optician.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_jewellery.p.16.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_jewelry.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_butcher.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_butcher.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_furniture.p.16.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_furniture.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_newsagent.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_discount.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_variety_store.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_diy.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_doityourself.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_mobilephone.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_mobile_phone.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_funeraldirectors.p.16.png   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_funeral_directors.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_alcohol.p.20.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_alcohol.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/florist.p.16.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_florist.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_shoes.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_shoes.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gardencentre.p.16.png       ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_garden_centre.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_book.p.16.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_books.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_pet.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_bicycle.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_bicycle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_laundry.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_laundry.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_laundry.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_dry_cleaning.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_diy.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_hardware.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_trade.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_homeware.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_carpet.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_electronics.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_electronics.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/travel_agent.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_travel_agency.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_tattoo.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_tattoo.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_sports.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_sports.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_chemist.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_homeware.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_interior_decation.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_art.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_art.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_parts.p.16.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_car_parts.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_ecig.p.16.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_e-cigarette.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_antiques.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_antiques.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_furniture.p.16.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_kitchen.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_confectionery.p.16.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_confectionery.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_deli.p.16.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_deli.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_greengrocer.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_greengrocer.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/department_store.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_department_store.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_frozen_food.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_outdoor.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_outdoor.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/estateagent.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_estate_agent.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_computer.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_computer.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_healthfood.p.16.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_health_food.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_parts.p.16.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_tyres.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_farm.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_farm.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_homeware.p.16.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_houseware.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_stationery.p.16.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_stationery.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_toys.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_toys.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_beauty.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_cosmetics.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_pet_grooming.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_wholesale.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_copyshop.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_copyshop.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pawnbroker.p.16.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_pawnbroker.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_clothes.p.16.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_tailor.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_storage_rental.p.16.png     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/shop_storage_rental.png
#
# tourism
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/information.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_information.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/artwork.p16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_artwork.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chalet.p.16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_chalet.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hotel2.p.20.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_hotel.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/guest_house.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_guest_house.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/view_point.p.16.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_view_point.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/caravan_park.p.24.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_caravan_site.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/camping.n.16.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_camp_site.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/picnic.p.16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_picnic_site.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/museum.p.16.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_museum.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/guest_house.p.16.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_apartment.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hostel.p.20.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_hostel.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_gallery.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_zoo.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/motel.p.20.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_motel.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_aquarium.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/alpinehut.p.16.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_alpine_hut.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bandb.p.20.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/tourism_bed_and_breakfast.png
#
# man_made
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/communications.p.20.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_mast.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/squaretower.png                  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_tower.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/boothdisused.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_telephone_box.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/survey_point.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_survey_point.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/manmade_mine.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_mineshaft.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/flagpole.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_flagpole.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chimney.p.20.png                 ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_chimney.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cairn.png                        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_cairn.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/water_well.png                   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_water_well.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/monitoringwater.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_monitoring_station.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tap_drinking.p.20.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_water_tap.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tower_water.p.20.png             ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_water_tower.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/communications.p.20.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_antenna.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/lighthouse.p.20.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_lighthouse.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/windmill.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_windmill.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/watermill.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/man_made_watermill.png
#
# historic
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_archaelogical.png       ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_archaeological_site.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_ruins.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/memorial_nonspecific.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_memorial.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_mine.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_mine_shaft.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_monument.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_monument.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_building.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_castle.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_castle.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_mine.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_mine.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_church.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_church.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/milestone.png                    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_milestone.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_manor.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_manor.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/boundary_stone.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_boundary_stone.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_tomb.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_tomb.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_folly.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_folly.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/memorial_cross.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_wayside_shrine.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/manmade_cross.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_wayside_cross.png
#~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_stone.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_stone.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_castle.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_fort.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_battlefield.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/historic_battlefield.png
#
# emergency
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_defibrillator.p.16.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/emergency_defibrillator.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/sosphone.png                     ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/emergency_phone.png
#
# highway
# (I don't have an icon for the one highway value "emergency_access_point" in Shortbread POIs)
#
# office
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/office_diplomatic.png
#
# Patterns:
# These must be 32x32 to avoid a white background
# Many are converted from a 32x32 version in svwd01_source_icons,
#
# landuse
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/quarry32.png           ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_quarry.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/historic_quarry32.png  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_historicquarry.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/vineyard32.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_vineyard.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/orchard32.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_orchard.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/wetmeadow32.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_wetmeadow.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/scrub32.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_scrub.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/meadowwildflower32.png   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_meadowwildflower.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/meadowperpetual32.png    ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_meadowperpetual.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/saltmarsh32.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_saltmarsh.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/reedbed32.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_reedbed.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/allotments32.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_allotments.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/beach32.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_beach.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/tidal_beach32.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_tidal_beach.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/mud32.png                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_mud.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/tidal_mud32.png          ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_tidal_mud.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/rock32.png               ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_rock.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/tidal_rock32.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_tidal_rock.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/tidal_sand32.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_tidal_sand.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/scree32.png              ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_scree.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/tidal_scree32.png        ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_tidal_scree.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/shingle32.png            ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_shingle.png
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/SomeoneElse-vector-web-display/resources/svwd01_source_icons/tidal_shingle32.png      ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_tidal_shingle.png
#
# Some use an original raster 32x32 source
~/src/SomeoneElse-vector-web-display/svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/military_red_hatch.png                                ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_landuse_military.png
#
# Some copy straight from raster 64x64
echo "Also copying some patterns over directly"
cp ~/src/openstreetmap-carto-AJT/symbols/wood_broadleaved_pattern.png   ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_broadleaved.png
cp ~/src/openstreetmap-carto-AJT/symbols/wood_needleleaved_pattern.png  ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_needleleaved.png
cp ~/src/openstreetmap-carto-AJT/symbols/wood_mixed_pattern.png         ~/src/SomeoneElse-vector-web-display/resources/svwd01_icons/pattern_natural_mixedleaved.png
#
