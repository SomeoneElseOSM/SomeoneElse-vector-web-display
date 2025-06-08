# Changes made to the [SVWD01 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.
Except as noted, all changes also apply to the [SVWD06 Android native display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd06.md).  

## As yet unreleased
Use a unique icon for ice cream restaurants.
Use a unique icon for Caribbean and Lebanese fast food and restaurants.

## 07/06/2025
Use a unique icon for British fast food and Regional, Mexican, Greek, French and seafood fast food and restaurants.

## 04/06/2025
Use a unique icon for Indian, Chinese, Italian, Fish and Chips, Burger, Coffee Shop, Sandwich, Chicken, Kebab and British resturants.

## 01/06/2025
Use a unique icon for Indian resturants.

## 27/05/2025
Use a characteristic icon for `golf=pin` rather than  generic leisure one.

## 26/05/2025
Show `military=range_marker` as military-coloured marker posts.
Show `ele` values on `man_made=survey_point` and `man_made=cairn`.
Show larger trees (>10m, 20m, 30m crowns) larger on-screen.
Treat various other `information` values as either new (stele, artwork) or existing.

## 23/05/2025
Removed minzoom from linear waterway display in svwd01, svwd04, and svwd06.  
Rivers are extracted at 10, others at 11 and 12.

## 11/05/2025
All road tunnels now have a dashed casing, although how well it shows up depends on background and zoom level.
Low zoom rail ("railway-rail-darkfill-8-11") now shows bridges and tunnels.

## 09/05/2025
Show PROW fingerposts in green.

## 30/04/2025
Handle shooting grounds better - show both the danger hatching and the pitch.

## 24/04/2025
Made the representation of `narrow_gauge` closer to `rail` (and more obvious).
Show tramlines over roads.
Made the representation of `tram` more distinct from embankments.
Display `pedestrian` inner casing and fill before `unclassified`.

## 23/04/2025
Reorganise the display order of non-bridge non-tunnel highways - casings first, then fills, and reverse road importance order.

## 22/04/2025
Display all bridge "walls" and associated prefill before any other inner casing and fill.
Display all bridge inner casings ahead of all bridge fills, reducing the "cut through" effect.

## 21/04/2025
Added a "Bus" button to the `svwd01` default map to link to bustimes.org.

## 06/04/2025
Show "embankment sides" for motorway to driveway in a similar way to "bridge sides" (not using the main casing of the road), in the same way that is already done for single-line representations such as "footway" etc.
Also show primary, secondary, tertiary, unclassified, residential, service and driveway bridges that are also fords as both.
Show living_street and pedestrian bridges in the same way as other bridges - with the bridge sides a little away from the road and the normal road casing.
Treat "road" as "service" in the places where it was missing in the style.
Show embankments along any railways .
Move embankments earlier in the draw order so that other crossing ways are shown in preference.

## 05/04/2025
Moved the display of the name of small sports centres from zoom 14 to 15,
Moved the "bridge sides" for trunk bridges in a bit so as not to impinge on separately mapped parallel footpaths.
Also show "bridge sides" for primary, secondary, tertiary and unclassified / residential.

## 03/04/2025
Made the text size of village and suburb larger, but not quite as big as town.
Preserved railway bridges now have "bridge sides" in the same way as normal rail bridges, rather than relying on a black "dark fill".
Display "bridge sides" for trunk bridges.

## 28/03/2025
Display the `website` along with the `name` on `amenity=charging_station` at high zooms.

## 26/03/2025
Show `highway=toll_gantry` via `barrier=toll_gantry`.

## 23/03/02025
Display `highway=elevator` with names if present.
Added a "whatpub" button to the `svwd01` default map.

## 22/03/2025
Display 4-character National Trail shields as well as shorter ones.

## 13/03/2025
Mud, scree, heath, scrube etc. are now shown at a wider range of zoom levels,

