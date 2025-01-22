# Display style for use with shortbread schema

See the [documentation](https://shortbread-tiles.org/schema/1.0/)

This map style depends on some icons created for the [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md) style.  Most shortbread layers are handled - the only exceptions are basically edge cases in OSM data.  A companion [debug style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd05.md) exists.

Some data that is in the tiles but not in the schema (like busways) is also shown.

To install, you'll want to do something like:

    sudo /home/youruserid/src/SomeoneElse-vector-web-display/svwd_into_apache.sh NONE svwd03 http://youripaddress /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_spec.json /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_metadata.json /home/youruserid/src/tilemaker/server/static/fonts /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_style.json /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_index.html svwd03sprite /home/youruserid/src/SomeoneElse-vector-web-display/resources

## Credits

Cartography is based on [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/resources/README_sve01.md), in turn based on [this](https://map.atownsend.org.uk/maps/map/map.html) which in turn was developed from that found in [OSM Carto](https://wiki.openstreetmap.org/wiki/OpenStreetMap_Carto#Forks_and_independent_deployments) circa 2014, based in turn on the "[Mapnik style](https://github.com/openstreetmap/mapnik-stylesheets)" from considerably earlier.

The fonts used are from [Klokantech](https://github.com/klokantech/klokantech-gl-fonts), in turn based on Google's [noto](https://fonts.google.com/noto).
