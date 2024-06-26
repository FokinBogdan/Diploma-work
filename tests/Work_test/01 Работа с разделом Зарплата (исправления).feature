﻿#language: ru

@позитивный

Функционал: 01 Работа с разделом "Зарплата"

Как системный программист я хочу
провести работу с разделом "Зарплата"
чтобы проверить, что всё проводится корректно     

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 01 Проведение документа "Табель"
	* Заполнение документа
		И В командном интерфейсе я выбираю 'Зарплата' 'Табели'
		Тогда открылось окно 'Табели'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Табель (создание)'
		И я нажимаю кнопку выбора у поля с именем "МесяцРегистрацииСтрокой"
		Тогда открылось окно 'Выбор периода'
		И я нажимаю на кнопку с именем 'КомандаМесяц05'
		И я нажимаю на кнопку с именем 'КомандаВыбрать'
		Тогда открылось окно 'Табель (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Организация"
		И из выпадающего списка с именем "Организация" я выбираю по строке 'Крон-Ц'
		И из выпадающего списка с именем "ПериодВводаДанныхОВремени" я выбираю точное значение 'Текущий месяц'
		И я нажимаю на кнопку с именем 'Заполнить'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование'
		И я перехожу к следующему реквизиту
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '101'		
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
		И я жду закрытия окна 'Табель (создание) *' в течение 20 секунд

	* Проверка заполнения данных
		Когда открылось окно 'Табели'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Табели'
		И в таблице "Список" я выбираю текущую строку
		И у элемента формы с именем "ДатаНачалаПериода" текст редактирования стал равен '01.05.2024'
		И у элемента формы с именем "ДатаОкончанияПериода" текст редактирования стал равен '31.05.2024'
		И элемент формы с именем "Комментарий" стал равен 'VA-тестирование'
		И элемент формы с именем "МесяцРегистрацииСтрокой" стал равен 'Май 2024'
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И элемент формы с именем "Ответственный" стал равен 'Савинская З.Ю. (Системный программист)'
		И элемент формы с именем "ПериодВводаДанныхОВремени" стал равен 'Текущий месяц'
		И элемент формы с именем "Подразделение" стал равен ''	
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'			
		Тогда открылось окно 'Табели'
		И Я закрываю окно 'Табели'

Сценарий: 02 Проведение документа "Начисление зарплаты и взносов"
	* Заполнение документа
		Когда я нажимаю на кнопку с именем 'Начислить'
		Тогда открылось окно 'Начисление зарплаты и взносов (создание)'
		И я нажимаю кнопку выбора у поля с именем "МесяцНачисленияСтрокой"
		Тогда открылось окно 'Выбор периода'
		И я нажимаю на кнопку с именем 'КомандаМесяц05'
		И я нажимаю на кнопку с именем 'КомандаВыбрать'
		Тогда открылось окно 'Начисление зарплаты и взносов (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Организация"
		И из выпадающего списка с именем "Организация" я выбираю по строке 'Крон-Ц'
		И я нажимаю на кнопку с именем 'Заполнить'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '102'
		И я нажимаю на кнопку с именем 'ПровестиИЗакрыть'
		И я жду закрытия окна 'Начисление зарплаты и взносов (создание) *' в течение 20 секунд
				
	* Проверка заполнения данных
		Когда я нажимаю на кнопку с именем 'ЖурналДокументовНачислениеЗарплатыОткрытьСписок'
		Тогда открылось окно 'Все начисления'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Все начисления'
		И в таблице "Список" я активизирую поле с именем "Месяц"
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "ИтогВзносы" стал равен '422 096,19'
		И элемент формы с именем "ИтогВзносыРасширеннаяПодсказка" стал равен 'Ед.тариф (до предела): 419 300,85 ОСС (несч. случ.):       2 795,34'
		И элемент формы с именем "ИтогНачислено" стал равен '1 397 669,47'
		И элемент формы с именем "ИтогНачисленоРасширеннаяПодсказка" стал равен 'зарплата: 1 382 669,47 льготы:      15 000,00'
		И элемент формы с именем "ИтогУдержано" стал равен '191 346,98'
		И элемент формы с именем "ИтогУдержаноРасширеннаяПодсказка" стал равен 'НДФЛ:      181 696,00 удержания:   9 650,98'
		И элемент формы с именем "Комментарий" стал равен 'VA-тестирование'
		И элемент формы с именем "МесяцНачисленияСтрокой" стал равен 'Май 2024'
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И у элемента формы с именем "ПланируемаяДатаВыплаты" текст редактирования стал равен '05.06.2024'
		И элемент формы с именем "ПорядокВыплаты" стал равен 'С зарплатой'
		И Я закрываю окно 'Начисление зарплаты и взносов 102 от *'
		Тогда открылось окно 'Все начисления'
		И Я закрываю окно 'Все начисления'	

