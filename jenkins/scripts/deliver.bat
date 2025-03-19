@echo off
echo The following Maven command installs your Maven-built Java application
echo into the local Maven repository, which will ultimately be stored in
echo Jenkins's local Maven repository (and the "maven-repository" Docker data volume).

:: Ejecutar Maven para compilar e instalar
mvn jar:jar install:install help:evaluate -Dexpression=project.name

:: Extraer el nombre del proyecto desde pom.xml
for /f "delims=" %%a in ('mvn -q -DforceStdout help:evaluate -Dexpression=project.name') do set NAME=%%a

:: Extraer la versión del proyecto desde pom.xml
for /f "delims=" %%a in ('mvn -q -DforceStdout help:evaluate -Dexpression=project.version') do set VERSION=%%a

echo The following command runs and outputs the execution of your Java application...
java -jar target\%NAME%-

