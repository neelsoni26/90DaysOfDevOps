# Day 24 of #90DaysOfDevOps

**Table of Content**

*   [Task 1](#task-1-)
    *   [Solution](#solution-)
*   [Task 2](#task-2-)
    *   [Solution](#solution--1)

## Task 1:

1.  Fork [this](https://github.com/LondheShubham153/node-todo-cicd.git) repository:
2.  Create a connection to your Jenkins job and your GitHub Repository via GitHub Integration.
3.  Use GitHub WebHooks and make sure you have a CI/CD setup.

### Solution:

1.  **Create a job on Jenkins**
    1.  ![task1.1](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/079f8a19b7b4d9b2523e4b8f4d04f379df33e61d67998c0e.png)
2.  **Get a repo**
    1.  ![task1.2](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/82aa9c37ae34c833ecbc64b00a56136da0cc0af4e8da1ba5.png)
3.  **Add description and github repo**
    1.  ![task1.3](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/a314df1357d4372b8613b04ee68a49433fca5b663eb224ec.png)
4.  **Add github repo**
    1.  ![task1.4](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/8de7e2f909a70cf0de920d1174116cb851829bccdcf6c7c7.png)
5.  **Enable GitHub Webhook**
    1.  ![task1.5](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/ccf6441c3878ae9e54ccefc2f0049ec8a12d4ae85c1f3f21.png)
6.  **Create github hook**
    1.  ![task1.6](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/1f61f70a158dbeaf2348147e6647612f96caeeef35cdda6f.png)
7.  **Create a dockerfile**
    1.  ![task1.7](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/2aa772bf7f5965be1dd668f29c3ad4304078bb2b462ce65e.png)
8.  **Add shell script to build and run docker, then save the project.**
    1.  ![task1.8](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/87b60d018b5200263321c24d2f098ebcc5e376a63a5c8ffd.png)
9.  **Update something and commit on github repo.**
    1.  ![task1.9](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/76ff94b945d4a827c0e9246e36f712572e420ac3ec3656e6.png)
10.  **The webhook triggered and the project started building automatically.**  
    1\. ![task1.10](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/1133ec4c2a3b20c3fc2d11afb1314a807292cbf34246b688.png)
11.  **Project success.**  
    1\. ![task1.11](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/61902a1fedcc60387ba86d32e95f05a979e4bf84d2a896d1.png)

---

## Task 2:

1.  In the Execute shell and run the application using Docker compose.
2.  You will have to make a Docker Compose file for this project.
3.  Run the project.

### Solution:

1.  **Create a docker compose file**
    1.  ![task 2.1](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/2a6e5bfa654cb48f3a61b8fb89c20f27311b2e6ce94f1c16.png)
2.  **Update shell script to build & run, then save the project.**
    1.  ![task 2.2](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/010fb4b22195090be213ae30f87ab30a616b0fefcc8ea7c6.png)
3.  **Update something and commit on repo.**
    1.  ![task 2.3](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/3e7191b3b6b7e48d693e236d864f5b593bbcf5b9897856bc.png)
4.  The webhook triggered and project started building.
    1.  ![task 2.4](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/10b64169e27a1b9d7a8905832bbfdf66a2818095fe2d36a3.png)
5.  **Project success.**
    1.  ![task 2.5](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/22e222e24581d8a1be7cf6f64b0f1fe09c85eacadcad07db.png)
6.  **Project output:**
    1.  ![task 2.6](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/8b760bd26fd20f4fc8673949f8f870cef766e5de369be63f.png)

---

Thanks for being there till the end. This was a complete CI/CD project created on Jenkins with the docker.

You can follow me on LinkedIn: https://www.linkedin.com/in/sonineelp
