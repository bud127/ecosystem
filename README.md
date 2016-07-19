#![Cloudogu logo](https://cloudogu.com/images/logo.png)
# Cloudogu ecosystem
https://cloudogu.com

This is the repository of the cloudogu ecosystem. It contains all docker containers, setup scripts and resources to install cloudogu on your machine and start it using vagrant.

### Quick start
* Install [vagrant](https://www.vagrantup.com/docs/getting-started/) on your machine
* Install [docker](https://www.docker.com/) too
* Checkout ecosystem repository
* Do one of the following steps:
  - Option 1: `vagrant up` to run ecosystem in a virtual machine
  - Option 2: `./install.sh` to deploy ecosystem on your machine
* Now you can access cloudogu via the web browser

### Development
* Startup mechanism:
  - Docker daemon is started on boot via the /etc/init/docker.conf Upstart script.
  - All docker containers are started (based on their dependencies) via /etc/init/ces-<name>.conf scripts
  - Containers which are marked as 'webapps' in their Dockerfile (via 'ENV SERVICE_TAGS webapp') are available via `http://<hostIP>/<containername>` after bootup.
* Go inside your running machine using `vagrant ssh`  

---
### What is Cloudogu?
Cloudogu is an open platform, which lets you choose how and where your team creates great software. Each service or tool is delivered as a [Dōgu](https://translate.google.com/?text=D%26%23x014d%3Bgu#ja/en/%E9%81%93%E5%85%B7), a Docker container, that can be easily integrated in your environment just by pulling it from our registry. We have a growing number of ready-to-use Dōgus, e.g. SCM-Manager, Jenkins, Nexus, SonarQube, Redmine and many more. Every Dōgu can be tailored to your specific needs. You can even bring along your own Dōgus! Take advantage of a central authentication service, a dynamic navigation, that lets you easily switch between the web UIs and a smart configuration magic, which automatically detects and responds to dependencies between Dōgus. Cloudogu is open source and it runs either on-premise or in the cloud. Cloudogu is developed by Cloudogu GmbH under [MIT License](https://cloudogu.com/license.html) and it runs either on-premise or in the cloud.

### How to get in touch?
Want to talk to the Cloudogu team? Need help or support? There are several ways to get in touch with us:

* [Website](https://cloudogu.com)
* [Mailing list](https://groups.google.com/forum/#!forum/cloudogu)
* [Email hello@cloudogu.com](mailto:hello@cloudogu.com)

---
&copy; 2016 Cloudogu GmbH - MADE WITH :heart: FOR DEV ADDICTS. [Legal notice / Impressum](https://cloudogu.com/imprint.html)
