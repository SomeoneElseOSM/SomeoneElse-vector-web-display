# Changes made to the [SVWD08 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd08.md).  

## As yet unreleased
Change bus stops to make icon and text smaller at low zoom (vector 16) and less large at high (vector 25).  See SVWD03 issue https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/issues/20 .
Made icon and text size smaller for information boards etc.  See SVWD03 issue https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/issues/25 .
Create new icons for `amenity=bank` (which a coloured flash for wheelchair access) and `amenity=atm`.
Banks with ATMs are now shown with a unique icon (which a coloured flash for wheelchair access).
Banks and ATMs now have the text optional and can overlap.
Split `label-street-centre-12-s01` etc. into "large" and "small" for major and minor roads.  Add a stop for text size at 16 that is slightly smaller than previously for large labels and much smaller than previously for small ones.  See the related issue in SVWD03 https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/issues/21 .

## 04/07/2026
Show `man_made=surveillance` as CCTV cameras from vector zoom 19.
Show an icon on `amenity=marketplace` and `amenity=food_court`; don't just show them as retail landuse (there are a number of unnamed ones).

## 28/06/2026
Bus guideways are now shown slightly differently from busways - with extra black dots.

## 27/06/2026
Make police stations visible at vector zoom 15 (1 level earlier).

## 20/06/2026
This style now uses 128x128 sprites, to allow for more detail in some of the icons.
A number of the the patterns used are made more detailed, and some patterns that were "converted from raster in a hurry" look much better as a result.
There's a maplibre feature that means that patterns can't be scaled (you have to scale externally and use multiple patterns) - I've tried to size patterns to work around that as best I can, without multiple-sized patterns.
Many of the 1000-odd POI icons are still converted from much smaller raster originals; they could be improved and that has not been done yet.

## 14/06/2026
Don't show non-bridge oneway arrows over the top of bridges over them.
Show gates at vector zoom 14 smaller.

## 04/06/2026
Make trees less prominent at lower zooms.
Added icon for `shop=ticket`.  
Historic cemeteries are now shown in a similar way to historic quarries.

## 25/05/2026
Show playground balance beams.

## 17/05/2026
Reduce the size of bus stop text at vector zoom 15.
Reduce the size of `natural=water` text at higher vector zooms.
Now generated from svwd00_style.json

## 15/05/2026
Slightly widened bridleway steps wih zoom to match other designations.
Change dash array for "good surface" narrow and wide public footpaths (`footwaynarrow` and `footwaywide` in the schema).
Change dash array for "good surface" narrow and wide public bridleways (`bridlewaynarrow` and `bridlewaywide` in the schema).
Change dash array for "good surface" narrow and wide restricted byways (`rbynarrow` and `rbywide` in the schema).
Change dash array for "good surface" narrow and wide byways open to all traffic (`boatnarrow` and `boatwide` in the schema).
Change dash array for "good surface" narrow and wide unclassified county roads open to all traffic (`ucrnarrow` and `ucrwide` in the schema).

## 10/05/2026
Changed the display of non-designation and designation paths to lengthen the dasharray, change the width to match the weight better to raster, and pick up a few styling loose ends.

## 09/05/2026
Regular railway stations (`railway=station`) are still extracted as such, but those with `station=subway` are now extracted as `railway=tubestation`.  No change to SVWD08 vector rendering.  

## 27/04/2026
A "dark teal" colour is now used for restricted byways rather than the previous "bridleway blue".
Some PRoW representations' dash length was increased to be closer to the "new raster look", although widths have not yet been updated to match.
The dasharrays for the different widths of UCRs are now much longer than previously, to clearly distinguish them from the different widths of BOATs (both have the same colour).
The dasharrays for the different widths of BOATs and Restricted Byways now match that for bridleways (only one dash length, with different colours), to allow the display of "good surface" examples later (as already happens with paths).
Some accidentally unmerged changes from svwd01 now merged.
Also show narrow gauge railways in the minzoom layer (8-11)

## 26/04/2026
Show dismantled, abandoned and disused former railways underneath paths (but after tunnels).
Show narrow gauge railways from vector zoom 12, and more prominently.
Change dash array for "good surface" wide paths.

## 24/04/2026
Change dash array for "good surface" narrow paths.

## 17/04/2026
Show a unique icon for `memorial=cairn`.
Sidings, yards and `railway:traffic_mode=freight` are treated as `railway=railminor` in the schema,  
which is shown less prominently than `railway=rail`.  

## 28/03/2026
Abandoned and dismantled (razed) railways have always been in the schema.  They have now been added to the svwd01 and svwd08 display styles.  They are drawn below extant railways.  All road fills moved to after non-extant railways.

## 12/03/2026
Show a unique icon for ghost bike memorials.

## 15/02/2026
Show `amenity=dressing_room`, `amenity=reception_desk` and `amenity=payment_terminal` with an icon and a name.

## 27/01/2026
Handle `bleed_control_kit` in a similar way to `defibrillator`.
Handle `emergency=throw_bag` in a similar way to `life_ring`, but with a unique value.
Fixed a bug where, since motorway bridge rendering changes, motorways on levees appeared in error here.

## 19/01/2026
Make the text optional on bus stops so that the icons disappear less often.

## 17/01/2025
Changed the `shop=seafood` icon to match the `cuisine=seafood` marker used on fast food and restaurants.  Previously it matched `cuisine=fish_and_chips`.

## 10/01/2026
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
