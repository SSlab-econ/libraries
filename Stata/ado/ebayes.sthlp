{smcl}
{* *! version 1.0  03dec2024}{...}
{viewerdialog ebayes "dialog ebayes"}{...}
{viewerjumpto "Syntax" "ebayes##syntax"}{...}
{viewerjumpto "Description" "ebayes##description"}{...}
{viewerjumpto "Options" "ebayes##options"}{...}
{viewerjumpto "Remarks" "ebayes##remarks"}{...}
{viewerjumpto "Examples" "ebayes##examples"}{...}
{viewerjumpto "Author" "ebayes##author"}{...}
{viewerjumpto "References" "ebayes##references"}{...}
{viewerjumpto "Also see" "ebayes##also_see"}{...}

{title:Title}
{p2colset 5 18 20 2}{...}
{p2col:{hi:ebayes}}Empirical Bayes shrinkage estimator based on Morris (1983){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:Syntax}

{p 8 17 2}{cmd:ebayes} {it:fe} {it:se} [{it:varlist}] [{cmd:if}] [{cmd:,} {opth absorb(varname)} {opth gen(newvar)} {opth bee(newvar)} {opth theta(newvar)} {opth var(newvar)} {opth uvar(newvar)} {opth rawvar(newvar)} {opth by(varname)} {opt simple} {opth tol(#)} {opth maxiter(#)} {cmd:}] 

{marker description}{...}
{title:Description}

{pstd}{cmd:ebayes} performs an empirical Bayes shrinkage estimation based on Morris (1983). It adjusts the provided fixed effects ({it:fe}) using their standard errors ({it:se}) to produce empirical Bayes estimates. The procedure can incorporate covariates ({it:varlist}) and higher-level fixed effects specified via {opt absorb()}.

{marker options}{...}
{title:Options}

{phang}{opth absorb(varname)} specifies a variable for higher-level fixed effects. This allows the underlying mean to have fixed effects at the level of {it:varname}. Can be used with or without additional covariates in {it:varlist}.

{phang}{opth gen(newvar)} specifies a new variable to store the empirical Bayes adjusted fixed effects.

{phang}{opth bee(newvar)} specifies a new variable to store the attenuation factor ("B"), representing the degree of shrinkage applied.

{phang}{opth theta(newvar)} specifies a new variable to store the estimated underlying mean ({it:theta}). This is the value toward which the fixed effects are shrunk (e.g., {cmd:x*beta}).

{phang}{opth var(newvar)} specifies a new variable to store the underlying variance of the fixed effects distribution, conditional on the right-hand-side variables.

{phang}{opth uvar(newvar)} specifies a new variable to store the unconditional underlying variance of the fixed effects distribution, which includes both the variance of the fixed effects and the variance of {it:theta}.

{phang}{opth rawvar(newvar)} specifies a new variable to store the observed variance of the raw fixed effects provided as input. This variance is weighted using the same weights as those for {opt var()} and {opt uvar()}.

{phang}{opth by(varname)} performs the empirical Bayes procedure separately for each unique value of {it:varname}. For example, {cmd:by(year)} would run the procedure for each year independently.

{phang}{opt simple} instructs the program not to iterate the empirical Bayes procedure. Instead, it uses constant weights to estimate the underlying mean, variance, and attenuation factor, equivalent to the output from the first iteration.

{phang}{opth tol(#)} sets the tolerance for convergence based on the change in the estimated underlying conditional variance. The default tolerance is {cmd:0.000001}.

{phang}{opth maxiter(#)} sets the maximum number of iterations allowed. The default is {cmd:100}.

{marker remarks}{...}
{title:Remarks}

{pstd}The {cmd:ebayes} command requires at least two arguments:

{phang}{it:fe} is the variable containing the fixed effects or the noisily estimated quantities to be adjusted.

{phang}{it:se} is the variable containing the standard errors (not variances) of the fixed effects, representing the estimated standard deviation of the noise.

{pstd}The optional {it:varlist} includes right-hand-side variables for the weighted least squares regression used to estimate the underlying mean of the fixed effects ({it:theta}). If {it:varlist} is omitted, the underlying mean is assumed to be a constant. The {opt absorb()} option can be used in conjunction with {it:varlist} to include higher-level fixed effects in the estimation of {it:theta}.

{marker examples}{...}
{title:Examples}

{hline}
{pstd}Basic usage:{p_end}
{phang2}{cmd:. ebayes fe_var se_var, gen(eb_fe)}{p_end}

{pstd}Using covariates and higher-level fixed effects:{p_end}
{phang2}{cmd:. ebayes fe_var se_var x1 x2, absorb(group_id) gen(eb_fe) theta(eb_theta)}{p_end}

{pstd}Performing the procedure separately by group and using the simple option:{p_end}
{phang2}{cmd:. ebayes fe_var se_var, by(year) gen(eb_fe) simple}{p_end}
{hline}

{marker author}{...}
{title:Author}

{pstd}{bf:Adam Sacarny}
{pstd}The latest version of this program can be found at {browse "http://www.sacarny.com/programs/"}

{marker references}{...}
{title:References}

{phang}Morris, C. N. (1983). Parametric empirical Bayes inference: Theory and applications. {it:Journal of the American Statistical Association}, 78(381), 47–55.

{marker also_see}{...}
{title:Also see}

{psee}Manual: {bf:[R] shrinkage}, {bf:[BAYES] bayes}
{psee}Help: {bf:{help ebreg}}, {bf:{help shrinkage}}, {bf:{help bayes}}
