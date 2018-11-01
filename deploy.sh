#!/usr/bin/env bash
container="$(docker run -d -p 8888:8888 --mount type=bind,source="$(pwd)"/files,target=/visual  sjsu/spring/2019/295:visualsearch /bin/bash -c '/opt/conda/bin/conda install jupyter -y --quiet  && /opt/conda/bin/jupyter notebook --notebook-dir=/visual/notebook --ip='*' --port=8888 --no-browser --allow-root')"
docker logs -f $container