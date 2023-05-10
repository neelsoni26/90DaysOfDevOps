# Day 22

## Task 1:

 1. Create a new Jenkins freestyle project for your app.
 2. In the "Build" section of the project, add a build step to run the "docker build" command to build the image for the container.
 3. Add a second step to run the "docker run" command to start a container using the image created in step 2.

### Solutions:

 1. Create a new Jenkins freestyle project for your app.
	 ![task-1.1](https://i.ibb.co/Dzsx51C/Screenshot-from-2023-05-10-20-05-39.png)
	 
2. In the "Build" section of the project, add a build step to run the "docker build" command to build the image for the container.
	i. Add description and give project url in github section.
	![task 1.2.1](https://i.ibb.co/4T3qXCL/Screenshot-from-2023-05-10-20-19-06.png)

	ii. In Source Code Management again add github repo url and enter branch.
	![task 1.2.2](https://i.ibb.co/rHxKx8P/Screenshot-from-2023-05-10-20-23-26.png)

	iii. In Build Steps, choose Execute shell and enter docker command.
		
		

    sudo docker build -t node-todo-image . 
		
![task 1.2.3](https://i.ibb.co/xFxzLBz/Screenshot-from-2023-05-10-20-37-51.png)

3. Add a second step to run the "docker run" command to start a container using the image created in step 2.
	i. Write run command.
	

    sudo docker run --name node-todo-app -d -p 80:80 node-todo-image
	![Task 3.1](https://i.ibb.co/sVTJq6P/Screenshot-from-2023-05-10-20-40-54.png)
	ii. Click on Save and build the code.
		

    echo -e "\n\nCode has been cloned.\n\n"
echo -e "\n\nBuilding docker image from dockerfile...\n\n"
sudo docker build -t node-todo-image .
echo -e "\n\nCode has been build.\n\n"
echo -e "\n\nRunnig docker container...\n\n"
sudo docker run --name node-todo-app -d -p 80:80 node-todo-image
echo -e "\n\nCode has been Deployed\n\n"

	If you got an error with sudo and Jenkins, then add Jenkins to sudoers and restart the system. 

	![task 3.2](https://i.ibb.co/grm5tbQ/Screenshot-from-2023-05-10-21-14-23.png)

	![task 3.2.1](https://i.ibb.co/MpSctgH/Screenshot-from-2023-05-10-21-14-59.png)


## Task 2:

1. Create Jenkins project to run "docker-compose up -d" command to start the multiple containers defined in the compose file (Hint- use day-19 Application & Database docker-compose file)
2. Set up a cleanup step in the Jenkins project to run "docker-compose down" command to stop and remove the containers defined in the compose file.

### Solution:
1. Create Jenkins project to run "docker-compose up -d" command to start the multiple containers defined in the compose file (Hint- use day-19 Application & Database docker-compose file)
	i. On the same project, go to the configure tab and change the commands.
	

    sudo docker-compose up -d
    
	ii. Click on save and build now.
	![task 2.1](https://i.ibb.co/bmwPfQw/Screenshot-from-2023-05-10-21-33-15.png)
![task 2.2](https://i.ibb.co/xXtvxPW/Screenshot-from-2023-05-10-21-34-37.png)

![enter image description here](https://i.ibb.co/qgbVdTn/Screenshot-from-2023-05-10-21-45-30.png)
	iii. Set up a cleanup step in the Jenkins project to run "docker-compose down" command to stop and remove the containers defined in the compose file.
	Add a line in shell script: sudo docker-compose down
	![](https://i.ibb.co/0YXd9Mn/Screenshot-from-2023-05-10-21-42-51.png)
	ix. Save and build the project.
	![](https://i.ibb.co/3Bx8N8w/Screenshot-from-2023-05-10-21-40-08.png)

![](https://i.ibb.co/M95j2Ck/Screenshot-from-2023-05-10-21-44-26.png)

x. Check in the system.
![](https://i.ibb.co/mywVJ9K/Screenshot-from-2023-05-10-21-46-22.png)

---
Thank you for being till the end.

You can follow me on LinkedIn: https://www.linkedin.com/in/sonineelp
