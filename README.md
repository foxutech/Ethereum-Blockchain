# Ethereum-Blockchain
Ethereum-Blockchain setup

# Step1: Modify myblockGenesis.json

Change your own valuse in myblockgenesis.json
$ vim myblockGenesis.json

# step2: Build a image

once you modified the genesis, now build a docker image using following command

$ docker build -t myrepo/myblock .

once its successfully build push it to the repo

$ docker push myrepo/myblock
