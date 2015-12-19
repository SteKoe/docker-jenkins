# docker-jenkins
This is a custom Jenkins docker build which includes some plugins as well as the setup of an admin user.

## Configuration
If you want to install more plugins automatically, please revise the `plugin.txt` file. List one plugin per line in the format `pluginName[:version]`. Whenever the version number is not present, the latest version will be pulled.

The standard user is called `admin` having a password `admin`. If you want to customize these stetings, have a look at the file `admin-user.groovy` in the `init-scripts` folder. Each groovy script placed in this folder will be executed by Jenkins on startup.

## Usage
In Order to build the image for this dockerfile, execute the following code:

```
$ docker build -t <your_name>/jenkins .
```

When this command has been executed, you can run an instance of this image using the following command:

```
docker run 	-d \
			-p 8080:8080 \
			-v $PWD/jenkins_home:/var/jenkins_home \
            --name <custom_name> \
           	<your_name>jenkins
```

This will run a jenkins instance on port 8080. The `jenkins_home` directory can be mounted to the host machine using the flag `-v /path/on/host:/var/jenkins/home` as shown in the example above. 