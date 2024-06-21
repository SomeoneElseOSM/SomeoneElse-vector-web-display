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
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/restaurant.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/amenity_restaurant.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/telephone.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_telephone.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_community_centre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/toilets_free.p.20.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_toilets.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/grit_bin.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_grit_bin.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/recycling.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_recycling.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/atm2.p.16.png                  ~/src/SomeoneElse-vector-web-display/icons/amenity_atm.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_pharmacy.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/post_office.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/amenity_post_office.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fuel.p.16.png                  ~/src/SomeoneElse-vector-web-display/icons/amenity_fuel.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shelter2.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_shelter.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_social_facility.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                 ~/src/SomeoneElse-vector-web-display/icons/amenity_bar.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/charging_station.png           ~/src/SomeoneElse-vector-web-display/icons/amenity_charging_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bank_d.png                  ~/src/SomeoneElse-vector-web-display/icons/amenity_bank.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/huntingstand.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_hunting_stand.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_doctors.p.16.png       ~/src/SomeoneElse-vector-web-display/icons/amenity_doctors.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/vending.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/amenity_vending_machine.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_dentist.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/amenity_dentist.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/library.p.20.png               ~/src/SomeoneElse-vector-web-display/icons/amenity_library.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/amenity_car_wash.p.16.png      ~/src/SomeoneElse-vector-web-display/icons/amenity_car_wash.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/rental_bicycle.p.20.png        ~/src/SomeoneElse-vector-web-display/icons/amenity_bicycle_rental.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_clinic.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_childcare.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_veterinary.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fountain.png                   ~/src/SomeoneElse-vector-web-display/icons/amenity_fountain.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/taxi_stand.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/amenity_taxi.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/police.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/amenity_police.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/firestation.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/amenity_fire_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/motorcycle_parking.p.20.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_motorcycle_parking.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hospital.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_hospital.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tap_drinking.p.20.png          ~/src/SomeoneElse-vector-web-display/icons/amenity_drinking_water.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/publicbookcase.png             ~/src/SomeoneElse-vector-web-display/icons/amenity_public_bookcase.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_townhall.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/theatre.p.20.png               ~/src/SomeoneElse-vector-web-display/icons/amenity_theatre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/clockpedestal.png              ~/src/SomeoneElse-vector-web-display/icons/amenity_clock.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/parcel_locker.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/amenity_parcel_locker.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/fast_food_ice_cream.png        ~/src/SomeoneElse-vector-web-display/icons/amenity_ice_cream.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_bar_ddd.png                 ~/src/SomeoneElse-vector-web-display/icons/amenity_nightclub.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png  ~/src/SomeoneElse-vector-web-display/icons/amenity_car_rental.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_nursing_home.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/amenity_post_depot.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cinema.p.24.png                ~/src/SomeoneElse-vector-web-display/icons/amenity_cinema.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bus_station.n.16.png           ~/src/SomeoneElse-vector-web-display/icons/amenity_bus_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/leisure_nonspecific.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/amenity_arts_centre.png
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
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_convenience.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_hairdresser.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_hairdresser.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_clothes.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_clothes.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_supermarket.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_supermarket.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_repair.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_car_repair.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_beauty.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/shop_beauty.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/office_nonspecific.p.16.png      ~/src/SomeoneElse-vector-web-display/icons/shop_vacant.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_charity.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_charity.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_car.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gift.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/shop_gift.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bookmaker.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/shop_bookmaker.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_bakery.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/shop_bakery.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_optician.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_optician.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_jewellery.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/shop_jewelry.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_butcher.png                 ~/src/SomeoneElse-vector-web-display/icons/shop_butcher.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_furniture.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/shop_furniture.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_newsagent.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_discount.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_variety_store.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_diy.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/shop_doityourself.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_mobilephone.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_mobile_phone.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_funeraldirectors.p.16.png   ~/src/SomeoneElse-vector-web-display/icons/shop_funeral_directors.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_alcohol.p.20.png            ~/src/SomeoneElse-vector-web-display/icons/shop_alcohol.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/florist.p.16.png                 ~/src/SomeoneElse-vector-web-display/icons/shop_florist.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_shoes.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/shop_shoes.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_gardencentre.p.16.png       ~/src/SomeoneElse-vector-web-display/icons/shop_garden_centre.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_book.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/shop_books.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/shop_pet.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_bicycle.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_bicycle.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_laundry.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_laundry.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_laundry.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_dry_cleaning.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_diy.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/shop_hardware.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_trade.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_homeware.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_carpet.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_electronics.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_electronics.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/travel_agent.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_travel_agency.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_tattoo.png                  ~/src/SomeoneElse-vector-web-display/icons/shop_tattoo.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_sports.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/shop_sports.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/am_pharmacy_d.png                ~/src/SomeoneElse-vector-web-display/icons/shop_chemist.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_homeware.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_interior_decation.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_art.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/shop_art.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_parts.p.16.png      ~/src/SomeoneElse-vector-web-display/icons/shop_car_parts.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_ecig.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/shop_e-cigarette.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_antiques.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_antiques.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_furniture.p.16.png          ~/src/SomeoneElse-vector-web-display/icons/shop_kitchen.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_confectionery.p.16.png      ~/src/SomeoneElse-vector-web-display/icons/shop_confectionery.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_deli.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/shop_deli.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_greengrocer.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_greengrocer.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/department_store.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_department_store.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_convenience.p.16.png        ~/src/SomeoneElse-vector-web-display/icons/shop_frozen_food.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_outdoor.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_outdoor.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/estateagent.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/shop_estate_agent.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_computer.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_computer.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_healthfood.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/shop_health_food.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_car_parts.p.16.png      ~/src/SomeoneElse-vector-web-display/icons/shop_tyres.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_farm.png                    ~/src/SomeoneElse-vector-web-display/icons/shop_farm.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_homeware.p.16.png           ~/src/SomeoneElse-vector-web-display/icons/shop_houseware.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_stationery.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/shop_stationery.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_toys.png                    ~/src/SomeoneElse-vector-web-display/icons/shop_toys.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_beauty.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/shop_cosmetics.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pet.p.16.png                ~/src/SomeoneElse-vector-web-display/icons/shop_pet_grooming.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/shop_wholesale.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_copyshop.png                ~/src/SomeoneElse-vector-web-display/icons/shop_copyshop.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_pawnbroker.p.16.png         ~/src/SomeoneElse-vector-web-display/icons/shop_pawnbroker.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_clothes.p.16.png            ~/src/SomeoneElse-vector-web-display/icons/shop_tailor.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shop_storage_rental.p.16.png     ~/src/SomeoneElse-vector-web-display/icons/shop_storage_rental.png
#
# tourism
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/information.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/tourism_information.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/artwork.p16.png                  ~/src/SomeoneElse-vector-web-display/icons/tourism_artwork.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chalet.p.16.png                  ~/src/SomeoneElse-vector-web-display/icons/tourism_chalet.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hotel2.p.20.png                  ~/src/SomeoneElse-vector-web-display/icons/tourism_hotel.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/guest_house.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/tourism_guest_house.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/view_point.p.16.png              ~/src/SomeoneElse-vector-web-display/icons/tourism_view_point.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/caravan_park.p.24.png            ~/src/SomeoneElse-vector-web-display/icons/tourism_caravan_park.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/camping.n.16.png                 ~/src/SomeoneElse-vector-web-display/icons/tourism_camp_site.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/picnic.p.16.png                  ~/src/SomeoneElse-vector-web-display/icons/tourism_picnic_site.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/museum.p.16.png                  ~/src/SomeoneElse-vector-web-display/icons/tourism_museum.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/guest_house.p.16.png             ~/src/SomeoneElse-vector-web-display/icons/tourism_apartment.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/hostel.p.20.png                  ~/src/SomeoneElse-vector-web-display/icons/tourism_hostel.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/shopping_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/tourism_gallery.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/tourism_zoo.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/motel.p.20.png                   ~/src/SomeoneElse-vector-web-display/icons/tourism_motel.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/tourism_aquarium.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/alpinehut.p.16.png               ~/src/SomeoneElse-vector-web-display/icons/tourism_alpine_hut.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/bandb.p.20.png                   ~/src/SomeoneElse-vector-web-display/icons/tourism_bed_and_breakfast.png
#
# man_made
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/communications.p.20.png          ~/src/SomeoneElse-vector-web-display/icons/man_made_mast.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/squaretower.png                  ~/src/SomeoneElse-vector-web-display/icons/man_made_tower.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/boothdisused.png                 ~/src/SomeoneElse-vector-web-display/icons/man_made_telephone_box.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/survey_point.png                 ~/src/SomeoneElse-vector-web-display/icons/man_made_survey_point.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/manmade_mine.png                 ~/src/SomeoneElse-vector-web-display/icons/man_made_mineshaft.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/flagpole.png                     ~/src/SomeoneElse-vector-web-display/icons/man_made_flagpole.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/chimney.p.20.png                 ~/src/SomeoneElse-vector-web-display/icons/man_made_chimney.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/cairn.png                        ~/src/SomeoneElse-vector-web-display/icons/man_made_cairn.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/water_well.png                   ~/src/SomeoneElse-vector-web-display/icons/man_made_water_well.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/monitoringwater.png              ~/src/SomeoneElse-vector-web-display/icons/man_made_monitoring_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/monitoringwater.png              ~/src/SomeoneElse-vector-web-display/icons/man_made_monitoring_station.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tap_drinking.p.20.png            ~/src/SomeoneElse-vector-web-display/icons/man_made_water_tap.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/tower_water.p.20.png             ~/src/SomeoneElse-vector-web-display/icons/man_made_water_tower.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/communications.p.20.png          ~/src/SomeoneElse-vector-web-display/icons/man_made_antenna.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/lighthouse.p.20.png              ~/src/SomeoneElse-vector-web-display/icons/man_made_lighthouse.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/windmill.png                     ~/src/SomeoneElse-vector-web-display/icons/man_made_windmill.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/watermill.png                    ~/src/SomeoneElse-vector-web-display/icons/man_made_watermill.png
#
# historic
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_archaelogical.png       ~/src/SomeoneElse-vector-web-display/icons/historic_archaeological_site.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/historic_ruins.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/memorial_nonspecific.png         ~/src/SomeoneElse-vector-web-display/icons/historic_memorial.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_mine.png                ~/src/SomeoneElse-vector-web-display/icons/historic_mine_shaft.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_monument.png            ~/src/SomeoneElse-vector-web-display/icons/historic_monument.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_nonspecific.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/historic_building.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_castle.png              ~/src/SomeoneElse-vector-web-display/icons/historic_castle.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_mine.png                ~/src/SomeoneElse-vector-web-display/icons/historic_mine.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_church.png              ~/src/SomeoneElse-vector-web-display/icons/historic_church.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/milestone.png                    ~/src/SomeoneElse-vector-web-display/icons/historic_milestone.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_manor.png               ~/src/SomeoneElse-vector-web-display/icons/historic_manor.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/boundary_stone.png               ~/src/SomeoneElse-vector-web-display/icons/historic_boundary_stone.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_tomb.png                ~/src/SomeoneElse-vector-web-display/icons/historic_tomb.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_folly.png               ~/src/SomeoneElse-vector-web-display/icons/historic_folly.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/memorial_cross.png               ~/src/SomeoneElse-vector-web-display/icons/historic_wayside_shrine.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/manmade_cross.png                ~/src/SomeoneElse-vector-web-display/icons/historic_wayside_cross.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_stone.png               ~/src/SomeoneElse-vector-web-display/icons/historic_stone.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_castle.png              ~/src/SomeoneElse-vector-web-display/icons/historic_fort.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/historic_battlefield.png         ~/src/SomeoneElse-vector-web-display/icons/historic_battlefield.png
#
# emergency
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/health_defibrillator.p.16.png    ~/src/SomeoneElse-vector-web-display/icons/emergency_defibrillator.png
./svwd_convert_icon_from_raster.sh ~/src/openstreetmap-carto-AJT/symbols/sosphone.png                     ~/src/SomeoneElse-vector-web-display/icons/emergency_phone.png
