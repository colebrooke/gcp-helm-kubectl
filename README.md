## Overview

A very lightweight docker image based on `google/cloud-sdk:alpine` and designed to run CI/CD pipelines that require `gcloud` commands, and deploye to Kubernetes clusters using `kubectl` and `helm`.

## How to run

To try out from your command line interface, and check the version of gcloud:

`docker run -it colebrooke/gcp-helm-kubectl gcloud version`


## Authentication to GCP services

To authenticate (creds are then preseved in the image):

`docker run -it --name gcloud-config colebrooke/gcp-helm-kubectl gcloud auth login`

Alternativley, if you are using this image in your CI pipeline and you can create a local json file with your credentials in, you can use this environment variable to set the path:

`export GOOGLE_APPLICATION_CREDENTIALS="[PATH]/[FILENAME].json"`
