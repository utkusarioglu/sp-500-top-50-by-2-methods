# SP 500 top 50 by 2 methods

A dockerized jupyter notebooks instance for computing top 50 stocks to buy
determined through 2 simple methods. The code runs with miniconda and a few
accompanying packages.

## Features

The src folder contains a single notebook file along with the python files that
it requires to function. The notebook contains two basic methods for determining
top 50 favorable stocks to buy among SP 500 index stocks.

## Usage

You can use `build.sh` for an opinionated image build that will be tagged with
`hqm-finance`. For normal use the file `start.sh` can be used to easily mount
the volumes, set the port, etc. The start script will expect the image to have
the taq `hqm-finance`.

## Structure

Code for the repo is contained in the `src` folder. Any file that is created by
the notebook is set to be saved in the `artifacts` folder. Raw any raw data that
is used by the notebook can be placed in the `data` folder.

## Secrets

The notebook works with IEX cloud service for stocks data. The service requires
a key token, which shall be placed in `./src/secrets.py`. Without the token, the
repo will not work as expected.
