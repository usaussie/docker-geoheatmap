#Geo-heatmap docker instance experiment

#########################
#						#
#   USAGE				#
#						#
#########################

# Use like any regular *nix Makefile.
# syntax: make <command>
# Example: make build-image-no-proxy

#########################
#						#
#   DOCKER SPECIFICS	#
#						#
#########################

# NOTE: instance may need to be restarted again if the local folders do not exist already before the first run.

build-image:
	docker build -t img-geoheatmap .

run-instance:
	docker run -it --rm \
       -v $(CURDIR)/location-data:/var/heatmap/location-data:Z \
       -e TZ=America/New_York \
       --name instance-geoheatmap \
       img-geoheatmap

#########################
#						#
#   MAINTENANCE SETS	#
#						#
#########################

prune-images:
	docker image prune --force
