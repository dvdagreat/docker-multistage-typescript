# Summary
This repository holds code for my [YouTube video](https://www.youtube.com/watch?v=IFcM8lmgkWI&pp=ygUNZGl2eWVzaCBsYWR2YQ%3D%3D), in which I demonstrate how to use docker's multistage build feature with typescript and node.

## Pre-requiesites
- Nodejs
- Docker
- Typescript
- Working knowledge of above technologies

## Steps to containerize the application

1) clone the repository
2) cd into it
3) build the docker image by running the below command
```
docker build -t multistage-builder:1.0.0 .
```
4) run the docker image by running the below command
```
docker run -dp 5050:5050 multistage-builder:1.0.0
```
5) Open your browser and go to the following url
```
http://localhost:5050/some-route
```

- you should see the below output 
```
{works: true}
```

- If you do not see the above output, then you probably have missed some steps that I show in these [YouTube video](https://www.youtube.com/watch?v=IFcM8lmgkWI&pp=ygUNZGl2eWVzaCBsYWR2YQ%3D%3D). Please check it out.
s
### Other issues
- check if docker is installed properly
- check that port 5050 is not used by any other application
