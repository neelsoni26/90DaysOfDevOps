# Solution by [neelsoni26](https://github.com/neelsoni26/)

Day 5 of #90daysofdevops

**Tasks:**

1. You have to do the same using Shell Script i.e using either Loops or command with start day and end day variables using arguments.
```shell
#!/bin/bash
filename=$1
start=$2
end=$3
echo -e "\n Creating directories..."
for ((i=$start; i<=$end; i++))
do
mkdir ${filename}${i}
done
echo -e "\n Directories created successfully!\n"
```

2. Create a Script to backup all your work done till now.
```shell
#!/bin/bash
src=/home/ubuntu/my_scripts/
trg=/home/ubuntu/script_backups
tar -cvzf $trg/$1.tar.gz $src
echo "Backup Success at $trg"
```

3. Cron and Crontab, to automate the backup Script
-> Cron is the system main scheduler for running jobs or tasks unattended. A command called crontab allows the user to submit, edit or delete entries to cron. A crontab file is a user file that holds the scheduling information.

4. User Management.
-> A user is an entity, in a Linux operating system, that can manipulate files and perform several other operations. Each user is assigned an ID that is unique for each user in the operating system. In this post, we will learn about users and commands which are used to get information about the users. After installation of the operating system, the ID 0 is assigned to the root user and the IDs 1 to 999 (both inclusive) are assigned to the system users and hence the ids for local user begins from 1000 onwards.

5. Create 2 users and just display their Usernames.
```shell
sudo useradd tappu
passwd tappu
```
```shell
sudo useradd jethalal
passwd jethalal
```
```shell
awk -F':' '{ print $1}' /etc/passwd | tail -2
```
