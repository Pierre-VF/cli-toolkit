#!/bin/bash

# -----------------------------------------------
# This script cleans up the docker setup on a 
#  developer machine (removing accumulated clutter over time)
#
# WARNING: this flushes cache of images too, extending build time of new images on first attempt
# -----------------------------------------------

# Cleaning up all docker images
docker system prune -a --volumes
