#! /bin/sh

source="ldsm.tif"
sink="daylight.tif"

whitebox_tools --run=TimeInDaylight -v --wd="./derived" \
	--input="${source}" -o="${sink}" \
	--long=-122.905210 --lat=38.513891 --az_fraction=15 \
	--start_time=sunrise --end_time=sunset --utc_offset="-08:00"

