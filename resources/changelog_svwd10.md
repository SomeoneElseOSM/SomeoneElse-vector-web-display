# Changes made to the [SVWD10 web display style](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/resources/README_svwd10.md).  
See also the [changelog](https://github.com/SomeoneElseOSM/SomeoneElse-vector-web-display/blob/main/changelog.md) for the scripts here.

## As yet unreleased
Regular railway stations (`railway=station`) are still extracted as such, but those with `station=subway` are now extracted as `railway=tubestation`.  The SVWD10 vector rendering shows regular stations from vector 7 and tube stations from vector 9.

## 29/04/2026
Also show subway tunnels from zoom 9 not 12.

## 28/04/2026
Show trams and subways from zoom 9 not 12.

## 26/04/2026
Don't show pipeline (and weir) labels, since pipelines aren't shown.
Show railway stations from zoom 7, after places, so that they aren't obscured by place names.

## 18/04/2026
Initial release.
