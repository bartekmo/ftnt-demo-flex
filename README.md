# FortiFlex demo

This repo runs a 10-min demo of FortiFlex in GCP.

## Prerequisites

* set env to authenticate to Flex
* import flex config to not duplicate entries upon re-runs

## Flow

1. (optional) procurement options via cloud marketplace
1. code: deploy to create
    * new licenses
    * new FGT cluster licensed with new tokens
1. flex portal: show new licenses
1. flex portal: update licenses
1. shell: destroy
1. flex portal: licenses destroyed