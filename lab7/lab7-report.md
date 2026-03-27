# Лабораторная работа №7
## Анализ файловой системы Linux. Команды для работы с файлами и каталогами

**Студент:** Юсуф Абдулнасир Абубакар  
**Группа:** НКАБд-06-25  
**Дата:** 28 марта 2026 г.

---

## 1. Цель работы
Ознакомление с файловой системой Linux, её структурой, именами и содержанием каталогов. Приобретение практических навыков по применению команд для работы с файлами и каталогами, по управлению процессами (и работами), по проверке использования диска и обслуживанию файловой системы.

---

## 2. Выполнение работы

### 2.1 Создание рабочего каталога и файлов
```bash
$ cd ~
$ mkdir -p lab7
$ cd lab7
$ touch abc1
$ for i in {1..12}; do echo "Line $i" >> abc1; done
2.2 Просмотр содержимого файлов


$ cat abc1
$ head abc1
$ head -5 abc1
$ tail abc1
$ tail -3 abc1
$ less abc1
2.3 Копирование файлов

$ cp abc1 april
$ cp abc1 may
$ ls
abc1  april  may
2.4 Создание каталога и копирование нескольких файлов

$ mkdir monthly
$ cp april may monthly
$ ls monthly/
april  may
2.5 Копирование внутри каталога

$ cp monthly/may monthly/june
$ ls monthly/
april  june  may
2.6 Рекурсивное копирование каталогов

$ mkdir monthly.00
$ cp -r monthly monthly.00
$ ls monthly.00/
monthly
2.7 Перемещение и переименование файлов


$ mv april july
$ ls
abc1  july  may
$ mv july monthly.00/
$ ls monthly.00/
july  monthly
2.8 Переименование каталогов


$ mv monthly.00 monthly.01
$ ls
abc1  may  monthly  monthly.01
2.9 Изменение прав доступа

$ touch script.sh
$ ls -l script.sh
-rw-r--r--. 1 yusufabdulnasir yusufabdulnasir 0 Mar 28 00:30 script.sh

$ chmod u+x script.sh
$ ls -l script.sh
-rwxr--r--. 1 yusufabdulnasir yusufabdulnasir 0 Mar 28 00:30 script.sh

$ chmod u-x script.sh
$ ls -l script.sh
-rw-r--r--. 1 yusufabdulnasir yusufabdulnasir 0 Mar 28 00:30 script.sh

$ chmod 755 script.sh
$ ls -l script.sh
-rwxr-xr-x. 1 yusufabdulnasir yusufabdulnasir 0 Mar 28 00:30 script.sh

$ chmod 644 script.sh
$ ls -l script.sh
-rw-r--r--. 1 yusufabdulnasir yusufabdulnasir 0 Mar 28 00:30 script.sh
2.10 Анализ файловой системы


$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda3        13G  7.2G  5.8G  56% /
/dev/sda2       2.0G  143M  1.9G   7% /boot
/dev/sda1       1.0G   15M  986M   2% /boot/efi

$ mount
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
devtmpfs on /dev type devtmpfs (rw,nosuid,relatime,size=1966848k,nr_inodes=491712,mode=755)

$ cat /etc/fstab
UUID=c60da6ad-dd88-4126-b157-a871ee0753fd / btrfs subvol=root,compress=zstd:1 0 0
UUID=c0f9a893-d7db-4676-a6ef-e07d80ae7730 /boot ext4 defaults 1 2
UUID=A323-9902 /boot/efi vfat umask=0077,shortname=winnt 0 2
UUID=c60da6ad-dd88-4126-b157_a871ee0753fd /home btrfs subvol=home,compress=zstd:1 0 0
3. Выводы

В ходе лабораторной работы были приобретены практические навыки работы с командами для создания (touch), просмотра (cat, head, tail, less), копирования (cp), перемещения и переименования (mv) файлов и каталогов, а также изменения прав доступа (chmod). Выполнен анализ файловой системы с помощью команд df, mount и просмотра файла /etc/fstab. Все поставленные задачи выполнены успешно.

4. Контрольные вопросы

Какие команды используются для создания текстовых файлов?
touch filename — создает пустой файл, echo "text" > filename — создает файл с содержимым.
Как просмотреть содержимое файла постранично?
less filename — позволяет прокручивать файл постранично.
Как скопировать несколько файлов в каталог?
cp file1 file2 directory/ — копирует несколько файлов в указанный каталог.
Как скопировать каталог со всем содержимым?
cp -r source_dir destination_dir — рекурсивное копирование каталога.
Как переименовать файл?
mv oldname newname — переименовывает файл.
Как переместить файл в другой каталог?
mv filename directory/ — перемещает файл.
Что такое права доступа?
Права доступа определяют, кто может читать (r), записывать (w) или выполнять (x) файл. Права задаются для владельца (u), группы (g) и остальных (o).
Как изменить права доступа?
Символьно: chmod u+x file — добавляет выполнение для владельца.
Численно: chmod 755 file — устанавливает права rwxr-xr-x.
Как посмотреть использование диска?
df -h — показывает использование дискового пространства в удобном для чтения формате.
Как посмотреть смонтированные файловые системы?
mount — показывает все смонтированные файловые системы.
Где хранится конфигурация монтирования?
В файле /etc/fstab.