Сценарий: 03. Заполнение и проведение документа "Отражение зарплаты в бухучете"
	* Заполнение документа
		И В командном интерфейсе я выбираю 'Зарплата' 'Отражение зарплаты в бухучете'
		Тогда открылось окно 'Отражение зарплаты в бухучете'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Отражение зарплаты в бухучете (создание)'
		И я нажимаю кнопку выбора у поля с именем "ПериодРегистрации"
		Тогда открылось окно 'Выбор периода'
		И я нажимаю на кнопку с именем 'КомандаМесяц05'
		И я нажимаю на кнопку с именем 'КомандаВыбрать'
		Тогда открылось окно 'Отражение зарплаты в бухучете (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Организация"
		И из выпадающего списка с именем "Организация" я выбираю по строке 'Крон-Ц'
		И я нажимаю на кнопку с именем 'Заполнить'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '103'
		И я нажимаю на кнопку с именем 'ПровестиИЗакрыть'
		И я жду закрытия окна 'Отражение зарплаты в бухучете (создание) *' в течение 20 секунд
		И Я закрываю окно 'Отражение зарплаты в бухучете'
				
	* Проверка заполнения данных
		И В командном интерфейсе я выбираю 'Зарплата' 'Отражение зарплаты в бухучете'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Отражение зарплаты в бухучете'
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "Комментарий" стал равен 'VA-тестирование'
		И таблица "НачисленнаяЗарплатаИВзносы" стала равной:
			| 'N'  | 'Сотрудник'                     | 'На несч.случ.' | 'Подразделение'                                    | 'Период принятия расходов' | 'Вид операции' | 'Способ отражения' | 'Статья расходов' | 'Сумма'     | 'Взносы по единому тарифу' | 'Вид начисления для налогового учета' |
			| '1'  | 'Акопян Рубен Гезевич'          | '61,00'         | 'Отдел установки и эксплуатации оборудования'      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '30 500,00' | '9 150,00'                 | 'пп.1, ст.255 НК РФ'                  |
			| '2'  | 'Базин Антон Владимирович'      | '131,00'        | 'Хозяйственно-эксплуатационное управление'         | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '3'  | 'Бальцер Герман Эдуардович'     | '131,00'        | 'Управление маркетинга и обслуживания клиентов'    | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '4'  | 'Булатов Игорь Виленович'       | '151,00'        | 'Руководство'                                      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '75 500,00' | '22 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '5'  | 'Ваньков Александр Матвеевич'   | '1,00'          | 'Отдел установки и эксплуатации оборудования'      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '500,00'    | '150,00'                   | 'пп.1, ст.255 НК РФ'                  |
			| '6'  | 'Ваньков Александр Матвеевич'   | '21,00'         | 'Хозяйственный отдел'                              | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '10 500,00' | '3 150,00'                 | 'пп.1, ст.255 НК РФ'                  |
			| '7'  | 'Ведов Максим Андреевич'        | '21,00'         | 'Хозяйственный отдел'                              | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '10 500,00' | '3 150,00'                 | 'пп.1, ст.255 НК РФ'                  |
			| '8'  | 'Войцехович Игорь Борисович'    | '8,15'          | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '4 074,78'  | '1 222,43'                 | ''                                    |
			| '9'  | 'Войцехович Игорь Борисович'    | '71,00'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '35 500,00' | '10 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '10' | 'Войцехович Игорь Борисович'    | '10,59'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '5 297,15'  | '1 589,15'                 | 'пп.3, ст.255 НК РФ'                  |
			| '11' | 'Волина Ирина Валерьевна'       | '71,00'         | 'Отдел по работе с персоналом'                     | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '35 500,00' | '10 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '12' | 'Волков Марат Савельевич'       | '131,00'        | 'Управление установки и эксплуатации оборудования' | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '13' | 'Габровская Светлана Марковна'  | '101,00'        | 'Сектор развития персонала'                        | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '50 500,00' | '15 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '14' | 'Гордина Елена Владимировна'    | '91,00'         | 'Отдел по работе с персоналом'                     | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '45 500,00' | '13 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '15' | 'Громова Надежда Петровна'      | '131,00'        | 'Отдел по работе с персоналом'                     | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '16' | 'Захаркин Савелий Петрович'     | '81,00'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '40 500,00' | '12 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '17' | 'Козьмин Глеб Матвеевич'        | '131,00'        | 'Управление обеспечения безопасности'              | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '18' | 'Кузьминых Борис Семенович'     | '101,00'        | 'Отдел автоматизированных систем и системного ПО'  | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '50 500,00' | '15 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '19' | 'Мартынюк Олег Егорович'        | '81,00'         | 'Отдел установки и эксплуатации оборудования'      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '40 500,00' | '12 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '20' | 'Матвиевский Григорий Маркович' | '8,62'          | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '4 307,64'  | '1 292,29'                 | ''                                    |
			| '21' | 'Матвиевский Григорий Маркович' | '75,00'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '37 500,00' | '11 250,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '22' | 'Матвиевский Григорий Маркович' | '11,20'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '5 599,85'  | '1 679,96'                 | 'пп.3, ст.255 НК РФ'                  |
			| '23' | 'Мейерсон Софья Карловна'       | '111,00'        | 'Сметно-штатный отдел'                             | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '55 500,00' | '16 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '24' | 'Милова Светлана Афанасьевна'   | '91,00'         | 'Отдел расчетов по оплате труда'                   | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '45 500,00' | '13 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '25' | 'Минчев Аристотель Борисович'   | '141,00'        | 'Руководство'                                      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '70 500,00' | '21 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '26' | 'Михейцева Наталия Анатольевна' | '5,46'          | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '2 728,66'  | '818,60'                   | ''                                    |
			| '27' | 'Михейцева Наталия Анатольевна' | '51,00'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '25 500,00' | '7 649,99'                 | 'пп.1, ст.255 НК РФ'                  |
			| '28' | 'Михейцева Наталия Анатольевна' | '6,66'          | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '3 328,90'  | '998,68'                   | 'пп.3, ст.255 НК РФ'                  |
			| '29' | 'Никаноров Егор Кириллович'     | '101,00'        | 'Отдел установки и эксплуатации оборудования'      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '50 500,00' | '15 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '30' | 'Орлова Елена Николаевна'       | '111,00'        | 'Отдел расчетов по оплате труда'                   | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '55 500,00' | '16 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '31' | 'Работкина Жанна Дмитриевна'    | '61,00'         | 'Отдел по работе с персоналом'                     | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '30 500,00' | '9 150,00'                 | 'пп.1, ст.255 НК РФ'                  |
			| '32' | 'Рязанова Елена Борисовна'      | '6,77'          | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '3 383,53'  | '1 015,06'                 | ''                                    |
			| '33' | 'Рязанова Елена Борисовна'      | '60,99'         | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '30 500,00' | '9 150,00'                 | 'пп.1, ст.255 НК РФ'                  |
			| '34' | 'Рязанова Елена Борисовна'      | '6,90'          | 'Сектор дежурной службы'                           | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '3 448,96'  | '1 034,69'                 | 'пп.3, ст.255 НК РФ'                  |
			| '35' | 'Савинская Зоя Юрьевна'         | '81,00'         | 'Отдел автоматизированных систем и системного ПО'  | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '40 500,00' | '12 150,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '36' | 'Солодовникова Мария Пахомовна' | '131,00'        | 'Управление бухгалтерского учета и отчетности'     | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '37' | 'Сорока Петр Максимович'        | '7,00'          | 'Отдел установки и эксплуатации оборудования'      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '3 500,00'  | '1 050,00'                 | ''                                    |
			| '38' | 'Сорока Петр Максимович'        | '71,00'         | 'Отдел установки и эксплуатации оборудования'      | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '35 500,00' | '10 650,00'                | 'пп.1, ст.255 НК РФ'                  |
			| '39' | 'Яцкив Андрей Эдуардович'       | '131,00'        | 'Юридический отдел'                                | '01.05.2024'               | 'Начислено'    | ''                 | 'ОТ'              | '65 500,00' | '19 650,00'                | 'пп.1, ст.255 НК РФ'                  |
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И элемент формы с именем "ПериодРегистрации" стал равен 'Май 2024'
		И Я закрываю окно 'Отражение зарплаты в бухучете 103 от *'
		Тогда открылось окно 'Отражение зарплаты в бухучете'
		И Я закрываю окно 'Отражение зарплаты в бухучете'