## 09/03/2025
Moved "park area size extract at zoom" logic from "svwd01" style to the "sve01" extract code.
Lots of power infrastrucure is now shown at a range of zoom levels also based on way_area.

## 09/03/2025 AM
Change layer name to reflect how `historic` is now extracted.
Education and hospitals in the `land1` layer are now shown at whatever zoom level it was extracted at (8-14).  Names will be shown if extracted.  Also retail, construction, brownfield, landfill, orchard, vineyard.

## 08/03/2025
Farmland, farmgrass, farmyard, forest, grass, meadow and residential in the `land1` layer (which is most of it) is now shown at whatever zoom level it was extracted at (8-14).  Names will be shown if extracted.

## 07/03/2025
Moved "water area size extract at zoom" logic from "svwd01" style to the "sve01" extract code and adjusted zoom levels to make zoom 8 and 9 tiles smaller.  Also `industrial`, `commercial` and `railway` `landuse`, and various sand.
Small military areas are no longer all extracted at vector zoom 6 with names shown from 11+.  The range is now 7-14 for both.
Woodland in the `land1` layer (which is most of it) is now shown at whatever zoom level it was extracted at (8-14).  Names will be shown if extracted (large, <=14) or based on way_area (small. >15).

## 06/03/2025
Moved "island size extract at zoom" logic from "svwd01" style to the "sve01" extract code for zooms between 6 and 13.  Higher zoom levels are extracted at zoom level 14, and the decision to display is in the style .json.
Also similarly handled the extract for `landuse=recreation_ground`, `landuse=conservation`, `landuse=village_grean` and `leisure=nature_reseerve`.

## 02/03/2025
Display `place=sea` at zoom level 8.
Treat `greenfield` as `farmgrass` rather than `construction`.

## 16/02/2025
Fixed bugs that were suppressing the display of palaeolontological sites.
Changed colour of the name associated with picnic sites from blue to light brown.
Fixed bugs that were suppressing the display of eco health food shops.
Show names of linear piers and groynes.

## 06/02/2025
The `svwd01` (web vector) and `svwd06` (designed for Android Native) map styles shown at https://map.atownsend.org.uk/vector/index.html#5/53.86/-5.57 now use names in Welsh or Scots Gaelic where that language is more commonly used, in the same way that the equivalent raster maps do.

## 05/02/2025
Display `ref` along with `tourism=informationpnfs`.

## 04/02/2025
Show bus guideway bridges in a nicer style (with parallel "parapets").
Change bus guideway bridge colours to be the same as regular bus guideways.

## 02/02/2025
Display `wetland=swamp`, `wetland=bog` and `wetland=string_bog` as individual `natural` values.
Added some more unnamed values (e.g. `swamp`) to the display code on vector.

## 28/01/2025
Change the road name spacing on roads still being built to match normal ones.
Display housenumbers not associated with buildings.
Display address Interpolation lines.

## 25/01/2025
Move `place=farm` and `place=isolated_dwelling` to vector zoom 14 from 13.
Moved `highway=residential` from zoom 10 to 11.
Added an "OSM" button to the top of the screen to show the current map view at osm.org.

## 23/01/2025
`emergency=access_point` and `highway=emergency_access_point` are shown as pink dots with the `ref` below.

## 18/01/2025
Draw embankment casings (via `levee`) after other casings.
Show embankments on roads (via `bridge=levee`) on `motorway`, `unclassified`, `residential`, `living_street`, `service` and `pedestrian`.
Show embankments on a variety of paths, steps and tracks (via `bridge=levee`).
Where LDPs in England and Wales are operated by National Trails and have a `ref` value, display a black and white shield with that `ref` on it.

## 16/01/2025
At zoom 12, make unclassified and service roads slightly more visible.
Made bridleways, restricted byways, and byways open to all traffic more visible at all zoom levels - made the width and dasharray settings closer to raster.
The `bridge` value is now a string not a boolean, containing `yes`, `levee` or blank.
Show embankments on roads (via `bridge=levee`) on `trunk`, `primary`, `secondary`, `tertary`.

