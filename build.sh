#!/usr/bin/env bash

cd docker-anaconda
docker build . -t continuumio/anaconda3/sjsu/spring/2019/295:rikitha
cd ..
cd docker-visualsearch
docker build . -t sjsu/spring/2019/295:visualsearch