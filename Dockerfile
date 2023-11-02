FROM google/cloud-sdk:slim

RUN apt-get -y update && \
    apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/* 

RUN pip install \
    dvc dvc[gs] 

WORKDIR /dvc

ENV GOOGLE_APPLICATION_CREDENTIALS=/gcp_key.json
