# Changes made to the [SVWD08 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd08.md).  

## As yet unreleased
Make fences narrower at zooms 13 and 14

## 09/01/2026
Show piers that are mapped as nodes with an icon and a name.
Handle sidewalks, verges and fords on living street bridges.
Made some icons such as `dog_park` larger at higher zooms.

## 30/12/2025
Show historic enclosures and hut circles with an icon and a name.
Changed icon on where `tourism=chalet` is used for multiple holiday lodges to the "multiple builings by a tree" one.

## 27/12/2025
Show name for gas and electric streetlamps, if set.

## 21/12/2025
Added icon for `amenity=smoking_area`.

## 29/11/2025
Show `amenity=weighbridge`.
Added icon for `leisure=marina`.
Show `amenity=boat_storage` with an icon and a name.
Show `waterway=turning_point` (canal winding holes).
Show `waterway=junction`.

## 23/11/2025
Show names of theme parks at varying zoom levels depending on size.
Show names of camp and caravan sites at varying zoom levels depending on size.
Reduce outline on area `highway=service` etc. ways.
Also show `highway=track` and `surface=gravel` `highway=service` areas.
Added `barrier=height_restrictor`.
Added `amenity=loading_dock`.

## 31/10/2025
Changed the display of `tourism=attraction` to depend on `way_area`.
Changed the display of `military=barracks` to depend on `way_area`.
Show an icon for outdoor seating areas.
Show manholes as small black marker at high zoom levels.
Show non-historic dovecotes.

## 18/10/2025
Now that all named things have something in name:cy, name:en, name:ga and name:gd, support styles that display that as the default name.

## 09/10/2025
Show sanitary dump stations with a unique icon.
Show `man_made=charging_point` with a unique icon, analagous to `fuel_pump`.
Show a different icon for "penguin" artwork at high zooms.

## 02/10/2025
Don't show parking spaces at low zooms.
Show `man_made=fuel_pump` with a unique icon.

## 20/09/2025
Added support for various wind monitoring stations, and also water quality.

## 13/09/2025
Show beehives from vector 18.

## 30/08/2025
Simplify style to show generic power generator names from vector 16, water power generator names from vector 14, and wind power generator names and icons from 14.
Extract fill name name for various leisure (such as golf courses) at differet zooms, allowing the styling code to be simpler.

## 20/08/2025
Show clocks that are neither pedestal clocks nor clock towers.
Handle "eco" versions of doityourself, gift, beauty, pet, and discount shops.

## 06/08/2025
Changed draw order of schools vs bus platforms so that area bus platforms appear there.
Changed Camra links from Whatpub to new Camra site.

## 28/07/2025
Regenerated sprites with fewer in each row (to avoid issues with generation on vanilla ImageMagick installs).  No visual change

## 24/07/2025
Show hedges in a slightly darker colour than wood.
Change MapLibre library to 5.6.1 (likely no visible effect)

## 21/07/2025
Change the text for valleys to italics, to match islands, peninsulas, etc.
Don't show `natural=water` areas for which `tunnel` is set.
Display pedestrian areas and transport platforms above linear waterway tunnels.
Made the dashed casing on waterway stream and ditch tunnels more visible.
Show locked linear gates slightly darker than non-locked linear gates.

## 13/07/2025
Always show `place=sea` if present in the tile - assume that it will have been written to only those tiles that it is relevant for (small seas, large zooms; large seas, small zooms).

## 09/07/2025
Show  way and relation `place=locality` at the same zoom levels as `place=island`.  This includes things like large peninsulas.
Node `place=locality` (and very small areas) are shown at zoom 18 and above.

## 06/07/2025
Replace `cafe` icon with a line-drawn one that looks much nicer.
Use a distinctive icon for `cafe=bubble_tea` and use restaurant icons for e.g. `fish_and_chips`.
Include galleries with artworks in former telephone box uses.
Show noncommercial art galleries with a unique museum-like icon.

## 03/07/2025
Show `wheelchair` flash on `amenity=fast_food` with `cuisine=kebab`, `cuisine=mexican` and synonyms.
Show `wheelchair` flash on `amenity=restaurant` with `cuisine=british`, `cuisine=regional`, `cuisine=mexican`, `cuisine=seafood` and synonyms.

## 23/06/2025
Allow post boxes and similar brown things shown in the same layer to overlap other icons.  This was already the case for some other small brown things.
Show `wheelchair` flash on `amenity=restaurant` with no `cuisine`, `cuisine=indian`, `cuisine=chinese`, `cuisine=italian`, `cuisine=fish_and_chips`, `cuisine=burger`, `cuisine=coffee_shop`, `cuisine=sandwich`, `cuisine=chicken`, `cuisine=kebab` and `cuisine=french` and synonyms.

## 19/06/2025
Apply a number of style changes from svwd01 to svwd08, correcting some draw order issues and adding some new icon combinations.

## 17/04/2025
Fixed a bug where trunk "bridge sides" weren't being shown if unwalkable - they should appear as it is still a bridge.

## 10/04/2025
First release of this style that "doesn't show roads you can't walk on".
