
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

2. Jupyter notebook files are in path (files/notebook)
    (i)  Image classification using CNN
            Path : files/notebook/CNN
    (ii) Image classification using Pre trained CNN models
            Path : files/notebook/PretrainedCNN
    (ii) Feature extraction using Computer Vision algorithms and calculation of Image Similarity
            Path : files/notebook/ImageSimilarity-ComputerVision
    (iv) Feature extraction using Pre trained CNN algorithms and calculation of Image Similarity
            Path : files/notebook/ImageSimilarity-Pretrained
            
            
3. Features of all the models are extracted and saved in pickle files (files --> pickle_files)

4. Query images are files --> query_images folder

5. Semi_images is the subset of the main dataset

6. Semi_train and Semi_test are the train and test datasets


```
#### Steps
##### Final approach : 
##### 1. Image classification using CNN  
##### 2. Feature extraction using Pre trained CNN algorithms 
##### 3. Calculation of Image Similarity using Cosine distance
```
1. Add the query image (input image) in the files --> query_images folder. 
    Path of the query images : /visual/files/query_images/queryfile.jpg

2. Give the correct file name and file path of the query image in CNN_Integration.ipynb 
    Depending on the query image, three categories are predicted 

3. Features of each model for each category is saved in pickle files by running them once.
   Give the pickle file path of the predicted 3 categories (/visual/files/pickle_files/Features_PreTrained/categoryname/algorithm/feature.pck)  
   
4. The features of the respective predicted categories which are stored in the pickle files are used in the MobileNet_Image_Similarity.pynb (path : files/notebook/ImageSimilarity-Pretrained/MobileNet_Image_Similarity.pynb) 
   to get same and similar images. 
   
```
