# Solution by [neelsoni26](https://github.com/neelsoni26/)

Day 4 of #90daysofdevops

**Tasks:**

1. Explain in your own words and examples what is Shell Scripting for DevOps.
- Shell Scripting is a programming language that runs on Linux shell terminals. It is defined by .sh file extension. Programmers can execute various tasks with shell script such as printing, executing conditions, executing files.
 
2. What is #!/bin/bash? can we write #!/bin/sh as well?
- #!/bin/bash is known as shebang expression. It indicates the exact shell for execution. There are many shell executors like bash, sh, csh, perl, env. We can write #!/bin/sh it gives instructions to the program loader to perform program in sh shell.
 
3. Write a Shell Script which prints “I will complete #90DaysOofDevOps challenge.”
```sh
#!/bin/bash
echo “I will complete #90DaysOofDevOps challenge.”
```

4. Write a Shell Script to take user input, input from arguments and print the variables.
```sh
#!/bin/bash
echo "Input from usr arg is $1"
echo "Enter user input: "
read usrinput
echo "User has entered: $usrinput"
```
 
5. Write an Example of If else in Shell Scripting by comparing 2 numbers.
```sh
#!/bin/bash
if [ $1 -gt $2 ]
then
echo "$1 is greater than $2"
elif [ $1 -eq $2 ]
then
echo "$1 is equal than $2"
elif [ $1 -lt $2 ]
then
echo "$1 is less than $2"
else
echo "Enter valid input."
fi
```
