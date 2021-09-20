@echo off
SET workspace=repos
SET repoUrl=%1

IF exist %workspace% ( 
    echo %workspace% exists se eliminara
    RD /S /Q %workspace%
    mkdir %workspace% && echo %workspace% created nuevamente... 
) ELSE ( 
    mkdir %workspace% && echo %workspace% created
)

cd %workspace%
git clone %repoUrl%

cd ..
docker-compose up -d