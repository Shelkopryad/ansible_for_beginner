Установить vagrant, ansible

Установить роль для запуска на виртуалке докера
```shell
ansible-galaxy install geerlingguy.docker
```
Запустить vagrant и (если не прошло) провизора
```shell
vagrant up
vagrant provision
```

Проверить на [localhost:7080]()
