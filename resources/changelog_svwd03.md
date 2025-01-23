# Changes made to the [SVWD03 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd03.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.

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
