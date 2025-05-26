# Part 1. Настройка gitlab-runner

### Подними виртуальную машину Ubuntu Server 22.04 LTS.

![part1_1](images/part1_1.png)

### Скачай и установи на виртуальную машину gitlab-runner.

```
https://docs.gitlab.com/runner/install/linux-manually.html
```
![part1_2](images/part1_2.png)

### Запусти gitlab-runner и зарегистрируй его для использования в текущем проекте (DO6_CICD).

![part1_3](images/part1_3.png)


![part1_4](images/part1_4.png)

![part1_5](images/part1_5.png)

```
sudo apt install make
sudo apt install gcc
sudo apt install clang-format
```

# Part 2. Сборка

### Напиши этап для CI по сборке приложений из проекта C2_SimpleBashUtils: в файле gitlab-ci.yml добавь этап запуска сборки через мейк файл из проекта C2. Файлы, полученные после сборки (артефакты), сохрани в произвольную директорию со сроком хранения 30 дней.

![part2_1](images/part2_1.png)

![part2_2](images/part2_2.png)

![part2_3](images/part2_3.png)

![part2_4](images/part2_4.png)

![part2_5](images/part2_5.png)

![part2_6](images/part2_6.png)

![part2_7](images/part2_7.png)

# Part 3. Тест кодстайла

### Напиши этап для CI, который запускает скрипт кодстайла (clang-format). Если кодстайл не прошел, то «зафейли» пайплайн. В пайплайне отобрази вывод утилиты clang-format.

![part3_1](images/part3_1.png)

![part3_2](images/part3_2.png)

# Part 4. Интеграционные тесты

### Напиши этап для CI, который запускает твои интеграционные тесты из того же проекта. Запусти этот этап автоматически только при условии, если сборка и тест кодстайла прошли успешно. Если тесты не прошли, то «зафейли» пайплайн. В пайплайне отобрази вывод, что интеграционные тесты успешно прошли / провалились.

![part4_1](images/part4_1.png)

![part4_2](images/part4_2.png)

# Part 5. Этап деплоя

### Подними вторую виртуальную машину Ubuntu Server 22.04 LTS.

![part5_1](images/part5_1.png)

![part5_2](images/part5_2.png)

![part5_3](images/part5_3.png)

![part5_4](images/part5_4.png)

![part5_5](images/part5_5.png)

![part5_6](images/part5_6.png)

![part5_7](images/part5_7.png)

### Напиши этап для CD, который «разворачивает» проект на другой виртуальной машине. Запусти этот этап вручную при условии, что все предыдущие этапы прошли успешно. Напиши bash-скрипт, который при помощи ssh и scp копирует файлы, полученные после сборки (артефакты), в директорию /usr/local/bin второй виртуальной машины. В файле gitlab-ci.yml добавь этап запуска написанного скрипта. В случае ошибки «зафейли» пайплайн.

![part5_8](images/part5_8.png)

![part5_9](images/part5_9.png)

## Зададим нужные привилегии пользователю gitlab-runner - добавим его в группу sudo и разрешим запуск команд без пароля, выполнив команду:

```
sudo usermod -aG sudo gitlab-runner
```

### Меняем строки в файле /etc/sudoers, используя команду:

``` 
sudo visudo
```

![part5_10](images/part5_10.png)

![part5_11](images/part5_11.png)

### Перезапускаем сервер ssh выполнив команду:
```
sudo service ssh restart
```

### На первой машине генерируем ключ sudo -u root ssh-keygen

![part5_12](images/part5_12.png)

### Скопируем его на вторую машину командой

![part5_13](images/part5_13.png)

![part5_14](images/part5_14.png)

![part5_15](images/part5_15.png)

![part5_16](images/part5_16.png)

### Сохрани дампы образов виртуальных машин.

![part5_17](images/part5_17.png)

# Part 6. Дополнительно. Уведомления

### Настрой уведомления об успешном/неуспешном выполнении пайплайна через бота с именем «[твой nickname] DO6 CI/CD» в Telegram.

![part6_1](images/part6_1.png)

![part6_2](images/part6_2.png)