# Building containers and migrating them to cloud

Containers are a form of operating system Virtualization Technology. 
Before Containers there is the use of virtual machines. 
But they are heavy weight and each virtual machine has its own Guest OS and their own kernel whereas the Containers use the host OS kernel and is much lighter in size when compared to Virtual Machines. 
Containers can be build and run in seconds. 
Building containers for the products that are extensively used by companies can help them in building their applications more scalable. 
The main aim of the project is to build containers for the following products MySQL and Servlet Project.
* In future this project is extended for deploying IBM Product Applications
* At present we are dealing the deployment of Tomcat Servlet and MySQL on cloud 

## Getting Started

Clone this project and open it in any of your favourite IDE. 
Please see the Prerequisites that are necessary. 
Missing any od them may cause error or stop the process flow.


### Prerequisites
* Knowledge of OS
* Knowledge of Namespace

1. [Docker](http://docker.com/)
2. [Azure](https://azure.microsoft.com/en-us/) or [AWS](https://aws.amazon.com/) or [GCP](https://cloud.google.com/) cloud account, You can use any cloud service provider for my use I am using [IBM Cloud Account](http://cloud.ibm.com)
3. [Kubernetes](https://kubernetes.io/) service on [cloud provider](https://kubernetes.io/docs/concepts/cluster-administration/cloud-providers/).  I am using [IBM Cloud Kubernetes service](https://cloud.ibm.com/kubernetes/catalog/cluster) 


### Installing

1. Installing Docker :- Please refer to the following [document](https://docs.docker.com/install/) for Docker installation.
2. Signing up to cloud. [IBM Cloud](https://cloud.ibm.com/docs/account?topic=account-signup) , [Azure](https://azure.microsoft.com/en-in/get-started/webinar/), [AWS](https://aws.amazon.com/getting-started/) and [GCP](https://cloud.google.com/gcp/getting-started).
3. Creating Kubernetes service [IBM Cloud Kubernetes Service](https://cloud.ibm.com/docs/containers?topic=containers-getting-started).
4. Refer to [IBM Cloud CLI](https://cloud.ibm.com/docs/cli?topic=cloud-cli-getting-started) for installing the IBM Cloud CLI on your machine.

## Deployment
###Building Containers
* Docker setup
```
    docker login
    #create a network in docker
    docker network create --subnet=172.18.0.0/16 <dock-servlet_default>
```
* MySQL Container
    1. Open dock-servlet/sql/Dockerfile.
    2. Here I used my own SQL file (dump.sql). Please use your own SQL file
    3. After that open Terminal and go to the Dockerfile location
    4. do the following commands
 ``` 
    > docker build -t <docker_usernamr>/repository_name:tag .
        Example: docker build -t  sarathchanda24/mysql:latest .
    > docker run --net <dock-servlet_default> --ip <172.18.0.6> -p 9306:3306 --name sarath-sql <sarathchandra24>/<mysql>:<latest>
 ```
**Please note the IP address and this is the same IP for the Mysql in Docker network and Paste it in src/dbs/CredentialsOfDataBase.java** 
* Tomcat  
 
## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
