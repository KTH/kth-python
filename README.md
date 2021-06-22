# KTH Python 3.10 ![Continous Integration](https://github.com/KTH/kth-python-3.10/actions/workflows/main.yml/badge.svg)

## Versions 
**The 🐳 image is build every night to have the latest security patches installed. After being built the image is pushed to [KTH:s public account on Docker Hub](https://hub.docker.com/r/kthse/kth-python/tags/).**

## What python related software are installed in the image?
The image tag tells you what version you are using so `kth-python:3.10.* is Python version 3.10` and so on. The path version is normally not changed unless we install something in the image. Otherwise we try to stay on the latest major.minor version.

*Pip* and *Pipenv* versions are always the latest availible.

Each built image has information about its version in a file called `KTH_PYTHON`. To look into this files content run: `docker run kthse/kth-python:3.10.0 cat /KTH_PYTHON`.

```bash
PYTHON INFORMATION
Build date: Wed Jun 16 21:27:45 UTC 2021
Pyton: Python 3.10.0b2
pip: pip 21.1.2 from /usr/local/lib/python3.10/site-packages/pip (python 3.10)
pipenv: pipenv, version 2021.5.29
```

## What tag (version) should i use?
We recommended that you use the SemVer without hash (kth-nodejs:*8.11.0*), and try to keep up with possible upgrades to major, minor or patch-version. Unlike normal images SemVer numbers are reused when we rebuild the image each night to get the latest security patches. If you wish to stick to a specific commit you can also look in the [Docker Hub for a specifc version](https://hub.docker.com/r/kthse/kth-nodejs/tags/) where you whould see something like `9.11.0_50e53e0`, where _50e53e0_ whould the the Git commit hash. Then you will be sure exacly what it is you are useing. But please note, if you use a specific tag like 9.11.0_50e53e0 you will only get nightly security upgrades aslong as the Git commit is also the Git HEAD. After that the image will slowly rotten.

## What operating system does this image use?
The image also contains build information from when the operating system was built. This information is located in the root in a file called `KTH_OS` run: `docker run kthse/kth-python:3.10.0 cat /KTH_OS` to view your image.

```bash
OS INFORMATION
Alpine version: 3.10.1
Build date: Wed Oct 10 08:45:39 UTC 2018
```

