docker run 	-d \
			-p 8080:8080 \
            -p 50000:50000 \
			-v $PWD/jenkins_home:/var/jenkins_home \
            -v $PWD/jenkins_backup:/var/jenkins_backup \
            --name stekoe_jenkins \
            --env JAVA_OPTS="-Dhudson.footerURL=http://www.stekoe.de -Xmx2048m" \
            stekoe.de/jenkins