# Geo-Heatmap

[Geo-Heatmap](https://github.com/luka1199/geo-heatmap) is a command line tool that uses Python3 to parse Google Location data into aa heatmap.


* Visit the [the original repository](https://github.com/luka1199/geo-heatmap)for command-line instructions that go beyond the simple examples provided below.

---

### Copy your Google Location data into the mounted directory

This is so it's accessible inside the container

```
cp locations.json /path/to/this/repo/location-data/locations.json
```

### Clone the repository:

```
git clone https://github.com/usaussie/docker-geoheatmap.git
```


### Build the docker image

Build an image using the Dockerfile from the repo. This will create an image called "img-geoheatmap" upon which you'll run/start any containers.

```
make build-image
```

### Run Instance of Container

Assuming you have the credentials files in the right places, you should be able to run GAM now.

```
make run-intance

```

After the "make run" command, you will be at a bash prompt, where you can start using the geo-heatmap python commands. 

```
python /var/heatmap/geo-heatmap/geo_heatmap.py /var/heatmap/location-data/locations.json --output /var/heatmap/location-data/heatmap.html
```

This will end with an error because it cannot auto-open your browser. This is fine, just open the heatmap.html file yourself from your host machine.


#Maintainer

Nick Young

usaussie@gmail.com