## 14/01/2025
Made the shingle and tidal shingle patterns sharper.

## 11/01/2025
Only show car park names from zoom level 15, despite icons being shown earlier.
Add a scale control to the example index html.
Add scale control at bottom-left.
Made the vineyard pattern icon larger, with sharper and smaller bunches of grapes.
Made the beach and tidal beach patterns sharper.
Display `highway=turning_circle` (without name) from zoom 15.  We don't know what sort of road it is attached to, but draw it at about the right size for a residential road.
Made the mud and tidal mud patterns sharper.
Made the rock and tidal rock, and tidal sand, patterns sharper.
Made the scree and tidal scree patterns sharper.

## 07/01/2025
Move the drawing of all road tunnels before all road non-tunnels.  Shields and names are still shown afterwards.
Removed "allow image overlap" from regular parking, which is shown at a fairly low zoom.  Ensure other "overlap" layers have that word in the name

## 05/01/2025
Moved the `landuse=historic` background to before the `ocean` layer because there's at least [one](https://community.openstreetmap.org/t/jurassic-coast-world-heritage-site/123853) example that overlaps the sea, and probably shouldn't.
Move the display of large `historic` features (`battlefield`, `manor`, `castle`, `monastery`) to vector zoom 14.  They'll often get obscrured by other names and icons, so this often won't happen.
Changed `text-max-width` in some potentially longer text to 28.
Display the name for `industrialbuilding` at the centroid only.
Display `industrial` and `industrialbuilding` from 17 rather than 16, based on `way_area`.
Handle route relation membership for other node tags, including artworks and NCN mileposts.
Interpret `parking_space` as another reason to display a lighter colour parking symbol.

## 04/01/2025
For `informationmarker` and `informationroutemarker`, also display `ncnrelationlist`, containing the refs of all cycling relations that node is a member of.
Move the `building-bridge_area-fill` layer above the `land1-water-fill-5` etc. layers, and ensure that the `highway-footway-tunnelcasing-12` etc. layers are above bridges and linear and area water features.
Move the farmland and farmgrass fills (land2 and land1) before industrial (land1 and land2) so that small rural industrial features display OK.
Moved `land1-power-fill-9` before `land2-unnamedlandfill-fill-9` and `land1-landfill-fill-9` and changed the power colour to something less like `building` and closer to `indstrial`, but still different to those two.
Move the display of various tidal features so that they display over `natural=water`.

## 03/01/2025
Moved military hatching display to after grass landuse display.
Only display `aerodrome` icons on the written centroid.
Show an `orchard` fill for plant nurseries.
Show the names of ferry routes.
For `informationmarker` and `informationroutemarker`, display the `nwnrelationlist` containing the names of all walking and horse relations that the node is a member of, in purple if walking only; in red if one or more is horse.

## 01/01/2025
Display `place=island` from zoom 4 upwards, based on the way_area.

## 30/12/2024
Display linear `waterway=lock_gate`, `waterway=sluice_gate`, `waterway=waterfall`, `waterway=weir`, and `waterway=floating_barrier` from `linearbarrier` and point and (multi)polygon ones from `land1`.
Showing car parking from vector zoom 12.
Only show `aerialway=station` from 13.
Display `natural=intermittentwetland` for intermittent wetland areas.

## 29/12/2024
Display the name for various wood features at the centroid only.
Display the name for deserts at the centroid only.
Display the name for `leisure=hunting_stand` at the centroid only (sometimes used on shooting grounds in error).
Display linear slipways from `leisure=slipway` in `transportation`.
Display the name for vineyards, orchards and pedestrian ways at the centroid only.
Display the name for breweries and nonspecific offices at the centroid only.
Handle breakwaters as per groynes.

