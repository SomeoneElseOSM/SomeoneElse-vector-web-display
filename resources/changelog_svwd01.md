# Changes made to the [SVWD01 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.

## As yet unreleased
Reduced the number of road shields shown.
Change "text-offset", and "text-size" stops for "label-path-bottom-12" to make it look smaller when it appears.

## 14/11/2024
Added display of names for things processed to "leisure=common" to "land1-park-name-15" (accidental oversight).
Moved the display if "natural=intermittentwater" from land2 to land1, to ensure that name appears.  "natural=flood_prone" is still in land2, and no name is displayed for it (often a land1 feature for the same object will exist).
Display names on centroids of larger landuse only, to work around https://github.com/maplibre/maplibre-gl-js/issues/5042 .

## 10/11/2024
Initial release.
