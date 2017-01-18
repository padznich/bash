sha-bang
    #! /bin/bash
    #! /bin/sh
    #! /bin/bin/python


#!/bin/rm
# Самоуничтожающийся сценарий.

: - синоним true
Бесконечный цикл
while :
do
   operation-1
   operation-2
   ...
   operation-n
done

# То же самое:
#    while true
#    do
#      ...
#    done

if condition
then :   # Никаких действий не производится и управление передается дальше
else
   take-some-action
fi


Использование неэкранированных или неокавыченных пробелов
внутри фигурных скобок недопустимо.

echo {file1,file2}\ :{\ A," B",' C'}






echo "username1 = ${username1-`whoami`}" # default value if exist
echo "username2 = ${username2:-`whoami`}" # default value anyway


$ q=
$ ${q?err_msg}
$ ${q:?err_msg}
bash: q: err_msg

$ ${w?}
bash: w: parameter null or not set
$ ${w}
$

# Удаление из переменной
# ${var#Pattern}, ${var##Pattern}  - с начала строки
# ${var%Pattern}, ${var%%Pattern}  - с конца строки
echo `basename $PWD`        # Имя текущего рабочего каталога.
echo "${PWD##*/}"           # Имя текущего рабочего каталога.
echo
echo `basename $0`          # Имя файла-сценария.
echo $0                     # Имя файла-сценария.
echo "${0##*/}"             # Имя файла-сценария.
echo
filename=test.data
echo "${filename##*.}"      # data
                            # Расширение файла.

____________________________________________________
Изменение расширений в именах файлов:

#!/bin/bash
# Изменение расширений в именах файлов.
#
#         rfe old_extension new_extension
#
# Пример:
# Изменить все расширения *.gif в именах файлов на *.jpg, в текущем каталоге
#          rfe gif jpg

ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
  echo "Порядок использования: `basename $0` old_file_suffix new_file_suffix"
  exit $E_BADARGS
fi

for filename in *.$1
# Цикл прохода по списку имен файлов, имеющих расширение равное первому аргументу.
do
  mv $filename ${filename%$1}$2
  #  Удалить первое расширение и добавить второе,
done

exit 0
____________________________________________________



Поиск по шаблону всех, ранее объявленных переменных,
имена которых начинаются c "H"

$ echo ${!H*}
$ echo ${!H@}

${var/#Pattern/Replacement}
Если в переменной var найдено совпадение с Pattern,
причем совпадающая подстрока расположена в начале
строки (префикс), то оно заменяется на Replacement.

${var/%Pattern/Replacement}
Если в переменной var найдено совпадение с Pattern,
причем совпадающая подстрока расположена в конце
строки (суффикс), то оно заменяется на Replacement.








