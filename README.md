# SSlab_stata
Stata scripts commonly used in SSlab workflows

## Installation

Each of this repository's packages can be installed from the Stata console 
using the `net` command, e.g.,
```stata
net from https://raw.githubusercontent.com/SSlab-econ/SSlab_stata/master/ado          
net install preliminaries,             replace
net install loadglob,                  replace
net install runtimestamp,              replace
```

## Sources and License

- preliminaries.ado and loadglob.ado files are slightly modified from [gslab-econ/gslab_stata](https://github.com/gslab-econ/gslab_stata). 
- startstamp.ado is based on code from [reifjulian/my-project](https://github.com/reifjulian/my-project).

We are responsible for all limitations that any changes to the orginal code produce.

The remaining portion of this repo is licensed under the MIT license.
