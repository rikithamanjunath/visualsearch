
## Image Build and Deployment for 295A Project
#### Detail of Building Image
```
1. Take base debian image with python 3.5 which is called Jessie provided by opensource (FROM python:3.6.6-jessie)
2. Add Anaconda (https://github.com/rikithamanjunath/visualsearch/blob/master/docker-anaconda/Dockerfile)
3. Add TensorFlow and other pip installations (https://github.com/rikithamanjunath/visualsearch/blob/master/docker-visualsearch/Dockerfile)
```
![visualsearch](https://github.com/rikithamanjunath/visualsearch/blob/master/image_pipeline.png)
![visualsearch](https://github.com/rikithamanjunath/visualsearch/blob/master/docker_images.png)
### Build Step
````bash
sh build.sh
````
### Run
```bash
sh deploy.sh
```
### Kill and Remove dead components
```bash
sh cleanAll.sh
```
### Free disk space
```bash
docker rmi $(docker images -q)
```
### References
1. https://github.com/docker-library/python/blob/88812635c8ad7ff06a8a3755616a1040df222f3c/3.6/jessie/Dockerfile
2. https://github.com/ContinuumIO/docker-images

## Application ReadMe

### TBD
