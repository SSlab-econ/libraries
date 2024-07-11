# libraries
Helper scripts commonly used in SSlab workflows

## Installation

Each of this repository's packages can be installed from the Stata console 
using the `net` command, e.g.,
```stata
net from https://raw.githubusercontent.com/SSlab-econ/libraries/master/Stata/ado          
net install save_data,         replace
net install timestamp,         replace
net install startstamp,        replace
```

## Sources and License

- `save_data` and `SaveData()`,`preliminaries`, `loadglob`, `LoadGlobals()`, `autofill`, and `AutoFill()` are all slightly modified or directly copied from [gslab-econ](https://github.com/gslab-econ). 
- startstamp.ado is based on code from [reifjulian/my-project](https://github.com/reifjulian/my-project).

We are responsible for all limitations that any changes to the orginal code produce.

The remaining portion of this repo is licensed under the MIT license.
