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

#### To test the code and get image recommendations for a query image, you can follow the steps given below:


#### Steps
##### Final approach : 
##### 1. Image classification using CNN  
##### 2. Feature extraction using Neural Networks : MobileNet 
##### 3. Calculation of Image Similarity using Cosine distance

```

1. You can pick one of the query image (input image) from the path below and download it to your local system. 
   Path of the query images : /visual/files/images/query_images/queryfile.jpg

2. To run the Category prediction step, load the CNN_Integration.ipynb from the below path:
   Path : /visual/files/notebook/Final Model/CNN_Integration.ipynb

    Download the json model and h5 file from the link: https://drive.google.com/drive/folders/1cPwrrkDKRZ8AGGcL1hZBS6eXoEPZZpZO?usp=sharing
    Once the download is done, change the path of the json_model, model.h5 file, query image to your local file path
    Once you run the cnn script, three categories for the query image are predicted. 

3. You have to download the pickle files from the link:https://drive.google.com/drive/folders/1cPwrrkDKRZ8AGGcL1hZBS6eXoEPZZpZO?usp=sharing
 
   
4. The features of the respective predicted categories which are stored in the pickle files are used in the MobileNet_Image_Similarity.ipynb which can be downloaded from the below path:
   Path : files/notebook/Final Model/MobileNet_Image_Similarity.ipynb 

    To get the final image recommendations, you have to load the MobileNet_Image_Similarity.ipynb and do the following steps
    Change the "category list" in the code to the predicted category list you got at the end of CNN_Integration.ipynb script.
    Download the semi train dataset from /visual/files/images/Semi_train and Change the path in script.
    Change the pickled_db_path to the feature_mnet folder you got after downloading the pickle files.
    Change the path of the query image similar to what you gave in CNN_Integration.ipynb script.
```
#### All the model training scripts details are given in the below section: 

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

5. Semi_images is the subset of the main dataset we used to train the models.

6. Semi_train and Semi_test are the train and test datasets

```
