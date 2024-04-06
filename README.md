# SomeoneElse-vector-web-display

This is intended to become a set of files needed so that a Tilemaker-generated .mbtiles file created via https://github.com/SomeoneElseOSM/SomeoneElse-vector-extract can be displayed.  Tilemaker's example files for OMT can be found at https://github.com/systemed/tilemaker/tree/master/server/static (but note that the .mbtiles processed here will likely contain different data to an OMT one).

Files are served using Apache, together with https://github.com/systemed/mod_mbtiles .

## Scripts in this repository

* svwd_into_apache.sh
* svwd_delete.sh

These two install a vector tile configuration below Apache, and remove it.  A "vector tile configuration" is a set of .mbtiles (which contains certain data extracted and converted from OSM) and the "Index", "style", "metadata" and "spec" files that control how those features are displayed.  "svwd_into_apache.sh" uses templates for those files from e.g. "svwd01_style.json" here to create a style.json for a particular display style using a particular set of .mbtiles.

* svwd_call_icon_convert.sh
* svwd_convert_icon_from_raster.sh
* svwd_create_sprite.sh

These scripts are used to create the sprite files referred to by the "sprite" setting in "style.json".  "svwd_convert_icon_from_raster.sh" converts one .png file from an OSM Carto or derivative "symbols" directory into a known format of a certain size.  "svwd_call_icon_convert.sh" calls that several times creating files with known names (basically "tag_value.png") and "svwd_create_sprite.sh" creates a sprite .json and .png (one row, many icons wide) from that both as "name.png" (which seems to be used on Windows) and "name@2x.png" (which seems to be used on Linux).

## Creating sprite files - an example

First, run "svwd_call_icon_convert.sh".  That calls "svwd_convert_icon_from_raster.sh" several times to convert some specific raster tile icons from (in the example script) "~/src/openstreetmap-carto-AJT/symbols/" into proto-vector-tile ones in "~/src/SomeoneElse-vector-web-display/icons/".  Often the name is changed, because the vector icon name is required to be "tag_value.png".  By default, "svwd_call_icon_convert.sh" doesn't tell "svwd_convert_icon_from_raster.sh" to overwrite existing files.

That creates a bunch of files in "~/src/SomeoneElse-vector-web-display/icons" such as "shop_gift.png".

Next, run: "./svwd_create_sprite.sh ./icons ./svwd01".  That will create "svwd01@2x.png" and "svwd01@2x.json", and validate the .json.  It should reply with:

    Valid JSON (./svwd01@2x.json)

## Deleting and reinstalling the apache config - an example

The apache configuration consists of

1) mbtiles such as tilemaker_sve01.mbtiles in e.g. /var/www/html/vector/sve01

2) Index, style, metadata and spec files in /var/www/html/vector

    index_svwd01.html
    style_svwd01.json
    metadata_svwd01.json
    spec_svwd01.json

3) an entry in /etc/apache2/sites-available/000-default.conf such as

    MbtilesAdd sve01 /var/www/html/vector/sve01/tilemaker_sve01.mbtiles

A set of vector tiles and a style to view them is copied below apache with "svwd_into_apache.sh" and can be deleted with "svwd_delete.sh".  Both take lots of parameters - see the comments at the top of each script for details.

(more detail to follow)

## Caveat

Everything here yet fully functional - it is still very much a work in progress.
