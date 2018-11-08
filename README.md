
## Image Build and Deployment for 295A Project
#### Detail of Building Image
```
1. Take base debian image with python 3.5 which is called Jessie provided by opensource (FROM python:3.6.6-jessie)
2. Add Anaconda (https://github.com/rikithamanjunath/visualsearch/blob/master/docker-anaconda/Dockerfile)
3. Add TensorFlow and other pip installations (https://github.com/rikithamanjunath/visualsearch/blob/master/docker-visualsearch/Dockerfile)
```
![visualsearch](https://github.com/rikithamanjunath/visualsearch/blob/master/image_pipeline.png)
![visualsearch](https://github.com/rikithamanjunath/visualsearch/blob/master/docker_images.png)

### Install Docker
````
https://docs.docker.com/v17.12/install/#supported-platforms
````
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

#### Application files

```
1. All the input files are mounted in the files folder
   All the jupyter notebook files and the input files are in files folder

2. Jupyter notebook files are in files --> notebook folder
    (i)  Image classification using CNN
    (ii) Image classification using Pre trained CNN models
    (ii) Feature extraction using Computer Vision algorithms 
            and calculation of Image Similarity
    (iv) Feature extraction using Pre trained CNN algorithms 
            and calculation of Image Similarity
            
3. Query images are files --> query_images folder

4. Semi_images is the subset of the main dataset

4. Semi_train and Semi_test are train and test datasets


```
#### Steps
##### Final approach : 
##### Image classification using CNN and Feature extraction using Pre trained CNN algorithms and calculation of Image Similarity
```
1. Add the query image (input image) in the query_images folder. 
   Give the correct file name and file path in the scripts

2. Using CNN_Integration.ipynb , the query image is predicted to top 3 categories 

3. Features of each model for each category is saved in pickle files by running it once and reusing them for the rest of the images

3. These three categories, and its respective features stored in pickle files are given in the MobileNet_Image_Similarity.pynb 
   to provide same and similar images

```
