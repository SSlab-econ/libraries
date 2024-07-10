 /**********************************************************
 *
 *  localpackages.ADO: SET STATA TO USE PACKAGES INSTALLED
 *                     IN PROJECT FOLDER
 * 
 * Inputs: None
 * 
 * Output: 1) Message about any errors printed to the log
 *
 * Based on: code by Julian Reif (https://github.com/reifjulian/my-project/blob/master/analysis/scripts/programs/_config.do)
 * 
 **********************************************************/ 
 
version 18

program define uselocalpackages
 
    tokenize `"$S_ADO"', parse(";")
    while `"`1'"' != "" {
      if `"`1'"'!="BASE" cap adopath - `"`1'"'
      macro shift
    }
    adopath ++ "./src/lib/Stata"  
    
end
