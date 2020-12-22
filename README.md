# LPIC

## Условие задачи:

10.Найти все файлы в текущей дирректории, имена которых не прописаны в list.txt

## РЕШЕНИЕ

### Код скрипта:

#!/bin/bash

ls --hide temp_list.txt > temp_list.txt

sort temp_list.txt list.txt | uniq -u > sort_list.txt

sort temp_list.txt sort_list.txt | uniq -D | uniq

rm temp_list.txt

rm sort_list.txt

### Объяснения:

1) #!/bin/bash - синтаксис первой строки bash файла по-умолчанию

2) ls --hide temp_list.txt > temp_list.txt - Вывод списка файлов текущей директории в файл temp_list.txt, не указывая в нём само имя temp_list.txt

3) sort temp_list.txt list.txt | uniq -u > sort_list.txt - Сравнение файла temp_list.txt с файлом list.txt и вывод в файл sort_list.txt имён файлов, которые не повторяются при сравнении двух документов.

4) sort temp_list.txt sort_list.txt | uniq -D | uniq - Сравнение файла temp_list.txt с файлом sort_list.txt, выборка из них только повторяющихся имён и удаление дубликатов ПРИ ВЫВОДЕ.

5) rm temp_list.txt - Удаление файла temp_list.txt

6) rm sort_list.txt - Удаление файла sort_list.txt

#Приятный бонус

![Альтернативный текст](https://i.imgur.com/RPNBOA3.png)
