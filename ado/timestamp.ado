 /**********************************************************
 *
 *  TIMESTAMP.ADO: dispalay system parameters and record the date and time
 * 
 *
 *  Based on: STARTSTAMP.ADO
 * 
 **********************************************************/ 
 
version 18

program define timestamp
	di "{hline `=min(79, c(linesize))'}"

	di "Date and time: $S_DATE $S_TIME"

	
	di "{hline `=min(79, c(linesize))'}"
end
