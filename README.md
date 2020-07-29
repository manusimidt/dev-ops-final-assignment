# Dev-Ops Final Assignment

This repository is the code used in our final assignment in DDOP SoSe20.

## DevOps Lifecycle
![DevOps Tolchain Illustration](https://www.trendreport.de/wp-content/uploads/2017/03/Devops-toolchain.svg_.png)

## Toolchain

#### Frameworks:
| name | Node.js  |
|---|---|
| website           | OpenJS Foundation, https://nodejs.org/en/  |
| version     | 12.18.3 | 
| DevOps stage        | creation, as runtime environment |
| requirements/compatibility    | no specific software and hardware requirements, cross-platform compatible |

| name | npm  |
|---|---|
| website           | npm Inc., https://www.npmjs.com/  |
| version     | 6.14.6 | 
| DevOps stage        | create, as package manager, for installing all dependencies |
| requirements/compatibility    | no specific software and hardware requirements |

| name | Webpack  |
|---|---|
| website           | Webpack, https://webpack.js.org/  |
| version     | 4.43.0 | 
| DevOps stage        | build, for resource transformation |
| requirements/compatibility    | requires browser with ES5 compatibility |

| name | Angular  |
|---|---|
| website           | Google, https://angular.io/features  |
| version     | 10.0.4 | 
| DevOps stage        | build, as web application framework |
| requirements/compatibility    | requires Node.js and npm |

#### VC and Collaboration
| name | Git  |
|---|---|
| website           | Software Freedom Conservancy, https://git-scm.com/  |
| version     | 2.27.0 | 
| DevOps stage        | create, as version control framework |
| requirements/compatibility    | no requirements |

| name | GitHub  |
|---|---|
| website           | GitHub Inc., https://github.com/  |
| version     | webservice | 
| DevOps stage        | Create and verify, as version control and collaboration platform. GitHub also runs the C/CD tests, marks commits where the unit tests failed and sends email notifications about errors in the CI/CD pipeline. |
| requirements/compatibility    | creation of GitHub account, desktop app is compatible with Linux, MacOS and Windows |

| name | DockerHub  |
|---|---|
| website           | Docker Inc., https://hub.docker.com/  |
| version     | webservice, last updated on 14.05.2020 | 
| DevOps stage        | packaging, as a registry for the docker image |
| requirements/compatibility    | creation of a Docker ID (account) |

#### Testing
| name | Jasmine  |
|---|---|
| website           | Pivotal Labs, https://jasmine.github.io/  |
| version     | 3.6.0 | 
| DevOps stage        | testing, as a unit test framework |
| requirements/compatibility    | no specific software and hardware requirements |

| name | Karma  |
|---|---|
| website           | Friedel Ziegelmayer, https://karma-runner.github.io/5.0/index.html  |
| version     | 5.0 | 
| DevOps stage        | testing, as a unit test runner |
| requirements/compatibility    | requires Node.js |

| name | Headless Chrome  |
|---|---|
| website           | Google Inc., https://chromium.googlesource.com/chromium/src/+/lkgr/headless/README.md  |
| version     | 5.2.1 | 
| DevOps stage        | testing, used to run the Jasmine tests with Karma on the Ubuntu Server |
| requirements/compatibility    | no specific software and hardware requirements |

#### CI/CD 
| name | GitHub Actions  |
|---|---|
| website           | GitHub Inc., https://github.com/features/actions  |
| version     | no information about version | 
| DevOps stage        | testing and release, used to run the CI/CD pipeline |
| requirements/compatibility    | requires GitHub |

| name | Publich-Docker-Github-Action  |
|---|---|
| website           | GitHub Inc., https://github.com/elgohr/Publish-Docker-Github-Action  |
| version     | no information about version | 
| DevOps stage        | release, used to create and publish the docker image |
| requirements/compatibility    | no specific software and hardware requirements |

| name | Heroku  |
|---|---|
| website           | Salesforce.com, https://www.heroku.com/  |
| version     | no information about version | 
| DevOps stage        | release, used as a test server |
| requirements/compatibility    | requires Heroku account |

| name | Heroku Registry  |
|---|---|
| website           | Salesforce, https://devcenter.heroku.com/articles/container-registry-and-runtime   |
| version     | no information about version | 
| DevOps stage        | release, used to upload the application to Heroku |
| requirements/compatibility    | requires Heroku |

## CI/CD Pipeline 
![CI/CD Pipeline Illustration](./docs/img/CI_CD_Toolchain.png "CI/CD Pipeline Illustration")

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Build the docker file
docker build -t dev-ops-final-assignment-image .

## Create a container of the image
docker run --name dev-ops-final-assignment-container -d -p 8080:80 dev-ops-final-assignment-image



## Useful docker commands
| command | description  |
|---|---|
| docker image ls           | lists all docker images  |
| docker rmi {image id}     | deletes the image| 
| docker image prune        | deletes all unused images |
| docker container ls -a    |  lists all containers |
| docker container prune    | delete all stopped containers|