## 28/12/2024
Display an icon along with the name for `aerodrome` and `large_aerodrome`.
Show private parking (bicycle, motorcycle) with lower opacity.
Show area grass runways as green.
Show names of various area aeroway features from zoom 15 in dark grey.
Display the icons and names of hospitals at the centroid only.
Display the name for more tourism features at the centroid only.
Display the name for `amenity=ferry_terminal` at the centroid only.
Display `tourism=attraction` fill with a relatively low maxzoom.
Display the name at the centroid for various power features.
Display marine water-based power stations (wave power etc.) as just an outline, unlike regular "industrial" power stations.
Handle differently-sized `natural=bay` in the same way as `natural=water`.

## 27/12/2024
Moved `tourism=theme_park` to the list of objects for which object names are written separately for the centroid.
Allow `natural=rock` and `natural=climbing` icons to overlap.
Display access land with a fill from zoom 6 and an outline from zoom 13.
Display the names of marinas and harbours at centroid only.
Display the names of most shops at centroid only.

## 26/12/2024
Show private car parking with lower opacity.

## 23/12/2024
Change the "raster" button on the vector map so that it browses the raster map at the location that the vector map was showing.
Don't show the dashes around nature reserves at low zooms; do show a green fill like national parks.
Change the "eduhospital" outline minzoom to vector zoom 12; it was too heavy at zoom 11.
Change the minzoom of the area fill for golf greens from 9 to 11.
Reduce the opacity of trees slightly.
Allow icon overlap on some parking features.
Allow overlap of icons and text in the debug layer svwd04.
Draw nicer rail bridges for rail, disused, funicular, tram, light_rail, subway.
Made text optional for nonspecific leisure.
Car parks have a point written out at the centroid.  Only dislay the icon there, not in the middle or the polygon.  Similiarly for hotels and motels and camp and caravan sites.

## 20/12/2024
Display `building=bridge_area` (from OSM tag `man_made=bridge`) before roads but `building=roof` later (as before) so that roofs are over roads and bridges are under them.

## 19/12/2024
Allow railway and bus station icons to overlap, to avoid icon being suppressed in some cases.
Show preserved railways at low zoom from 8.
Show elevation on hills.
Change the cemetery and quarry fill patterns to be crisper 32x32 patterns not upscaled 16x16 or 18x18 ones.
Manually make one of the flowers in the meadowwildflower pattern more obvious.
Handle intermittent drains and ditches sent through as `intdrain` and `intditch`.  Bridges and tunnels are handled as per non-intermittent (a bridge is still a bridge, and a tunnel is still a tunnel).  Other ways are drawn with an appropriate width dashed line.

## 18/12/2024
Added icon and name for point fords.
Show elevation on peaks etc.

## 17/12/2024
Allow icon overlap for trees, bus stops and barriers such as gates and styles.
Allow icon overlap for pubs at zooms above 15.
Show some "nice" pubs (with no icon overlap) at vector zoom 14.
Increase the text size for water areas at high zoom.
Reduced the size of the font on long distance paths (the names are sometimes excessively long).
Added geolocate control to default map.

## 16/12/2024
Use larger icons for trees and scale it; also scale the shrub and mini_roundabout icons.
Show residential, commercial and school etc. area names at lower zoom levels based on size.
Show bus stops with a small icon at zoom 15.
Show building outlines from zoom 15.
Reduce the spacing of names on linear barriers at higher zooms.
Show names on linear fences and hedges, and on area hedges.
Show dam areas with a name at the centroid, at a zoom level that depends on size.

## 15/12/2024
Show nature_reserves etc. at lower zooms based on zoom level.
Show motorways, trunks, primaries and secondaries smaller at lower zoom levels.
Show trees (and the labels for trees) over the top of hedges.
Show names for very large nature reserves at zoom level 6.
Change the non-roof building fill-opacity to 0.9, so that (for example) railway lines inside a railway station can be seen.
Added buildings to the svwd04 debug style.
Change path, footway and bridleway etc. tunnels, bridges and steps to be less wide at very high zoom levels.
Make the allotments icon sharper and have more stripes.
Scale `power=tower` and `power=pole` icons along with the `power=line` that they are part of.
Show point barriers on top of hedges etc., and scale point barrier icons sensibly.
Use larger icons for playground furniture and benches and scale them.
Scale the "amenity brown" icons at high zoom levels.

