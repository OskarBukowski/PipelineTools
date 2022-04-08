#!/bin/bash

sudo su

# pulling newest version of tools

cd /opt/PipelineTools/TradingApi
git checkout master
git reset --hard
git pull


# pulling repo

cd /opt/TradingApi
git checkout master
git reset --hard
git pull