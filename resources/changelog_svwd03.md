# Changes made to the [SVWD03 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd03.md).<br/> 
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.<br/>md) for the scripts here.<br/>

## 03/07/2026
Show `man_made=surveillance` as CCTV cameras from vector zoom 19.<br/>
Show name and icon for `amenity=marketplace` and `amenity=food_court`.<br/>

## 28/06/2026
Fixed bug where `area:aeroway=runway` and `area:aeroway=taxiway` was read from an incorrect layer with an incorrect "kind" value.<br/>
See https://github.com/pnorman/spirit/issues/89 - in schema, but not currently in OSMF tiles.<br/>
Bus guideways are now shown slightly differently from busways - with extra black dots.<br/>
Names of runways and taxiways in "streets_polygons_labels" (sic; compare "street_polygons") are now shown.<br/>
Added missing icons and names for `tourism=viewpoint`, `motel`, `hotel`, `hostel`, `guest_house`, `chalet`.<br/> 
Also `tourism=bed_and_breakfast` which is in the schema but not in OSM.<br/>
Added missing icons and names for `tourism=artwork`, which is in the schema but not yet in the tiles. See https://github.com/pnorman/spirit/issues/90 .<br/>

## 27/06/2026
Make police stations visible at vector zoom 15 (1 level earlier).<br/>
Show man_made=bridge opaquely above river polygons.<br/>
Each `amenity=recycling` is now shown with coloured flashes indicating what is recycled there - green for glass, red for clothes, yellow for paper, blue for scrap metal.<br/>

## 26/06/2026
Fixed bug in display of zoos. See https://community.openstreetmap.org/t/demo-of-new-vector-style-for-osm/144551/62 and https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/issues/13 .<br/>
Also added `tourism=alpine_hut` in the same way.<br/>

## 20/06/2026
This style now uses 128x128 sprites, to allow for more detail in some of the icons.<br/>
A number of the the patterns used are made more detailed, and some patterns that were "converted from raster in a hurry" look much better as a result.<br/>
There's a maplibre feature that means that patterns can't be scaled (you have to scale externally and use multiple patterns) - I've tried to size patterns to work around that as best I can, without multiple-sized patterns.<br/>
Many of the 300-odd POI icons are still converted from much smaller raster originals; they could be improved and that has not been done yet.<br/>

## 14/06/2026
Don't show non-bridge oneway arrows over the top of bridges over them.<br/>

## 04/01/2026
Made most icons larger at higher zooms.<br/>

## 01/12/2025
Copy bridge logic for `service`, `living_street`, `unclassified`, and `tertiary` to `motorway` from svwd01 to svwd03.<br/>
copy tram / road fill draw order from svwd01 to svwd03 to stop on-road trams from "disappearing" under bridges.<br/>

## 30/11/2025
Merge `highway=living_street` processing from [parent style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.<br/>md).<br/> This added a casing (the previous version did not work if _not_ over residential) and also improved the bridge display for living streets.<br/>

## 10/11/2025
Removed theme park outlines from the style as they're not in the tiles.<br/> Show theme park names whenever they're in the vector (vector 14), and display them further down the style so that it appears in preference to most other things that only appear at vector 14.<br/>

## 01/08/2025
Updated bridge casing width in `svwd03` style to match the less prominent one in the `svwd0` style.<br/>
Added missing Italian restaurant icon.<br/>

## 28/07/2025
Added more icons for fast_food cuisines, where icons are already available from the svwd01 style.<br/>
These are `amenity=fast_food` and something like `cuisine=british`.<br/>
Icons are again from [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.<br/>md).<br/>
Added some icons for restaurant cuisines, where icons are already available from the svwd01 style.<br/>
Updated icons for fast_food cuisines, where new icons are available from the svwd01 style.<br/>

## 25/07/2025
Removed minzoom settings from named and unnamed places in the svwd05 debug layer.<br/>
Reduced water_polygons min zoom lever from maxzoom 12 to 10.<br/>

