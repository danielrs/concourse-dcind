Docker-Compose-in-Concourse image.

#### Why another one?

The canonical [Docker-in-Docker](https://github.com/docker-library/docker) `docker:dind` image doesn't
work in Concourse. I'm guessing because it is optimized for a Docker runtime, whereas Concourse
is using [Garden](https://github.com/cloudfoundry/garden) for running the images.

This image is based in the oficial [docker-image-resource](https://github.com/concourse/docker-image-resource)
from Concourse, optimized for tasks steps (as opposed to resources). The alternatives (some of them linked
below) follow a similar approach, however, they haven't been updated in quite some time.

#### Alternatives

- [karlkfi/concourse-dcind](https://github.com/karlkfi/concourse-dcind)
- [meAmidos/dcind](https://github.com/meAmidos/dcind)
