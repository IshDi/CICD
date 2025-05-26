#!/bin/bash

scp /home/gitlab-runner/builds/egV1_Swe/0/students/DO6_CICD.ID_356283/carlajyn_student.21_school.ru/DO6_CICD-1/src/s21_cat dinara@192.168.31.214:/usr/local/bin
scp /home/gitlab-runner/builds/egV1_Swe/0/students/DO6_CICD.ID_356283/carlajyn_student.21_school.ru/DO6_CICD-1/src/s21_grep dinara@192.168.31.214:/usr/local/bin/
ssh dinara@192.168.31.214 ls /usr/local/bin
# echo 
