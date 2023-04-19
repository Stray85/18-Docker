Задание:
1. Написать Dockerfile на базе apache/nginx который будет содержать две статичные web-страницы на разных портах. Например, 80 и 3000.
2. Пробросить эти порты на хост машину. Обе страницы должны быть доступны по адресам localhost:80 и localhost:3000
3. Добавить 2 вольюма. Один для логов приложения, другой для web-страниц.

Для сборки контейнера используем команду
docker build -t nginx .
Далее, запустим командой
docker run -d -p 80:80 -p 3000:3000 nginx
Указав через -p нужные порты.
Сервер будет досупен локально по адресам http://localhost:80 и http://localhost:3000 соотвсетсвенно. 