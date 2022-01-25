# Fun with LiDAR

Grab a digital elevation model (DEM) from the USGS.
Bare earth so we've got ground elevation.

[QGIS](https://qgis.org) is really great for visualizing data.

[Whitebox Tools](https://www.whiteboxgeo.com/geospatial-software/) open core tools are the engine for the scripts.


## Slope

Use bare earth DEM to generate slope.

```sh
./slope.sh
```

## Lidar DSM

We need to turn a bunch of lidar points into a digital surface model (DSM).
This will include trees, buildings, and more.
In other words, it's *not* bare earth or ground elevation.

Build the DSM

```sh
./lidar-dsm.sh
```

## Daylight!

Use the DSM to dtermine [time in daylight](https://www.whiteboxgeo.com/manual/wbt_book/available_tools/geomorphometric_analysis.html#TimeInDaylight).
That's handy if you're trying to figure out where to put a structure on a piece of land, and you like sunlight.



