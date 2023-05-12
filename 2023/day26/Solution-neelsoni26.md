# Day 26 of #90DaysOfDevOps

# Task: Create a distributed Jenkins pipeline
Follow below steps to create a distributed pipeline

1. Create a job in Jenkins, give name, and choose pipeline
	
	![1](https://i.ibb.co/cw8f6Zq/task-26-1.png)

2. Scroll down, find pipeline section, write the code given below and save the file.
	
	``` 
	pipeline {
		agent any
		stages {
		stage('Code') {
				steps {
					echo "Code Copied!"
				}
			}
			stage('Build') {
				steps {
					echo "Code built!"
				}
			}
			stage('Test') {
				steps {
					echo "Code tested!"
				}
			}
			stage('Deploy') {
				steps {
					echo "Code deployed!"
				}
			}
		}
	}
	```
	
	![2](https://i.ibb.co/mXhgDr7/task-26-2.png)
   
3. Click on Build Now.
	
	![3](https://i.ibb.co/wWF3ndJ/task-26-3.png)

4. Pipeline successful. You can check in the stage view.

	![4](https://i.ibb.co/DLnsymb/task-26-4.png)

5. Check console log output.

	![5](https://i.ibb.co/Qbb7XSr/task-26-5.png)

This is how a declarative pipeline is made.

# Contact

Neel Soni - [@sonineelp](https://twitter.com/sonineelp) - [sonineep@gmail.com](mailto:sonineep@gmail.com) - [https://www.linkedin.com/in/sonineelp](https://www.linkedin.com/in/sonineelp) 

<div align="right">
  <a href="#readme-top">(back to top)</a>
</div>