## 14/12/2024
Show low-zoom `railway=rail` and also bus guideways at zooms 8-11.
Show `railway=water_crane` as `historic` with a unique icon.
Show railway turntables as circular polygons  with a name.
Make the blue used for railway station names and other travel features a bit more obvious.

## 13/12/2024
Show more landuse names earlier based on `way_area`, including grass and allotments.
Show `tourism=attraction` at different zoom levels based on `way_area`.
Only show the dashed outline of national parks from zoom 9.
Make railways more obvious at zooms 12, 13 and 14

## 11/12/2024
Added an icon for dog parks (some are unnamed).
Display `highway=motorway_junction` names from the `land1` layer.
Change name of `shop=optician` from shop purple to health pink.
Show names of universities, schools, etc.
Use a longer symbol-spacing at higher zooms for path and LDP labels.
Don't display long fords on `highway` values between `path` and `unpaved` as barriers but do display them with a blue proportionately-sized underlay.
Use a longer symbol-spacing at higher zooms for linear waterway labels.
Write out `landuse=military` names at the centroid only.
Show some landuse names earlier based on `way_area`, including `military` and cemeteries.

## 08/12/2024
Fixed typo that prevented `historic_runestone` from being shown.
Corrected missing `shop_toys` and `historic=massrock` icons.

## 01/12/2024
Fixed typo in `leisure_sports_centre` which was causing the green fill not to appear.
Write out national park names at the centroid only, in green.
Add code to debug style to display land1 and land2 polygon extents as a dashed line.

## 28/11/2024
Tone the `access=destination` overlay down on narrow highways.
Made highway shields and name repeat less frequently at higher zoom.
Change draw order so that primary fill is over trunk casing when they meet.
Changed line-cap on footways etc. to make the dashes closer together at higher zoom.
Added buttons at the top of the svwd01 index page to access other resources.
Moved "raster" button to the right so that the vector "about" is "the obvious one to press" on the left.
Changed maxZoom on default svwd01 and svwd04 vector maps from the default of 22 to 25.

## 24/11/2024
Show locked linear gates in a similar way to unlocked ones.
Show linear lift gates in the same way.
Show pipelines at vector zoom 14.
Improved the svwd04 debug style to show unnamed point and area objects.

## 22/11/2024
Show the names for various larger park and garden features at lower zooms than smaller ones.
Added [man_made=milk_churn_stand](https://taginfo.openstreetmap.org/tags/man_made=milk_churn_stand#overview) as a separate icon.

## 18/11/2024
Change the display of bigprompeak, bigpeak and peak symbols and names to match raster.
Moved the display from `tourism=zoo` from zoom 9 to 14.
Moved the display of retail area names from 9 to 14.
Moved the display of `tourism=attraction` names from 12 to 13.
Show the names for larger `landuse=industrial` areas at lower zooms than smaller ones.
Show the names for various larger beach and sand features at lower zooms than smaller ones.

## 17/11/2024
Reduced the number of road shields shown.
Change "text-offset", and "text-size" stops for "label-path-bottom-12" to make it look smaller when it appears.
Added `aeroway=aerodrome` in "land2" to the list of "larger landuse" that gets separate centroid object displayed with the name.
Show the names for larger `natural=water` areas at lower zooms than smaller ones.

## 14/11/2024
Added display of names for things processed to `leisure=common` to "land1-park-name-15" (accidental oversight).
Moved the display if `natural=intermittentwater` from land2 to land1, to ensure that name appears.  `natural=flood_prone` is still in land2, and no name is displayed for it (often a land1 feature for the same object will exist).
Display names on centroids of larger landuse only, to work around https://github.com/maplibre/maplibre-gl-js/issues/5042 .

## 10/11/2024
Initial release.
