#!/bin/bash

echo -e "Initialization of Attendize"
echo -e "\nREQUIREMENTS:"
echo -e "* docker\n* docker-compose\n* make"

dir_project="project"

cd ..
mkdir "$dir_project"
cd "$dir_project"

echo -e "\n\nCloning Attendize\n"
git clone https://github.com/upcschool-cloud-arch-project/attendize.git

echo -e "\n\nCloning fixs for Attendize\n"
git clone https://github.com/upcschool-cloud-arch-project/attendize-fix.git

cp attendize-fix/* attendize/
cp attendize-fix/.env attendize/

echo -e "\nStarting Attendize"
cd attendize/
make setup
