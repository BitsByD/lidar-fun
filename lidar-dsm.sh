#! /bin/sh

whitebox_tools -v --run=LidarDigitalSurfaceModel \
	--wd="./source/3dep" \
	--resolution=2.0 

images="USGS_LPC_CA_Sonoma_A3_2013_SOCO_0045_015_LAS_2017.tif;USGS_LPC_CA_Sonoma_A3_2013_SOCO_0045_016_LAS_2017.tif;USGS_LPC_CA_Sonoma_A3_2013_SOCO_0045_017_LAS_2017.tif;USGS_LPC_CA_Sonoma_A3_2013_SOCO_0045_033_LAS_2017.tif;USGS_LPC_CA_Sonoma_A3_2013_SOCO_0045_034_LAS_2017.tif;USGS_LPC_CA_Sonoma_A3_2013_SOCO_0045_035_LAS_2017.tif"

whitebox_tools --run=Mosaic -v --wd="./source/3dep" \
	--inputs="${images}" --output="./derived/ldsm.tif" --method="cc"

find source/3dep -name '*.tif' | xargs rm

