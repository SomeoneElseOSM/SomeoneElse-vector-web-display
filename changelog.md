# Changes made to the [SVWD scripts](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/README.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/changelog_svwd01.md) for the example display style here.

## 20/06/2026
svwd_create_sprite.sh now processes 128x128 images in the sprite, not 64x64

## 17/05/2026
Added a lua style processor "svwd_process_style.lua" that can process MapLibre style files to create others, based on the content of each layer.
Updated the readme.

## 18/04/2026
Added a map style "svwd10" - the same as "svwd01", but showing only railways and places

## 23/08/2025
Added a map style "svwd09" - the same as "svwd03", but displaying on a globe.

## 28/07/2025
Made the default number of icons in each row of the sprite fewer, so that it is within the defaults for `convert`.

## 10/11/2024
Initial release.
