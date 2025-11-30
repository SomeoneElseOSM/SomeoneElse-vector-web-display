# Changes made to the [SVWD03 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd03.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.

## As yet unreleased
Copy bridge logic for `service`, `living_street` and `unclassified` from svwd01 to svwd03.

## 30/11/2025
Merge `highway=living_street` processing from [parent style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).  This added a casing (the previous version did not work if _not_ over residential) and also improved the bridge display for living streets.

## 10/11/2025
Removed theme park outlines from the style as they're not in the tiles.  Show theme park names whenever they're in the vector (vector 14), and display them further down the style so that it appears in preference to most other things that only appear at vector 14.

## 01/08/2025
Updated bridge casing width in `svwd03` style to match the less prominent one in the `svwd0` style.
Added missing Italian restaurant icon.

## 28/07/2025
Added more icons for fast_food cuisines, where icons are already available from the svwd01 style.
These are `amenity=fast_food` and something like `cuisine=british`.
Icons are again from [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).
Added some icons for restaurant cuisines, where icons are already available from the svwd01 style.
Updated icons for fast_food cuisines, where new icons are available from the svwd01 style.

## 25/07/2025
Removed minzoom settings from named and unnamed places in the svwd05 debug layer.
Reduced water_polygons min zoom lever from maxzoom 12 to 10.

