# Day 27 of #90DaysOfDevOps

# Tasks

1. Create a docker-integrated Jenkins declarative pipeline
2. Use the above-given syntax using sh inside the stage block
3. Create a docker-integrated Jenkins declarative pipeline using the docker groovy syntax inside the stage block.

Follow the steps below to create a distributed Jenkins pipeline integrating docker.

1. Create a job in Jenkins, give name, and choose pipeline
	
	![1](https://i.ibb.co/ctZnWXZ/1-day27.png)

2. Scroll down, find pipeline section, write the code given below and save the file.
	
	``` 
	pipeline {
		agent any
		stages {
			stage('Build & Deploy') {
				steps {
					sh 'docker run -d -p 80:80 nginx:alpine'
				}
			}
		}
	}
	```
	
	![2](https://i.ibb.co/Yjp8dv7/4-day27.png)
   
3. Click on Build Now.
	
	![3](https://i.ibb.co/3FDZ75K/3-day27.png)

4. Pipeline successful. You can check in the stage view.

	![4](https://i.ibb.co/hXKzx46/5-day27.png)

5. Check console log output.

	![5](https://i.ibb.co/QP49V3d/6-day27.png)

6. Application(nginx) is live on ip address.
	
	![6](https://i.ibb.co/sRQSkqH/7-day27.png)

This is how the docker is integrated with declarative Jenkins pipeline.

# Contact

Neel Soni - [@sonineelp](https://twitter.com/sonineelp) - [sonineep@gmail.com](mailto:sonineep@gmail.com) - [https://www.linkedin.com/in/sonineelp](https://www.linkedin.com/in/sonineelp) 

<div align="right">
  (<a href="#Day-27-of-90DaysOfDevOps">back to top</a>)
</div>