Сценарий: 04 Пометка документа "Табель" на удаление
	* Пометка на удаление
		И В командном интерфейсе я выбираю 'Зарплата' 'Табели'
		Тогда открылось окно 'Табели'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Табели'
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Табели'
		И Я закрываю окно 'Табели'

Сценарий: 05 Пометка документа "Начисление зарплаты и взносов" на удаление
	* Пометка на удаление
		Когда я нажимаю на кнопку с именем 'ЖурналДокументовНачислениеЗарплатыОткрытьСписок'
		Тогда открылось окно 'Все начисления'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Все начисления'
		И в таблице "Список" я активизирую поле с именем "Месяц"
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Все начисления'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Начисление зарплаты и взносов 102 от *'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-удалить'
		Когда открылось окно 'Начисление зарплаты и взносов 102 от *'
		И я нажимаю на кнопку с именем 'Записать'
		И Я закрываю окно 'Начисление зарплаты и взносов 102 от *'
		Тогда открылось окно 'Все начисления'
		И Я закрываю окно 'Все начисления'

Сценарий: 06 Пометка документа "Отражение зарплаты в бухучете" на удаление
	* Пометка на удаление
		И В командном интерфейсе я выбираю 'Зарплата' 'Отражение зарплаты в бухучете'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Отражение зарплаты в бухучете'
		И в таблице "Список" я активизирую поле с именем "Дата"
		И в таблице "Список" я активизирую поле с именем "ПериодРегистрации"
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Отражение зарплаты в бухучете'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Отражение зарплаты в бухучете 103 от *'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-удаление'
		И я нажимаю на кнопку с именем 'Записать'
		И Я закрываю окно 'Отражение зарплаты в бухучете 103 от *'
		Тогда открылось окно 'Отражение зарплаты в бухучете'
		И Я закрываю окно 'Отражение зарплаты в бухучете'
				