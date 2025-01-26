# Display style for use with shortbread schema

See the schema [documentation](https://shortbread-tiles.org/schema/1.0/).

This map style depends on some icons created for the [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md) style.  Most shortbread layers are handled - the only exceptions are basically edge cases in OSM data.  A companion [debug style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd05.md) exists.

Some data that is in the tiles but not in the schema (like busways) is also shown.

[Scripts](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/README.md) to deploy this style on a Linux Apache server exist.  To install there, you'll want to clone this repository locally and do something like:

    sudo /home/youruserid/src/SomeoneElse-vector-web-display/svwd_into_apache.sh NONE svwd03 http://youripaddress /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_spec.json /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_metadata.json /home/youruserid/src/tilemaker/server/static/fonts /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_style.json /home/youruserid/src/SomeoneElse-vector-web-display/resources/svwd03_index.html svwd03sprite /home/youruserid/src/SomeoneElse-vector-web-display/resources

(see the linked [Readme](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/README.md) for more deployment configuration options)

To deploy manually, you'll need to copy versions of these to your website:

* [index_svwd03.html](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_index.html).  This needs to link to a [metadata](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_metadata.json) file, a [style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_style.json).  You'll want to set the "title", and can modify zoom levels and various debug settings (on by default; you'll likely want to turn them off).  [Deployed example](https://map.atownsend.org.uk/vector/index_svwd03.html).
* Various sprite [.json](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03sprite.json) and [.png](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03sprite.png) files.  At least basic and "@2x" versions are needed.    [Deployed example](https://map.atownsend.org.uk/vector/svwd03sprite.json) (and other sprite .json and .png files there).
* A style file based on [style_svwd03.json](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_style.json).  That needs to link to a spec file like [spec_svwd03.json](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_spec.json), and the sprite and font locations.  You'll also want to set the "SPEC_NAME" in a couple of places in there.  [Deployed example](https://map.atownsend.org.uk/vector/style_svwd03.json).
* A metadata file based on [metadata_svwd03.json](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_metadata.json).  [Deployed example](https://map.atownsend.org.uk/vector/metadata_svwd03.json).
* A spec file based on [spec_svwd03.json](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd03_spec.json).  You'll want to modify the "name" and "description" in there, and may also want to change "bounds", "center" etc.  [Deployed example](https://map.atownsend.org.uk/vector/spec_svwd03.json).

## Credits

The [Shortbread](https://shortbread-tiles.org/) vector tile schema.

The [OSMF minutely updated vector tiles demo](https://community.openstreetmap.org/t/minutely-updated-vector-tiles-demo/110121), which the "spec" file here uses as a source.

Cartography is based on [svwd01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/resources/README_sve01.md), in turn based on [this](https://map.atownsend.org.uk/maps/map/map.html) which in turn was developed from that found in [OSM Carto](https://wiki.openstreetmap.org/wiki/OpenStreetMap_Carto#Forks_and_independent_deployments) circa 2014, based in turn on the "[Mapnik style](https://github.com/openstreetmap/mapnik-stylesheets)" from considerably earlier.

The fonts used are from [Klokantech](https://github.com/klokantech/klokantech-gl-fonts), in turn based on Google's [noto](https://fonts.google.com/noto).
