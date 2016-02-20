# What is this all about?

Packer is a tool for creating virtual machines for different platforms. Here, we use it to create our own Vagrant base box, starting from a fresh Ubuntu ISO and adding our favorite development tools (Java, node, docker, etc.).

The main benefit in our case (preparing a VM that students can use for their labs), compared to doing provisioning with Vagrant, is that students have to only done one big download. With Vagrant, they need to download the base box. Then download all the packages. Then download all the Docker images. When using a WIFI network in a big classroom, it is a PITA.

# TLDR;

1. Bump the version in the `template.ubuntu.15.10.b.json`file.
1. Log into your Atlas account and generate a token ([here](https://atlas.hashicorp.com/settings/tokens))
2. Use this command to set your token your environment:

   ```export ATLAS_TOKEN="xxx your token xxxxxxxx"```

2. Use this command to push the Packer template to atlas. The build will be done on that SaaS platform (which means that the download and the upload of large ISO files will be much faster than on your home machine):

   ```packer push -name oliechti/labbox2016b template.ubuntu.15.10.b.json```
   
3. Check the build status on atlas ([here](https://atlas.hashicorp.com/oliechti/build-configurations/labbox2016b)). The build time should be a bit less than 15 minutes.

4. Don't be surprised if the console seems to be stuck at `==> virtualbox-iso: Waiting for SSH to become available...`. This step can take a while.

5. Validate your installation by doing a

 ```
 vagrant init oliechti/labbox2016b
 vagrant up
 vagrant ssh
 ```