## 29/05/2025
Added some more `information` values for e.g. `stele`.<br/>
Fix the draw order of highways so that all casings are drawn before all fills.<br/>
Fix the draw order of trams so that they are drawn after highways.<br/>
Change the display or trams so that they match svwd01 (and don't look like svwd01 embankments).<br/>
Added low zoom rail from 8.<br/>

## 18/05/2025
Added more icons for fast_food cuisines.<br/>
Non-semicolon values down to a usage of 1250 worldwide (0.<br/>10% of cuisine usage) have been added.<br/>
Added the Mapbox RTL plugin so that RTL names look OK. See https://community.openstreetmap.org/t/vector-tiles-on-osmf-hardware/121501/76 .<br/>

## 17/05/2025
Added specific icons for some fast_food cuisines.<br/>
These are `amenity=fast_food` and something like `cuisine=pizza`.<br/>
Sensible values down to a usage of 26k worldwide have been used.<br/>
Icons are again from [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.<br/>md).<br/>
Fixed bug where `tourism=information` without `information` was missing.<br/>

## 16/05/2025 pm
Change pedestrian area names to come from streets_polygons_labels.<br/>
Also change the svwd05 layer to include more detail about different sorts of streets_polygons_labels.<br/>
See https://github.com/pnorman/spirit/issues/45 .<br/>
Note the spelling ("streets" rather than "street"), which matches the [schema](https://shortbread-tiles.<br/>org/schema/1.<br/>0/).<br/>

## 16/05/2025 am
Added guideposts and route markers, and other common `information` values.<br/>
These are `tourism=information` and something like `information=guidepost` or `information=route_marker`.<br/>
Sensible values down to a usage of 80 worldwide have been used.<br/>
Icons are from [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.<br/>md).<br/>
In [the schema](https://shortbread-tiles.<br/>org/schema/1.<br/>0/) it says "The following attributes are set for selected features only. Their value comes from the equally named OSM keys." and they are written to [OSMF's demo vector tiles](https://community.openstreetmap.org/t/vector-tiles-on-osmf-hardware/121501).<br/> 

## 06/02/2025
Display labels on bridleways etc.<br/>at different spacing depending on zoom.<br/>

## 05/02/2025
Included "busway" in the "bus guideway" nice parapets.<br/>

## 04/02/2025
Show railway and bus guideway bridges in a nicer style (with parallel "parapets").<br/>
Change bus guideway bridge colours to be the same as regular bus guideways.<br/>
Added cycleways.<br/>

## 02/02/2025
Display `wetland=swamp`, `wetland=bog` and `wetland=string_bog` as individual `natural` values.<br/>

## 31/01/2025
Fixed bug where oneway settings (which are boolean) were misread.<br/>
Added a geolocate control and a scale control to the osmf_shortbread index page.<br/>

## 23/01/2025
Attribution is now contained within the spec file.<br/>

## 22/01/2025
Added support for `busway` in `streets` (which seems to be `highway=busway`).<br/> Not in the schema and seems to be unnamed; show what we can.<br/>

## 13/01/2025
Add double-height motorway, primary, secondary, tertiary and unclassified road shields for multiplexed roads.<br/>

## 12/01/2025
Add double-height trunk road shields for multiplexed trunk roads.<br/>

## 08/01/2025
Move the drawing of all road tunnels before all road non-tunnels.<br/> Shields and names are still shown afterwards.<br/>
Adjusted the road widths of the svwd03 style to match svwd01 (which looks nicer, for the most part).<br/>
Renamed some layers so that the names match the source.<br/>
Removed some leftovers from the source style that aren't in shortbread.<br/>
Make boundary lines less wide, especially at low zoom levels.<br/>
Where zoom levels (of cities etc.) are restricted by what's in the tiles, change the minzoom in the style to 0.<br/>

## 05/01/2025
Added display of icon and name to `bus_stop`, and `aerialway_station` in `public_transport` layer.<br/> 
Added display of name of `housenumber`, or `housename` in `addresses` layer.<br/> 
Added display of `boundaries`.<br/>
Added display of `boundary_labels`.<br/>
Add a pattern as well as a fill to `forest`.<br/>
`water_polygons_labels` has `way_area` written for it.<br/> Use this to display the names of larger water areas first, and smaller ones later.<br/>

## 01/01/2025
Added `dam_lines` and `dam_polygons`.<br/>
Added `buildings` as a fill and an outline.<br/>
Added `aerialways` as line patterns.<br/>
Added `bridges`.<br/> 
Moved buildings to under POIs.<br/>
Added `ferries` as a line and a label.<br/>
Added `orchard` as a pattern.<br/>
Added `vineyard` as a pattern.<br/>
Added `allotments` as a pattern.<br/>
Added `othercemetery` as a pattern for `cemetery` and `grave_yard`.<br/>
Added `greenhouse_horticulture` using the same fill as `farmyard`.<br/>
Added `plant_nursery` using the same pattern as `orchard`.<br/>
Added `beach` as a pattern.<br/>
Added `scrub` as a fill and a pattern.<br/>
Added `bare_rock` as a pattern.<br/>
Added `scree` as a pattern.<br/>
Added `shingle` as a pattern.<br/>
Added `marsh`, `swamp`, `bog`, `string_bog` using one `wetland` pattern.<br/>
Added `wet_meadow`, using `meadow` fill and a unique pattern.<br/>
Added `quarry` as a pattern.<br/>
Moved `construction` to `sites` layer.<br/>
Added `danger_area` as a pattern and also display a name for it from `sites`.<br/>
Added layer to show `sports_centre` in `sites`, although that seems to be missing from the OSMF example tiles currently.<br/>
Added display of icon and name to `parking` in sites layer.<br/>
Added display of icon and name to `bicycle_parking` in sites layer.<br/>
Added display of name to `construction` in sites layer.<br/>
Added `pier_lines` and `pier_polygons`.<br/>
Added the `place_labels` layer.<br/> Populated places are OK, but islands seem to be missing from the OSMF example tiles currently.<br/>
Added the `street_labels_points` layer.<br/> Unfortunately, these seem to be missing from the OSMF example tiles currently.<br/>
Added display of icon and name to `aerodrome` in `public_transport` layer.<br/>
Added display of icon and name to `helipad` in `public_transport` layer.<br/>
Added display of icon and name to `station`, `halt` and `tram_stop` in `public_transport` layer.<br/>
Added display of icon and name to `bus_station`, and `ferry_terminal` in `public_transport` layer.<br/> Unfortunately, `ferry_terminal` seems to be missing from the OSMF example tiles currently.<br/>

## 09/12/2024
Added the selection of streets available in Shortbread tiles (no sidewalk or verge information).<br/>
Added linear waterways
Added "street_labels", including highway shields.<br/>
Added "water_lines_labels" and "ocean".<br/>
Added "water_polygons" and "water_polygons_labels".<br/>
Added the first of the POIs and names from the Shortbread spec - amenity=arts_centre, atm and bank.<br/>
Added more amenity POIs and names from the Shortbread spec, including `amenity=dog_park`, which is likely a mistake in the spec for `leisure=dog_park`.<br/>
Added the three emergency POIs that Shortbread supports.<br/>
Added the nine historic POIs that Shortbread supports.<br/>
Added the seven leisure POIs that Shortbread supports.<br/>
Added the seven of the eight man_made POIs (not surveillance) that Shortbread supports.<br/>
Added the one office POI that Shortbread supports.<br/>
Added the 38 shop POIs listed in the Shortbread spec.<br/>
Updated the debug layer svwd05 so that it completely matches the shortbread spec.<br/>

## 05/12/2024
Initial pre-release.<br/>
