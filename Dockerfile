# Dockerfile

FROM notnoopci/php:7-apache-node-browsers

RUN buildDeps='gcc libc6-dev make' \
    && sudo apt-get update \
    && sudo apt-get install -y $buildDeps \
    && sudo apt-get install python-pip \
    && sudo pip install --upgrade awsebcli \
    && sudo apt-get install -y zlib1g-dev \
    && sudo docker-php-ext-install zip \
    && sudo rm -rf /var/lib/apt/lists/* \
    && sudo apt-get purge -y --auto-remove $buildDeps
