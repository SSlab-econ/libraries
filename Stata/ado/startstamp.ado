 /**********************************************************
 *
 *  STARTSTAMP.ADO: dispalay system parameters and record the date and time
 * 
 *
 *  Based on: https://github.com/reifjulian/my-project
 * 
 **********************************************************/ 
 
version 18

program define startstamp
	syntax , [cli(str)]

	* strip all quotes from arguments
    local cargs : subinstr local cli `"""' "", all

	di "=== RUNTIME INFORMATION ==="

	di "Timestamp:       $S_DATE $S_TIME"
	di ""
	di "Stata version:   `c(stata_version)'"
	di "Updated as of:   `c(born_date)'"
	di "Variant:         `=cond( c(MP),"MP",cond(c(SE),"SE",c(flavor)) )'"
	di "Processors:      `c(processors)'"
	di ""
	di "OS:              `c(os)' `c(osdtl)'"
	di "Machine type:    `c(machine_type)'"
	local hostname : env HOSTNAME
	if !mi("`hostname'") di "Hostname:      `hostname'"
	di ""
	di "Version control: `c(version)'"
	di ""
	di "CLI arguments:   `=cond("`cargs'"!="", "`cargs'", "none")'"
	
	di "==========================="
end
