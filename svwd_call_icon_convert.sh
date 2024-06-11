#!/bin/bash
# -----------------------------------------------------------------------------
# svwd_call_icon_convert.sh
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
# amenities
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parking_free.png               ~/src/SomeoneElse-vector-web-display/icons/amenity_parking.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bench.p07.png                  ~/src/SomeoneElse-vector-web-display/icons/amenity_bench.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_box.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_post_box.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/waste_basket.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_waste_basket.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bicycle_parking.p.20.png       ~/src/SomeoneElse-vector-web-display/icons/amenity_bicycle_parking.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/place_of_worship3.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/amenity_place_of_worship.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/pub_ydddnnndd.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/amenity_pub.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food.png                  ~/src/SomeoneElse-vector-web-display/icons/amenity_fast_food.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_cafe_ddd.png                ~/src/SomeoneElse-vector-web-display/icons/amenity_cafe.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/amenity_restaurant.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/telephone.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/amenity_telephone.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png  ~/src/SomeoneElse-vector-web-display/icons/amenity_community_centre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/toilets_free.p.20.png         ~/src/SomeoneElse-vector-web-display/icons/amenity_toilets.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/grit_bin.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_grit_bin.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/recycling.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/amenity_recycling.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/atm2.p.16.png                 ~/src/SomeoneElse-vector-web-display/icons/amenity_atm.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_pharmacy.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_office.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_post_office.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fuel.p.16.png                 ~/src/SomeoneElse-vector-web-display/icons/amenity_fuel.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shelter2.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_shelter.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_social_facility.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                ~/src/SomeoneElse-vector-web-display/icons/amenity_bar.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/charging_station.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_charging_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bank_d.png                 ~/src/SomeoneElse-vector-web-display/icons/amenity_bank.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/huntingstand.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/amenity_hunting_stand.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_doctors.p.16.png      ~/src/SomeoneElse-vector-web-display/icons/amenity_doctors.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/vending.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_vending_machine.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_dentist.p.16.png       ~/src/SomeoneElse-vector-web-display/icons/amenity_dentist.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/library.p.20.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_library.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_wash.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/amenity_car_wash.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/rental_bicycle.p.20.png       ~/src/SomeoneElse-vector-web-display/icons/amenity_bicycle_rental.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_clinic.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_childcare.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_veterinary.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fountain.png                  ~/src/SomeoneElse-vector-web-display/icons/amenity_fountain.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/taxi_stand.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/amenity_taxi.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/police.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/amenity_police.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/firestation.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_fire_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/motorcycle_parking.p.20.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_motorcycle_parking.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hospital.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_hospital.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tap_drinking.p.20.png         ~/src/SomeoneElse-vector-web-display/icons/amenity_drinking_water.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/publicbookcase.png            ~/src/SomeoneElse-vector-web-display/icons/amenity_public_bookcase.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_townhall.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/theatre.p.20.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_theatre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/clockpedestal.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_clock.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parcel_locker.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/amenity_parcel_locker.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_ice_cream.png       ~/src/SomeoneElse-vector-web-display/icons/amenity_ice_cream.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                ~/src/SomeoneElse-vector-web-display/icons/amenity_nightclub.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png ~/src/SomeoneElse-vector-web-display/icons/amenity_car_rental.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_nursing_home.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_post_depot.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cinema.p.24.png               ~/src/SomeoneElse-vector-web-display/icons/amenity_cinema.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_station.n.16.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_bus_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png  ~/src/SomeoneElse-vector-web-display/icons/amenity_arts_centre.png
#
# leisure
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/playground.p.20.png              ~/src/SomeoneElse-vector-web-display/icons/leisure_playground.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/picnic.p.16.png                  ~/src/SomeoneElse-vector-web-display/icons/leisure_picnic_table.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/leisure_sports_centre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/transport_slipway.p.20.png       ~/src/SomeoneElse-vector-web-display/icons/leisure_slipway.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/leisure_fitness_centre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_fitnessstation.p.16.png  ~/src/SomeoneElse-vector-web-display/icons/leisure_fitness_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/leisure_horse_riding.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/birdhide.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/leisure_bird_hide.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/leisure_miniature_golf.png
#
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/leisure_nonspecific.png
#
# shops
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_convenience.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_hairdresser.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_hairdresser.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_clothes.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/shop_clothes.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_supermarket.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_supermarket.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_repair.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_car_repair.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_beauty.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_beauty.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_vacant.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_charity.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_charity.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_car.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gift.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_gift.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bookmaker.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_bookmaker.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bakery.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_bakery.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_optician.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_optician.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_jewellery.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_jewelry.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_butcher.png    ~/src/SomeoneElse-vector-web-display/icons/shop_butcher.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_furniture.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_furniture.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_newsagent.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_discount.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_variety_store.png
#
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_art.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/shop_art.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_farm.png                 ~/src/SomeoneElse-vector-web-display/icons/shop_farm.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gardencentre.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_garden_centre.png
#
# tourism
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/artwork.p16.png               ~/src/SomeoneElse-vector-web-display/icons/tourism_artwork.png