## 29/05/2025
Added some more `information` values for e.g. `stele`.
Fix the draw order of highways so that all casings are drawn before all fills.
Fix the draw order of trams so that they are drawn after highways.
Change the display or trams so that they match svwd01 (and don't look like svwd01 embankments).
Added low zoom rail from 8.

## 18/05/2025
Added more icons for fast_food cuisines.
Non-semicolon values down to a usage of 1250 worldwide (0.10% of cuisine usage) have been added.
Added the Mapbox RTL plugin so that RTL names look OK.  See https://community.openstreetmap.org/t/vector-tiles-on-osmf-hardware/121501/76 .

## 17/05/2025
Added specific icons for some fast_food cuisines.
These are `amenity=fast_food` and something like `cuisine=pizza`.
Sensible values down to a usage of 26k worldwide have been used.
Icons are again from [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).
Fixed bug where `tourism=information` without `information` was missing.

## 16/05/2025 pm
Change pedestrian area names to come from streets_polygons_labels.  
Also change the svwd05 layer to include more detail about different sorts of streets_polygons_labels.
See https://github.com/pnorman/spirit/issues/45 .
Note the spelling ("streets" rather than "street"), which matches the [schema](https://shortbread-tiles.org/schema/1.0/).

## 16/05/2025 am
Added guideposts and route markers, and other common `information` values.
These are `tourism=information` and something like `information=guidepost` or `information=route_marker`.
Sensible values down to a usage of 80 worldwide have been used.
Icons are from [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).
In [the schema](https://shortbread-tiles.org/schema/1.0/) it says "The following attributes are set for selected features only. Their value comes from the equally named OSM keys." and they are written to [OSMF's demo vector tiles](https://community.openstreetmap.org/t/vector-tiles-on-osmf-hardware/121501).  

## 06/02/2025
Display labels on bridleways etc. at different spacing depending on zoom.

## 05/02/2025
Included "busway" in the "bus guideway" nice parapets.

## 04/02/2025
Show railway and bus guideway bridges in a nicer style (with parallel "parapets").
Change bus guideway bridge colours to be the same as regular bus guideways.
Added cycleways.

## 02/02/2025
Display `wetland=swamp`, `wetland=bog` and `wetland=string_bog` as individual `natural` values.

## 31/01/2025
Fixed bug where oneway settings (which are boolean) were misread.
Added a geolocate control and a scale control to the osmf_shortbread index page.

## 23/01/2025
Attribution is now contained within the spec file.

## 22/01/2025
Added support for `busway` in `streets` (which seems to be `highway=busway`).  Not in the schema and seems to be unnamed; show what we can.

## 13/01/2025
Add double-height motorway, primary, secondary, tertiary and unclassified road shields for multiplexed roads.

## 12/01/2025
Add double-height trunk road shields for multiplexed trunk roads.

## 08/01/2025
Move the drawing of all road tunnels before all road non-tunnels.  Shields and names are still shown afterwards.
Adjusted the road widths of the svwd03 style to match svwd01 (which looks nicer, for the most part).
Renamed some layers so that the names match the source.
Removed some leftovers from the source style that aren't in shortbread.
Make boundary lines less wide, especially at low zoom levels.
Where zoom levels (of cities etc.) are restricted by what's in the tiles, change the minzoom in the style to 0.

## 05/01/2025
Added display of icon and name to `bus_stop`, and `aerialway_station` in `public_transport` layer.  
Added display of name of `housenumber`, or `housename` in `addresses` layer.  
Added display of `boundaries`.
Added display of `boundary_labels`.
Add a pattern as well as a fill to `forest`.
`water_polygons_labels` has `way_area` written for it.  Use this to display the names of larger water areas first, and smaller ones later.

## 01/01/2025
Added `dam_lines` and `dam_polygons`.
Added `buildings` as a fill and an outline.
Added `aerialways` as line patterns.
Added `bridges`.  
Moved buildings to under POIs.
Added `ferries` as a line and a label.
Added `orchard` as a pattern.
Added `vineyard` as a pattern.
Added `allotments` as a pattern.
Added `othercemetery` as a pattern for `cemetery` and `grave_yard`.
Added `greenhouse_horticulture` using the same fill as `farmyard`.
Added `plant_nursery` using the same pattern as `orchard`.
Added `beach` as a pattern.
Added `scrub` as a fill and a pattern.
Added `bare_rock` as a pattern.
Added `scree` as a pattern.
Added `shingle` as a pattern.
Added `marsh`, `swamp`, `bog`, `string_bog` using one `wetland` pattern.
Added `wet_meadow`, using `meadow` fill and a unique pattern.
Added `quarry` as a pattern.
Moved `construction` to `sites` layer.
Added `danger_area` as a pattern and also display a name for it from `sites`.
Added layer to show `sports_centre` in `sites`, although that seems to be missing from the OSMF example tiles currently.
Added display of icon and name to `parking` in sites layer.
Added display of icon and name to `bicycle_parking` in sites layer.
Added display of name to `construction` in sites layer.
Added `pier_lines` and `pier_polygons`.
Added the `place_labels` layer.  Populated places are OK, but islands seem to be missing from the OSMF example tiles currently.
Added the `street_labels_points` layer.  Unfortunately, these seem to be missing from the OSMF example tiles currently.
Added display of icon and name to `aerodrome` in `public_transport` layer.
Added display of icon and name to `helipad` in `public_transport` layer.
Added display of icon and name to `station`, `halt` and `tram_stop` in `public_transport` layer.
Added display of icon and name to `bus_station`, and `ferry_terminal` in `public_transport` layer.  Unfortunately, `ferry_terminal` seems to be missing from the OSMF example tiles currently.

## 09/12/2024
Added the selection of streets available in Shortbread tiles (no sidewalk or verge information).
Added linear waterways
Added "street_labels", including highway shields.
Added "water_lines_labels" and "ocean".
Added "water_polygons" and "water_polygons_labels".
Added the first of the POIs and names from the Shortbread spec - amenity=arts_centre, atm and bank.
Added more amenity POIs and names from the Shortbread spec, including `amenity=dog_park`, which is likely a mistake in the spec for `leisure=dog_park`.
Added the three emergency POIs that Shortbread supports.
Added the nine historic POIs that Shortbread supports.
Added the seven leisure POIs that Shortbread supports.
Added the seven of the eight man_made POIs (not surveillance) that Shortbread supports.
Added the one office POI that Shortbread supports.
Added the 38 shop POIs listed in the Shortbread spec.
Updated the debug layer svwd05 so that it completely matches the shortbread spec.

## 05/12/2024
Initial pre-release.
