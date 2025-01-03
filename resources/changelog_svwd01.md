# Changes made to the [SVWD01 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.

## As yet unreleased
For `informationmarker` and `informationroutemarker`, also display `ncnrelationlist`, containing the refs of all cycling relations that node is a member of.

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
