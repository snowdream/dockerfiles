# snowdream/desktop
[![build-essential](http://dockeri.co/image/snowdream/desktop)](https://hub.docker.com/r/snowdream/desktop/)

This is a Dockerfile to make minimum images for docker with desktop projects.

## Included
* Debian jessie
* Mate Desktop
* Openssh-server
* X2goserver

## Download
```bash
docker pull snowdream/desktop
```

## Usage
### How to run Debian with Mate Desktop ?
Pull from Docker Index and run the image
```bash
CID=$(docker run -p 2222:22 -t -d snowdream/desktop)
docker logs $CID

note down the root/dockerx passwords.
```
OR

build it yourself.
```bash
git clone git@github.com:snowdream/dockerfiles.git .
docker build -t [yourimagename] .

CID=$(docker run -p 2222:22 -t -d [yourimagename])

docker logs $CID

note the root/dockerx passwords
```
### How to run/connect to server with a Client?

Download the x2go client for your OS from: http://wiki.x2go.org/doku.php/doc:installation:x2goclient

Create a new session and connect to your seerver Host : (Your Server IP) Port : 2222 Username : root Password : (get it from the Docker logs above)

Select the Session TYPE as : Mate

You can also SSH to the docker container directly with root or dockerx users and their passwords over the port 2222 with linux ssh or windows putty client.


## License
```
Copyright (C) 2017 snowdream <yanghui1986527@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
