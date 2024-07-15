# Используем официальный образ swagger-ui
FROM swaggerapi/swagger-ui

# Копируем ваш файл openapi.yaml в директорию /usr/share/nginx/html/swagger/
COPY openapi.yaml /usr/share/nginx/html/swagger/openapi.yaml

# Устанавливаем переменную среды для использования нашего файла
ENV SWAGGER_JSON=/usr/share/nginx/html/swagger/openapi.yaml
