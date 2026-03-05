# Лабораторная работа №1
## Установка ОС Linux

**Студент:** Юсуф Абдулнасир Абубакар
**Группа:** [нкабд-06-25]  
**Дата:** 25 февраля 2026

---

## 1. Проверка SELinux
$ getenforce
Permissive

---

## 2. Установка Pandoc
$ sudo dnf install pandoc -y
*Pandoc установлен для работы с Markdown*

---

## 3. Установка Texlive
$ sudo dnf install texlive-scheme-basic -y
*Установлено 409 пакетов*

---

## 4. Настройка клавиатуры (US + RU)
Файл конфигурации: `~/.config/sway/config.d/95-system-keyboard-config.conf`
exec_always /usr/libexec/sway-systemd/locale1-xkb-config --oneshot

Файл X11: `/etc/X11/xorg.conf.d/00-keyboard.conf`

Section "InputClass"
Identifier "system-keyboard"
MatchIsKeyboard "on"
Option "XkbLayout" "us,ru"
Option "XkbVariant" "winkeys"
Option "XkbOptions" "grp:rctrl_toggle,compose:ralt,terminate:ctrl_alt_bksp"
EndSection


*Переключение раскладки работает по правому Ctrl*

---

## 5. Анализ dmesg

### Версия ядра
$ sudo dmesg | grep -i "Linux version"
[ 0.000000] Linux version 6.17.1-300.fc43.x86_64 ...

### Модель процессора
$ sudo dmesg | grep -i "CPU0"
[ 0.331778] CPU0: Intel(R) Core(TM) i5-5350U CPU @ 1.80GHz

### Гипервизор
$ sudo dmesg | grep -i "Hypervisor detected"
[ 0.000000] Hypervisor detected: KVM

### Информация о дисках

$ sudo dmesg | grep -i "sda"
[ 1.302079] sda: sda1 sda2 sda3

### Файловые системы
$ sudo dmesg | grep -i "filesystem"
[ 7.993763] BTRFS info: first mount of filesystem
[ 43.441832] EXT4-fs (sda2): mounted filesystem

### Монтирование
$ sudo dmesg | grep -i "mount"
[ 7.993763] first mount of filesystem
[ 19.552966] Mounting dev-hugepages.mount
[ 20.579448] Remount Root and Kernel File Systems

---

## 6. Выводы

В ходе лабораторной работы была установлена ОС Fedora, выполнена настройка системы, установлено необходимое ПО (pandoc, texlive), настроена клавиатура для переключения между английской и русской раскладками, а также проведен анализ загрузки системы с помощью команды dmesg.

Все задачи выполнены успешно.

---

## 7. Контрольные вопросы

[ответы на вопросы]
