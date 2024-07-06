 /**********************************************************
 *
 *  RUNTIMESTAMP.ADO: dispalay system parameters and record the date and time
 * 
 *
 *  Based on: https://github.com/reifjulian/my-project
 * 
 **********************************************************/ 
 
version 18

program define runtimestamp 
	di "{hline `=min(79, c(linesize))'}"

	di "Date and time: $S_DATE $S_TIME"
	di "Stata version: `c(stata_version)'"
	di "Updated as of: `c(born_date)'"
	di "Variant:       `=cond( c(MP),"MP",cond(c(SE),"SE",c(flavor)) )'"
	di "Processors:    `c(processors)'"
	di "OS:            `c(os)' `c(osdtl)'"
	di "Machine type:  `c(machine_type)'"
	local hostname : env HOSTNAME
	if !mi("`hostname'") di "Hostname:      `hostname'"
	
	di "{hline `=min(79, c(linesize))'}"
end
