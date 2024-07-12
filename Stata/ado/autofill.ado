/**********************************************************
 *
 * AUTOFILL.ADO: Facilitates exporting TeX macros.
 *
 * 
 * 
 *
 **********************************************************/

program autofill
	syntax, value(str) commandname(str) outfile(str) [append(integer 0) mode(str)]
	if "`append'" == "1" {
	    file open f using "`outfile'", write append	
	}
	else if "`append'" == "0" {
	    file open f using "`outfile'", write replace	
	}
	else {
	    di as err "append must be 0 or 1"
	    exit
	}
    if "`mode'" == "text" {			
		file write f "\newcommand{\\`commandname'}{\textnormal{`value'}}" _n
	} 
	else {	    
		file write f "\newcommand{\\`commandname'}{`value'}" _n
	}	
	file close f	
end

