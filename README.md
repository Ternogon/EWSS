# EWSS Tool

![bnr-git-ewssbanner](https://user-images.githubusercontent.com/31628014/179772956-ea1972aa-4ff8-44d6-8bcb-63b83c567c00.png)

## О EWSS Tool
**EWSS** _(Easy Windows Server Setup Tool)_ — утилита для быстрой и удобной стартовой конфигурации и/или отладки ОС семейства Windows Server. Задачей проекта было написание «подручной» утилиты с возможностью изменять системные параметры не используя стандартный интерфейс ОС. Избавление от PS, BAT консолей и создание информативного интерфейса.


## Зависимости EWSS Tool

![ALT](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/PowerShell_5.0_icon.png/120px-PowerShell_5.0_icon.png?20151222103910 "Powershell")

Для работы всего функционала утилиты необходим Powershell. Большая часть команд и вызовов работает через Powershell. 


## Функционал кнопок быстрого доступа


Быстрый доступ необходим, когда у вас есть нестандартная задача, которую сложно уместить в функционал «одной кнопки». Важно понимать, что требования к конкретной ОС возникают в соответствии с задачей и условиями. Так, например, чтобы отредактировать параметры быстродействия ОС, в случае ограниченности в ресурсах, вам необходимо открыть соответствующие параметры. Чтобы их открыть приходится пройти по достаточно долгому пути из окошек. С EWSS это можно сделать одной кнопкой на панели быстрого доступа.


## Активатор EWSS Tool 🌐

⚠️ _Для работы требуется стабильное Интернет-подключение_ 🌐

Функционал активатора ОС использует KMS средства, что накладывает ограничения на использования в ОС с версиями `Eval`. Для их активации необходима конвертация ОС в `Retail`, как это осуществить будет здесь: `добавить ссылку`.

Для активации используется общий ключ продукта LTSC и LTSB версий ОС с [официального сайта Microsoft](https://docs.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys#windows-server-ltscltsb-versions). 

Активация не подразумевает использование виртуального сетевого адаптера и эмуляции KMS сервера. KMS сервера используемые для активации являются свободным ресурсом и ответственность за их предназначение лежит на их владельце.

### Тестирование EWSS 🔑 Активатора в ОС
| Отметка               | Статус                    |
|:---------------------:|---------------------------|
| :white_check_mark:    | Протестировано и работает |
| :black_square_button: | Тестирование не проводили |
| :x:                   | Не работает               |

  - **2022**
    - :white_check_mark: Windows Server 2022 Standart
    - :white_check_mark: Windows Server 2022 Datacenter
  - **2019**
    - :white_check_mark: Windows Server 2019 Datacenter
    - :white_check_mark: Windows Server 2019 Standard
    - :white_check_mark: Windows Server 2019 Essentials
  - **2016**
    - :white_check_mark: Windows Server 2016 Datacenter
    - :white_check_mark: Windows Server 2016 Standard
    - :black_square_button: Windows Server 2016 Essentials
  - **Windows Server, versions 20H2, 2004, 1909, 1903, and 1809**
    - :black_square_button: Windows Server Datacenter
    - :black_square_button: Windows Server Standard
  - **2012**
    - :white_check_mark: Windows Server 2012 R2 Standard
    - :white_check_mark: Windows Server 2012 R2 Datacenter
    - :black_square_button: Windows Server 2012 R2 Essentials
    - :black_square_button: Windows Server 2012
    - :black_square_button: Windows Server 2012 N
    - :black_square_button: Windows Server 2012 Single Language
    - :black_square_button: Windows Server 2012 Country Specific
    - :white_check_mark: Windows Server 2012 Standard
    - :black_square_button: Windows Server 2012 MultiPoint Standard
    - :black_square_button: Windows Server 2012 MultiPoint Premium
    - :white_check_mark: Windows Server 2012 Datacenter
  - **2008**
    - :x: Windows Server 2008 R2 Web
    - :x: Windows Server 2008 R2 HPC edition
    - :white_check_mark: Windows Server 2008 R2 Standard
    - :white_check_mark: Windows Server 2008 R2 Enterprise
    - :white_check_mark: Windows Server 2008 R2 Datacenter
    - :x: Windows Server 2008 R2 for Itanium-based Systems
    - :x: Windows Web Server 2008
    - :white_check_mark: Windows Server 2008 Standard
    - :x: Windows Server 2008 Standard without Hyper-V
    - :x: Windows Server 2008 Enterprise
    - :x: Windows Server 2008 Enterprise without Hyper-V
    - :x: Windows Server 2008 HPC
    - :x: Windows Server 2008 Datacenter
    - :x: Windows Server 2008 Datacenter without Hyper-V
    - :x: Windows Server 2008 for Itanium-Based Systems
