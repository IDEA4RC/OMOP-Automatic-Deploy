# OMOP Automatic Deployment - For Docker Compose, Kubernetes & Istio

![OMOP Automatic Deploy - For Docker Compose, Kubernetes & Istio](assets/OMOP_Automatic_Deploy.png "OMOP Automatic Deploy - For Docker Compose, Kubernetes & Istio")

This repository contains the necessary files to deploy the OMOP database using Kubernetes or Docker Compose, and the necessary files to populate the database with the OMOP vocabulary that you want. This repository is based on the [OMOP CommonDataModel repository](https://github.com/OHDSI/CommonDataModel) and uses a custom version of the [OHDSI Broadsea vocabulary loader](https://github.com/OHDSI/Broadsea/tree/main/omop_vocab/scripts).

***Disclaimer**: The vocabularies that require an API Key from UML have not been tested with this deployment method.*

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Deployment](#deployment)
    1. [Docker Compose](#docker-compose)
    2. [Bare Kubernetes](#bare-kubernetes)
    3. [Istio Kubernetes](#istio-kubernetes)
3. [License](#license)

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Deployment

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
| POSTGRES_DB | Name of the database | omopdb |

#### vocab_uploader service variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| VOCAB_PG_HOST | Host of the database | db *(must have the name of the service containing the database)* |
| VOCAB_PG_DATABASE | Name of the database | omopdb *(must be the same as in database service)* |
| VOCAB_PG_USER | Name of the administration user of the database | postgres *(must be the same as in database service)* |
| VOCAB_PG_PASSWORD | Password of the administration user of the database | mysecretpassword *(must be the same as in database service)* |
| VOCAB_PG_SCHEMA | Schema where the vocabulary will be loaded | omopcdm |

3. In order to load the vocabularies when the database is ready, the [vocab_loader]() script is used. This script uses the CSV files downloaded from [OHDSI ATHENA]() and its part of [OHDSI BROADSEA repository](https://github.com/OHDSI/Broadsea). To load the vocabularies, you must download the CSV files from ATHENA and put them in the [vocab_script/files]() folder. Don't change the files names, because the script uses them to load the vocabularies.

4. When everything is ready, you must execute the [docker-compose.yaml]() using this command:

    ```bash
    docker compose up -d
    ```



The variables used and its locations are:

#### OMOP CDM Deployment variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| POSTGRES_USER | Name of the administration user of the database | postgres |
| POSTGRES_DB | Name of the database | omopdb |

#### OMOP Secrets variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| POSTGRES_PASSWORD | Password of the administration user of the database | mysecretpassword *(Written in Base64)* |

#### OMOP Vocab Job variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| VOCAB_PG_HOST | Host of the database | db *(must have the name of the service containing the database)* |
| VOCAB_PG_DATABASE | Name of the database | omopdb *(must be the same as in database service)* |
| VOCAB_PG_USER | Name of the administration user of the database | postgres *(must be the same as in database service)* |
| VOCAB_PG_PASSWORD | Password of the administration user of the database | mysecretpassword *(must be the same as in database service)* |
| VOCAB_PG_SCHEMA | Schema where the vocabulary will be loaded | omopcdm |

**THIS VARIABLES SHOULD BE PUT ON THE ARGS SECTION AND THE ENV SECTION**

3. In order to load the vocabularies when the database is ready, the [vocab_loader]() script is used. This script uses the CSV files downloaded from [OHDSI ATHENA](https://athena.ohdsi.org/vocabulary/list) and its part of [OHDSI BROADSEA repository](https://github.com/OHDSI/Broadsea) To load the vocabularies, you must download the CSV files from ATHENA and put them in the [vocab_script/files]() folder. Don't change the files names, because the script uses them to load the vocabularies.

4. When everything is ready, you must execute the [kubernetes.yaml]() using this command:

    ```bash
    kubectl apply -f kubernetes/bare-kubernetes/001_OMOP-Secrets.yaml

    kubectl apply -f kubernetes/bare-kubernetes/002_OMOP-CDM-Deployment.yaml

    kubectl apply -f kubernetes/bare-kubernetes/003_OMOP-CDM-Service.yaml

    kubectl apply -f kubernetes/bare-kubernetes/004_OMOP-Vocab-Job.yaml
    ```

### Istio Kubernetes

This method is for a Kubernetes cluster with Istio installed. If you want to deploy the OMOP database in a vanilla Kubernetes cluster, you can use the [Bare Kubernetes](#bare-kubernetes) deployment method.

This tutorial deploys a new namespace called Datamesh, with a policy that only allows mTLS traffic, and then we deploy all the OMOP database components in this namespace. If you want to deploy the OMOP database in another namespace, you should change the namespace in the YAML files.

1. Download [Istio](https://istio.io/latest/docs/setup/getting-started/#download) and enable the Istio injection in the cluster:

    ```bash
    istioctl install --set profile=demo -y
    ```

2. Clone this repository:

    ```bash
    git clone https://gitlab.lst.tfo.upm.es/idea4rc/omop-deploy.git
    ```

3. In Kubernetes you should change all args variables and environment variables to the values you want. These are displayed in this format:
    
    ```yaml
    env:
      - name: VARIABLE_NAME
        value: VARIABLE_VALUE
    ```

    The variables used and its locations are:

#### OMOP CDM Deployment variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| POSTGRES_USER | Name of the administration user of the database | postgres |
| POSTGRES_DB | Name of the database | omopdb |

#### OMOP Secrets variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| POSTGRES_PASSWORD | Password of the administration user of the database | mysecretpassword *(Written in Base64)* |

#### OMOP Vocab Job variables:

| Variable name | Explanation | Default Value |
|--|--|--|
| VOCAB_PG_HOST | Host of the database | db *(must have the name of the service containing the database)* |
| VOCAB_PG_DATABASE | Name of the database | omopdb *(must be the same as in database service)* |
| VOCAB_PG_USER | Name of the administration user of the database | postgres *(must be the same as in database service)* |
| VOCAB_PG_PASSWORD | Password of the administration user of the database | mysecretpassword *(must be the same as in database service)* |
| VOCAB_PG_SCHEMA | Schema where the vocabulary will be loaded | omopcdm |

**THIS VARIABLES SHOULD BE PUT ON THE ARGS SECTION AND THE ENV SECTION**

4. In order to load the vocabularies when the database is ready, the [vocab_loader]() script is used. This script uses the CSV files downloaded from [OHDSI ATHENA](https://athena.ohdsi.org/vocabulary/list) and its part of [OHDSI BROADSEA repository](https://github.com/OHDSI/Broadsea). To load the vocabularies, you must download the CSV files from ATHENA and put them in the [vocab_script/files]() folder. Don't change the files names, because the script uses them to load the vocabularies.
 

5. When everything is ready, you must execute the [kubernetes.yaml]() using this command:

    ```bash
    kubectl apply -f kubernetes/istio/001_datamesh.yaml

    kubectl apply -f kubernetes/datamesh/002_mtls-policy.yaml

    kubectl apply -f kubernetes/istio/003_gateway.yaml

    kubectl apply -f kubernetes/istio/004_omop-secrets.yaml

    kubectl apply -f kubernetes/istio/005_omop-db-cdm-deploy.yaml

    kubectl apply -f kubernetes/istio/006_omop-db-svc-datamesh.yaml

    kubectl apply -f kubernetes/istio/007_omop-vocab-job.yaml
    ```

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

See [LICENSE](./LICENSE) for details.
