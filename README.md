# FortiFlex demo

This repo runs a 10-min demo of FortiFlex in GCP.

## Prerequisites

* Flex subscription
* put Flex API credentials in Secret Manager or modify flex provider configuration to use environment variables instead (see [fle_pre.tf](flex_pre.tf))

## Flow

before demo:

* optionally import flex config to avoid creating a new one every time you run a demo. Example command in prep.sh
* make sure your configuration is ACTIVE

demo:

1. show procurement options via cloud marketplace
1. switch to code editor
1. `terraform apply` before you start talking about code - this will give you ~3-4 minutes
1. while showing IDE talk about how code creates
    * new licenses
    * new FGT cluster licensed with new tokens
1. flex portal: show new licenses
1. flex portal: show how you can use web portal to update licenses
1. if gates are ready - connect to show the license
1. shell: `terraform destroy`
1. flex portal: licenses are stopped (so you they don't use points anymore)