# android
[![android](http://dockeri.co/image/snowdream/android)](https://hub.docker.com/r/snowdream/android/)

This is a Dockerfile to make minimum images for Android projects.
No `ant`, `maven`are included.

## Included
* Debian jessie
* OpenJDK 8
* Git
* Gradle 3.4
* Android SDK (android-25)
* Android Support Libraries
* Google Play Services

## Download
```bash
docker pull snowdream/android
```

## Usage
```bash
sudo docker run -t -i snowdream/android:latest /bin/bash
```

## License
```
Copyright (C) 2016 snowdream <yanghui1986527@gmail.com>

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
