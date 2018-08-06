md5sum: 0dd15ead2501e003d8f745735e71a808  /glade/work/jamesmcc/domains/public/croton_NY_v5.0.1/NWM/DOMAIN/nudgingParams.nc
ncdump -h: netcdf nudgingParams {
dimensions:
	stationIdInd = UNLIMITED ; // (4 currently)
	monthInd = 12 ;
	threshCatInd = 2 ;
	threshInd = 1 ;
	stationIdStrLen = 15 ;
variables:
	float G(stationIdInd) ;
		G:units = "-" ;
		G:long_name = "Amplitude of nudging" ;
	float R(stationIdInd) ;
		R:units = "meters" ;
		R:long_name = "Radius of influence in meters" ;
	float expCoeff(stationIdInd, monthInd, threshCatInd) ;
		expCoeff:units = "minutes" ;
		expCoeff:long_name = "Coefficient b in denominator e^(-dt/b)" ;
	float qThresh(stationIdInd, monthInd, threshInd) ;
		qThresh:units = "m^3/s" ;
		qThresh:long_name = "Discharge threshold category" ;
	char stationId(stationIdInd, stationIdStrLen) ;
		stationId:units = "-" ;
		stationId:long_name = "USGS station identifer" ;
	float tau(stationIdInd) ;
		tau:units = "minutes" ;
		tau:long_name = "Time tapering parameter half window size in minutes" ;

// global attributes:
		:history = "Mon Feb  5 13:36:43 2018: ncks -O -d stationIdInd,1,4 /glade/p/nwc/arezoo/test_case/0137462010/nudgingParams.nc /glade/p/nwc/arezoo/test_case/0137462010/nudgingParams.nc" ;
		:NCO = "\"4.6.2\"" ;
}
