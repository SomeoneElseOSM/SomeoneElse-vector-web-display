# Display style for use with schema "sve01"

See also the [schema](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/resources/README_sve01.md) readme and the [scripts](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/README.md) readme for this repository,

The cartography here started as a reimplementation of the raster maps at [map.atownsend.org.uk](https://map.atownsend.org.uk/), but has now evolved beyond that, including handling edge cases that the raster maps did not.  The schema described [here](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/resources/README_sve01.md) broadly matches that from [here](https://github.com/SomeoneElseOSM/SomeoneElse-style), and the display code essentially reimplements [this](https://github.com/SomeoneElseOSM/openstreetmap-carto-AJT).  That is in turn based on [openstreetmap-carto](https://github.com/gravitystorm/openstreetmap-carto) from circa 2014 (before cartography changes made that challenging to use in rural areas).

There has been a _considerable_ consolidation of layers from the 76 or so in raster to 8 here.

The lua processing code that produces the data that this style processes is shared between [raster](https://map.atownsend.org.uk/maps/map/about.html) and [vector](https://map.atownsend.org.uk/maps/map/vector.html).  The tags and values in the style .json may not even exist in OSM at all.  See the schema readme for what actually gets extracted and how OSM tags get turned into the values in the .json.

Most data extracted by that schema is displayed by this style at some zoom level; an exception is `boundary=administrative` polygons and centroids.

The [icons](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/tree/main/resources/svwd01_icons) used to create the sprites used by this style are copied from [source icons](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/tree/main/resources/svwd01_source_icons); they are shared with the [svwd03](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd03.md) shortbread style as well.  Some icons (e.g. the double-height road shields) are only used in the svwd03 style, not here.

## Credits

The development of this map style here started out based on the basic [Tilemaker](https://github.com/systemed/tilemaker/tree/master/server/static) example, and were developed using the [MapLibre](https://maplibre.org/maplibre-style-spec/) documentation.  

The fonts used are from [Klokantech](https://github.com/klokantech/klokantech-gl-fonts), in turn based on Google's [noto](https://fonts.google.com/noto).

The cartography is based on [this](https://map.atownsend.org.uk/maps/map/map.html) which in turn was developed from that found in [OSM Carto](https://wiki.openstreetmap.org/wiki/OpenStreetMap_Carto#Forks_and_independent_deployments) circa 2014, based in turn on the "[Mapnik style](https://github.com/openstreetmap/mapnik-stylesheets)" from considerably earlier.
