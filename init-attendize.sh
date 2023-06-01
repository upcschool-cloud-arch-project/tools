#!/bin/bash

echo -e "Initialization of Attendize"
echo -e "\nREQUIREMENTS:"
echo -e "* docker\n* docker-compose\n* make"

dir_project="project"

mkdir "$dir_project"
cd "$dir_project"

echo -e "\n\nCloning Attendize"
git clone https://github.com/upcschool-cloud-arch-project/attendize.git

echo -e "\n\nCloning fixs for Attendize"
git clone https://github.com/upcschool-cloud-arch-project/attendize-fix.git

cd attendize/
mv attendize-fix/* attendize/

echo Starting Attendize
make setup
