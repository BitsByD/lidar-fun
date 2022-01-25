#! /bin/sh

source="./source/USGS_one_meter_x50y427_CA_Sonoma_A3_2013.tif"
sink="./derived/slope.tif"

whitebox_tools --run=Slope -v \
	--dem="${source}" -o="${sink}" \
	--units="percent"
