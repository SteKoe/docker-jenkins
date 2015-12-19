docker run 	-d \
			-p 8080:8080 \
			-v $PWD/jenkins/jenkins_home:/var/jenkins_home \
            --name stekoe_jenkins \
            stekoe.de/jenkins