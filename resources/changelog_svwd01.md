# Changes made to the [SVWD01 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.

## As yet unreleased
Show nature_reserves etc. at lower zooms based on zoom level.

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
