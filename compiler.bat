@echo off
SET workspace=repos
SET urlFront=%1
SET urlback=%2
IF exist %workspace% ( 
    echo %workspace% exists se eliminara
    RD /S /Q %workspace%
    mkdir %workspace% && echo %workspace% created nuevamente... 
) ELSE ( 
    mkdir %workspace% && echo %workspace% created
)

cd %workspace%
git clone %urlFront%
git clone %urlback%
cd ..


