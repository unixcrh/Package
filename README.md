# Contoso BikeRental Package repo
This repository contains submodule references to all the different microservices that make up the BikeRental application. There are also global setup files contained here for deploying the entire BikeRental application locally or in a Kubernetes cluster.

## Initial Setup
When you first clone this repository, you'll need to initialize the submodules with the following commands at repo root:
```
git submodule init
git submodule update
```