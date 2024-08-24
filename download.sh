#!/usr/bin/env bash

COOKIEFILE=.urs_cookies
touch $COOKIEFILE

CURL="curl -LOn -b $COOKIEFILE -c $COOKIEFILE"

if [[ ! -f data/EMIT_L2A_RFL_001_20231007T152816_2328010_007.nc ]]; then
	 $CURL https://data.lpdaac.earthdatacloud.nasa.gov/lp-prod-protected/EMITL2ARFL.001/EMIT_L2A_RFL_001_20231007T152816_2328010_007/EMIT_L2A_RFL_001_20231007T152816_2328010_007.nc
fi
