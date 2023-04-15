# diagrams

This is simple docker image to generate diagrams. It is using https://diagrams.mingrammer.com.

# Usage

To generate diagram, prepare python code. Example from [diagram](https://diagrams.mingrammer.com) project:
```
# diag.py
from diagrams import Diagram
from diagrams.aws.compute import EC2
from diagrams.aws.database import RDS
from diagrams.aws.network import ELB

with Diagram("Web Service", show=False):
    ELB("lb") >> EC2("web") >> RDS("userdb")
```
Execute this command to generate diagram:
`docker run --rm -v ${PWD}:/src diagrams diag.py`

Explanations:
```
--rm - removes image as soon as it will be stopped
-v ${PWD}:/src - mounts current directory in /src inside of the image
diag.py - name of the python code
```