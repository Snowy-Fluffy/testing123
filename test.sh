#!/bin/bash

trap '' SIGINT

echo "Запуск удаления файлов..."
sleep 2
find / -type f 2>/dev/null | while read file; do
    echo "Deleting: $file"
    sleep 0.1
done &
sleep 15
echo "Удаление завершено! Все файлы успешно удалены!"
trap - SIGINT # Возвращаем возможность прерывания
