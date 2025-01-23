# Android native map display style for use with schema "sve01" 

See also the [schema](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/resources/README_sve01.md) readme and the [scripts](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/README.md) readme for this repository,

This is based on the [equivalent web map style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md).  The only changes here are those needed because some things are [not supported](https://github.com/maplibre/maplibre-native/issues/250) on Maplibre Native Android.

It uses the same vector tiles as the web map style, and shares fonts, sprites, etc.

## Credits

The development of this map style here started out based on the basic [Tilemaker](https://github.com/systemed/tilemaker/tree/master/server/static) example, and were developed using the [MapLibre](https://maplibre.org/maplibre-style-spec/) documentation.  

The fonts used are from [Klokantech](https://github.com/klokantech/klokantech-gl-fonts), in turn based on Google's [noto](https://fonts.google.com/noto).

The cartography is based on [this](https://map.atownsend.org.uk/maps/map/map.html) which in turn was developed from that found in [OSM Carto](https://wiki.openstreetmap.org/wiki/OpenStreetMap_Carto#Forks_and_independent_deployments) circa 2014, based in turn on the "[Mapnik style](https://github.com/openstreetmap/mapnik-stylesheets)" from considerably earlier.
