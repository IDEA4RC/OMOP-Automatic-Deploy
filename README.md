# OMOP Database - Kubernetes & Docker Compose Deployment

This repository contains the necessary files to deploy the OMOP database using Kubernetes or Docker Compose, and the necessary files to populate the database with the OMOP vocabulary that you want. This repository is based on the [OMOP CommonDataModel repository](https://github.com/OHDSI/CommonDataModel) and uses a custom version of the [OHDSI Broadsea vocabulary loader](https://github.com/OHDSI/Broadsea/tree/main/omop_vocab/scripts).

***Disclaimer**: The vocabularies that require an API Key from UML have not been tested with this deployment method.*

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Deployment](#deployment)
    1. [Kubernetes](#kubernetes)
    2. [Docker Compose](#docker-compose)
3. [License](#license)

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Deployment

### Kubernetes

1. Clone this repository:

    ```bash
    git clone https://gitlab.lst.tfo.upm.es/idea4rc/omop-deploy.git
    ```

### Docker Compose

1. Clone this repository:

    ```bash
    git clone https://gitlab.lst.tfo.upm.es/idea4rc/omop-deploy.git
    ```

2. In [docker-compose.yaml](https://gitlab.lst.tfo.upm.es/idea4rc/omop-deploy/-/blob/main/docker-compose.yaml), change all args variables and environment variables to the values you want. These are the variables used:

#### DB service variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| POSTGRES_USER | Name of the administration user of the database | postgres |
| POSTGRES_PASSWORD | Password of the administration user of the database | mysecretpassword |
| POSTGRES_DB | Name of the database | test-omop |

#### vocab_uploader service variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| VOCAB_PG_HOST | Host of the database | db *(must have the name of the service containing the database)* |
| VOCAB_PG_DATABASE | Name of the database | test-omop *(must be the same as in database service)* |
| VOCAB_PG_USER | Name of the administration user of the database | postgres *(must be the same as in database service)* |
| VOCAB_PG_PASSWORD | Password of the administration user of the database | mysecretpassword *(must be the same as in database service)* |
| VOCAB_PG_SCHEMA | Schema where the vocabulary will be loaded | omop-vocab |



## License

This software is licensed under Apache License 2.0. This license applies for this file and the other files hosted in this repository.

```
Copyright 2022 Universidad Politécnica de Madrid

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

See [LICENSE](https://gitlab.lst.tfo.upm.es/idea4rc/omop-deploy/-/blob/main/LICENSE) for details.