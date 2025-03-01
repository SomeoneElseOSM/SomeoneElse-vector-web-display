# SomeoneElse-vector-web-display

This repository contains:

* scripts for managing web map styles

and also these in [resources](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/tree/main/resources):

* [SVWD01](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md), an example web map style.
* [SVWD06](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd06.md), based on an example Android Native style.
* [SVWD03](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd03.md), a [Shortbread](https://shortbread-tiles.org/schema/1.0/) map style designed to use [OSMF's minutely updated vector tiles demo](https://community.openstreetmap.org/t/minutely-updated-vector-tiles-demo/110121)
* [SVWD07](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd07.md), a work-in-progress minimal Shortbread example.
* [SVWD04](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd05.md), a debug style for SVWD01.
* [SVWD05](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd05.md), a debug style for SVWD03.
* [SVWD02](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd02_style.json), a copy of the [Versatiles Colorful display style](https://github.com/versatiles-org/versatiles-style/blob/main/docs/colorful.png), which works with the [shortbread schema](https://shortbread-tiles.org/schema/).

The shortbread styles are dependent on what's available in the Shortbread schema.  The "svwd02" style is from [Versatiles](https://versatiles.org/overview.html); see the licence at the top of [that file](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/svwd02_style.json).

The "sve01" schema and "svwd01" style have broadly the same functionality as the raster maps [here](https://map.atownsend.org.uk/maps/map/map.html).  The "schema" for that is controlled by the lua processing [here](https://github.com/SomeoneElseOSM/SomeoneElse-style/blob/master/README.md).

The debug styles show all features in each style's layers, with each layer (or object type in a layer) in a different colour.

A [companion repository](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/README.md) contains scripts to manage the extraction of OSM data and an [example schema](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/resources/README_sve01.md).  The example web map style here works with a `.mbtiles` file in that schema.

## Why do the "managing scripts" even need to exist?

Unlike with raster tile pipelines using `osm2pgsql`, the equivalent supporting software for Maplibre GL seems very early in its evolution.  Some of the necessary functions aren't supported "out of the box", and it sometimes it seems that the necessary sticky tape and glue needs to be assembled from a bunch of other Github repositories in various stages of abandoned-ness.

The scripts here allow you to:

* Manage icons and sprites, creating the sprite files needed at various resolutions.
* Install a web map style into Apache, based on passed parameters for things like `name`

This makes it relatively easy to manage multiple installed styles (and multiple versions of the same style), just like the equivalent [schema scripts](https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract/blob/main/README.md) allow schemas and schema versions to be managed.

These scripts assume that a Tilemaker-created .mbtiles file is installed under apache and is being served with [mod_mbtiles](https://github.com/systemed/mod_mbtiles).  To see simple non-parameterised versions of the files that make up a web map style, have a look at the [Tilemaker examples](https://github.com/systemed/tilemaker/tree/master/server/static). 

## Scripts in this repository

The main management scripts are:

* svwd_into_apache.sh
* svwd_delete.sh

These two install a vector tile configuration below Apache, and remove it.  A "vector tile configuration" is a set of .mbtiles (which contains certain data extracted and converted from OSM) and the "Index", "style", "metadata" and "spec" files that control how those features are displayed.  `svwd_into_apache.sh` uses templates for those files from e.g. `svwd01_style.json` in "resources" here to create a style.json for a particular display style using a particular set of .mbtiles.

In addition there are these:

* svwd_convert_icon_from_raster.sh
* svwd_create_sprite.sh

and for each map style there may also be:

* svwd_call_icon_convert.sh

These scripts are used to create the sprite files referred to by the "sprite" setting in `style.json`.  `svwd_convert_icon_from_raster.sh` converts one .png file from an OSM Carto or derivative "symbols" directory into a known format of a certain size.  `svwd_call_icon_convert.sh` calls that several times creating files with known names (basically `tag_value.png`) and `svwd_create_sprite.sh` creates a sprite .json and .png (one row, many icons wide) from that both as `name.png` (which seems to be used on Windows) and `name@2x.png` (which seems to be used on Linux).

A valid set of sprite files are needed.  If you're using an external style it's likely that it'll come with these already and you won't need to create them yourself, however [the example style here](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd01.md) was created from scratch based on the cartography of an existing raster style so each icon (of the currently 910!) needed to be either converted from a raster source or created from scratch.

## Creating sprite files - an example

A caveat: This uses "convert" and "montage" from Imagemagick, and works without problems on Ubuntu 22.04.  There are problems with the equivalent software available by default on Debian 12, so that isn't fully supported yet.

In the SVWD01 style the `svwd01_call_icon_convert.sh` script just calls calls `svwd_convert_icon_from_raster.sh` numerous times to convert source icons from mostly (in the example script) `~/src/openstreetmap-carto-AJT/symbols/` into proto-vector-tile ones in `~/src/SomeoneElse-vector-web-display/icons/`.  Often the name is changed, because making the vector icon name `tag_value.png` makes further processing much easier.  Although the convert script supports it, by default, `svwd01_call_icon_convert.sh` doesn't tell `svwd_convert_icon_from_raster.sh` to overwrite existing files.

That creates a bunch of files in `~/src/SomeoneElse-vector-web-display/icons` such as `shop_gift.png`.

Next, run: `./svwd_create_sprite.sh ./icons ./svwd01`.  That will create `svwd01@2x.png` and `svwd01@2x.json`, and validate the .json.  It should reply with:

    Valid JSON (./svwd01@2x.json)

All the resulting files for the SVWD01 example (vector source icons, converted proto-vector-tile ones and the sprites and .json files) are checked into the repository.

## Deleting and reinstalling the apache config - an example

The apache configuration consists of

1) A .mbtiles files such as tilemaker_sve01.mbtiles in e.g. /var/www/html/vector/sve01

2) Index, style, metadata and spec files in /var/www/html/vector

    index_svwd01.html
    style_svwd01.json
    metadata_svwd01.json
    spec_svwd01.json

3) an entry in /etc/apache2/sites-available/000-default.conf such as

    MbtilesAdd sve01 /var/www/html/vector/sve01/tilemaker_sve01.mbtiles

A set of vector tiles and a style to view them is copied below apache with `svwd_into_apache.sh` and can be deleted with `svwd_delete.sh`.  Both take lots of parameters - see the comments at the top of each script for details.

