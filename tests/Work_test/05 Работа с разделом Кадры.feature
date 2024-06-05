﻿#language: ru

@tree

Функционал: 05 Работа с разделом "Кадры"

Как системный программист я хочу
провести работу с разделом "Кадры"
чтобы проверить, что всё работает корректно

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 01 Создание нового сотрудника
	* Создание сотрудника
		И В командном интерфейсе я выбираю 'Кадры' 'Сотрудники'
		Тогда открылось окно 'Сотрудники'
		И я нажимаю на кнопку с именем 'Создать'
		Тогда открылось окно 'Сотрудник (создание)'
		И я нажимаю на кнопку с именем 'ИзменитьФИО'
		Тогда открылось окно 'Смена ФИО'
		И в поле с именем 'Фамилия' я ввожу текст 'ВА'
		И в поле с именем 'Имя' я ввожу текст 'Тестировщик'
		И в поле с именем 'Отчество' я ввожу текст '1'
		И я нажимаю на кнопку с именем 'ОК'
		Тогда открылось окно 'Сотрудник (создание) *'
		И в поле с именем 'ФизлицоДатаРождения' я ввожу текст '06062002'
		И из выпадающего списка с именем "ФизлицоПол" я выбираю точное значение 'Мужской'
		И я нажимаю на кнопку с именем 'КомандаЗаписать'
		Тогда открылось окно 'ВА Тестировщик * (Сотрудник)'
		И я нажимаю на кнопку с именем 'КнопкаНовогоОформитьПриемНаРаботу'
		Тогда открылось окно 'Прием на работу (создание)'
		И из выпадающего списка с именем "Подразделение" я выбираю по строке 'Сектор дежурной службы'
		И из выпадающего списка с именем "ПозицияШтатногоРасписания" я выбираю по строке 'Эксперт, 2 категория /Сектор дежурной службы/'
		И я изменяю флаг с именем 'ОтразитьВТрудовойКнижке'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '501'
		И я нажимаю на кнопку с именем 'КомандаПровестиИЗакрыть'
		И я жду закрытия окна 'Прием на работу (создание) *' в течение 20 секунд
		Тогда открылось окно 'ВА Тестировщик * (Сотрудник)'
		И я нажимаю на кнопку с именем 'КомандаЗаписатьИЗакрыть'
		И я жду закрытия окна 'ВА Тестировщик * (Сотрудник)' в течение 20 секунд
		Тогда открылось окно 'Сотрудники'
		И Я закрываю окно 'Сотрудники'
	* Проверка заполнения данных
		И В командном интерфейсе я выбираю 'Кадры' 'Сотрудники'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И в поле с именем 'Pattern' я ввожу текст 'ВА Тестировщик 1'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'	
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Сотрудники'
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "ГоловнаяОрганизация" стал равен 'Крон-Ц'
		И элемент формы с именем "ГрафикРаботы" стал равен 'Пятидневка'
		И элемент формы с именем "Имя" стал равен 'Тестировщик'
		И элемент формы с именем "Отчество" стал равен '1'
		И элемент формы с именем "ПлановыйАванс" стал равен 'Расчет первой половины месяца'
		И элемент формы с именем "СотрудникНаименование" стал равен 'ВА Тестировщик 1'
		И элемент формы с именем "ТекущаяДолжность" стал равен 'Эксперт'
		И элемент формы с именем "ТекущаяДолжностьПоШтатномуРасписанию" стал равен 'Эксперт, 2 категория /Сектор дежурной службы/'
		И элемент формы с именем "ТекущаяОрганизация" стал равен 'Крон-Ц'
		И у элемента формы с именем "ТекущаяТарифнаяСтавка" текст редактирования стал равен '25 000,00'
		И элемент формы с именем "ТекущееПодразделение" стал равен 'Сектор дежурной службы'
		И элемент формы с именем "ТекущийВидДоговора" стал равен 'Трудовой договор'
		И элемент формы с именем "ТекущийВидЗанятости" стал равен 'Основное место работы'
		И элемент формы с именем "Фамилия" стал равен 'ВА'
		И у элемента формы с именем "ФизлицоДатаРождения" текст редактирования стал равен '06.06.2002'
		И элемент формы с именем "ФизлицоПол" стал равен 'Мужской'
		И элемент формы с именем "ФИО" стал равен 'ВА Тестировщик 1'
		Когда открылось окно 'ВА Тестировщик * (Сотрудник)'
		И Я закрываю окно 'ВА Тестировщик * (Сотрудник)'
		Тогда открылось окно 'Сотрудники'
		И Я закрываю окно 'Сотрудники'

	Сценарий: 02 Приём на работу
		* Проверка заполнения данных
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
			И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И в таблице "Список" я выбираю текущую строку
			И элемент формы с именем "ВидДоговора" стал равен 'Трудовой договор'
			И элемент формы с именем "ВидЗанятости" стал равен 'Основное место работы'
			И элемент формы с именем "ВидТарифнойСтавки" стал равен 'Месячная тарифная ставка'
			И элемент формы с именем "График" стал равен 'Пятидневка'
			И элемент формы с именем "Грейд" стал равен 'Грейд 1'
			И у элемента формы с именем "ДлительностьИспытательногоСрока" текст редактирования стал равен '0,0'
			И элемент формы с именем "Должность" стал равен 'Эксперт'
			И элемент формы с именем "КоличествоСтавок" стал равен '1'
			И элемент формы с именем "Комментарий" стал равен 'VA-тестирование'
			И элемент формы с именем "НадписьПраваНаОтпуск" стал равен 'Имеет право на ежегодные отпуска: Основной (28) дн., За интенсивный труд и ответственность (7) дн. '
			И элемент формы с именем "НаименованиеДокумента" стал равен 'Приказ'
			И у элемента формы с именем "НачислениеИтогРазмерГлавное" текст редактирования стал равен '25 000,00'
			И элемент формы с именем "Номер" стал равен ' 501'
			И элемент формы с именем "Организация" стал равен 'Крон-Ц'
			И элемент формы с именем "Подразделение" стал равен 'Сектор дежурной службы'
			И элемент формы с именем "ПозицияШтатногоРасписания" стал равен 'Эксперт, 2 категория /Сектор дежурной службы/'
			И элемент формы с именем "Сотрудник" стал равен 'ВА Тестировщик 1'
			И элемент формы с именем "УсловияПриема" стал равен 'Основное место работы, полная занятость'
			И Я закрываю окно 'Прием на работу * от *'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'	
								
	Сценарий: 03 Кадровый перевод
		* Создание
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И я нажимаю на кнопку с именем 'СоздатьДокумент1'
			Тогда открылось окно 'Кадровый перевод (создание)'
			И в поле с именем 'Номер' я ввожу текст '           '
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Кадровый перевод (создание)'
			И в поле с именем 'Номер' я ввожу текст '503'
			И из выпадающего списка с именем "Сотрудник" я выбираю по строке 'ВА Тестировщик 1'
			И я изменяю флаг с именем 'ИзмениласьПозиция'
			И из выпадающего списка с именем "ПозицияШтатногоРасписания" я выбираю по строке 'Эксперт, 1 категория /Сектор дежурной службы/'
			И я изменяю флаг с именем 'ОтразитьВТрудовойКнижке'
			И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование3'
			И я нажимаю на кнопку с именем 'КомандаПровестиИЗакрыть'
			И я жду закрытия окна 'Кадровый перевод (создание) *' в течение 20 секунд
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'
		* Проверка заполнения данных
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
			И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование3'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И в таблице "Список" я выбираю текущую строку
			И элемент формы с именем "ВидЗанятости" стал равен 'Основное место работы'
			И элемент формы с именем "ВидТарифнойСтавки" стал равен 'Месячная тарифная ставка'
			И элемент формы с именем "График" стал равен 'Пятидневка'
			И элемент формы с именем "Грейд" стал равен 'Грейд 1'
			И элемент формы с именем "Должность" стал равен 'Эксперт'
			И элемент формы с именем "ИзмениласьПозиция" стал равен 'Да'
			И элемент формы с именем "ИзменилисьНачисления" стал равен 'Да'
			И элемент формы с именем "ИзменилсяГрафик" стал равен 'Нет'
			И элемент формы с именем "КоличествоСтавок" стал равен '1'
			И элемент формы с именем "Комментарий" стал равен 'VA-тестирование3'
			И элемент формы с именем "НаименованиеДокумента" стал равен 'Приказ'
			И у элемента формы с именем "НачисленияИтогРазмер" текст редактирования стал равен '30 000,00'
			И элемент формы с именем "НачисленияУтверждены" стал равен 'Да'
			И элемент формы с именем "Номер" стал равен ' 503'
			И элемент формы с именем "Организация" стал равен 'Крон-Ц'
			И элемент формы с именем "Подразделение" стал равен 'Сектор дежурной службы'
			И элемент формы с именем "ПозицияКомментарий" стал равен 'Ранее сотрудник занимал должность \"Эксперт, 2 категория /Сектор дежурной службы/\"'
			И элемент формы с именем "ПозицияШтатногоРасписания" стал равен 'Эксперт, 1 категория /Сектор дежурной службы/'
			И элемент формы с именем "Сотрудник" стал равен 'ВА Тестировщик 1'
			И Я закрываю окно 'Кадровый перевод * от *'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'

	Сценарий: 04 Влияние кадрового перевода на сотрудника
		* Проверка взаимосвязи кадрового перевода и состояния сотрудника
			И В командном интерфейсе я выбираю 'Кадры' 'Сотрудники'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Имя'	
			И в поле с именем 'Pattern' я ввожу текст 'ВА Тестировщик 1'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Сотрудники'
			И в таблице "Список" я выбираю текущую строку
			И элемент формы с именем "ГоловнаяОрганизация" стал равен 'Крон-Ц'
			И элемент формы с именем "ГрафикРаботы" стал равен 'Пятидневка'
			И элемент формы с именем "Имя" стал равен 'Тестировщик'
			И элемент формы с именем "Отчество" стал равен '1'
			И элемент формы с именем "СотрудникНаименование" стал равен 'ВА Тестировщик 1'
			И элемент формы с именем "ТекущаяДолжность" стал равен 'Эксперт'
			И элемент формы с именем "ТекущаяДолжностьПоШтатномуРасписанию" стал равен 'Эксперт, 1 категория /Сектор дежурной службы/'
			И элемент формы с именем "ТекущаяОрганизация" стал равен 'Крон-Ц'
			
			И у элемента формы с именем "ТекущаяТарифнаяСтавка" текст редактирования стал равен '30 000,00'
			И элемент формы с именем "ТекущееПодразделение" стал равен 'Сектор дежурной службы'
			И элемент формы с именем "ТекущийВидДоговора" стал равен 'Трудовой договор'
			И элемент формы с именем "ТекущийВидЗанятости" стал равен 'Основное место работы'
			И элемент формы с именем "Фамилия" стал равен 'ВА'
			И у элемента формы с именем "ФизлицоДатаРождения" текст редактирования стал равен '06.06.2002'
			И элемент формы с именем "ФизлицоПол" стал равен 'Мужской'
			И элемент формы с именем "ФИО" стал равен 'ВА Тестировщик 1'
			И Я закрываю окно 'ВА Тестировщик * (Сотрудник)'
			Тогда открылось окно 'Сотрудники'
			И Я закрываю окно 'Сотрудники'

	Сценарий: 05 Увольнение сотрудника
		* Создание
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И я нажимаю на кнопку с именем 'СоздатьДокумент3'
			Тогда открылось окно 'Увольнение (создание)'
			И я нажимаю кнопку выбора у поля с именем "ПериодРегистрации"
			Тогда открылось окно 'Выбор периода'
			И я нажимаю на кнопку с именем 'КомандаМесяц06'
			И я нажимаю на кнопку с именем 'КомандаВыбрать'
			Тогда открылось окно 'Увольнение (создание) *'
			И в поле с именем 'Номер' я ввожу текст '           '
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Увольнение (создание) *'
			И в поле с именем 'Номер' я ввожу текст '505'
			И из выпадающего списка с именем "Сотрудник" я выбираю по строке 'ВА Тестировщик 1'
			И из выпадающего списка с именем "ОснованиеУвольнения" я выбираю по строке 'п. 8 ч. 1 ст. 77 (Отсутствие)'
			И я изменяю флаг с именем 'ОтразитьВТрудовойКнижке'
			И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование5'
			И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
			И я жду закрытия окна 'Увольнение (создание) *' в течение 20 секунд
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'
		* Проверка заполнения данных
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
			И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование5'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			И в таблице "Список" я выбираю текущую строку
			И элемент формы с именем "ДокументРассчитан" стал равен 'Да'
			И элемент формы с именем "Комментарий" стал равен 'VA-тестирование5'
			И элемент формы с именем "МесяцНачалаРасчетовСтрокой" стал равен 'Июнь 2024'
			И элемент формы с именем "НаименованиеДокумента" стал равен 'Приказ'
			И элемент формы с именем "НачисленоИтог" стал равен '1 578,95'
			И элемент формы с именем "НачисленоПрочее" стал равен '1 578,95'
			И элемент формы с именем "НачислитьЗарплату" стал равен 'Да'
			И элемент формы с именем "Номер" стал равен ' 505'
			И элемент формы с именем "Организация" стал равен 'Крон-Ц'
			И элемент формы с именем "ОрганизацияПодписиГлавныйБухгалтер" стал равен 'Солодовникова Мария Пахомовна'
			И элемент формы с именем "ОрганизацияПодписиГлавныйБухгалтерРасширеннаяПодсказка" стал равен 'Начальник управления – главный бухгалтер '
			И элемент формы с именем "ОснованиеУвольнения" стал равен 'п. 8 ч. 1 ст. 77 (Отсутствие)'
			И элемент формы с именем "ОтразитьВТрудовойКнижке" стал равен 'Нет'
			И элемент формы с именем "Сотрудник" стал равен 'ВА Тестировщик 1'
			И Я закрываю окно 'Увольнение * от *'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'

	Сценарий: 06 Влияние увольнения на сотрудника
		* Проверка взаимосвязи увольнения и состояния сотрудника				
			И В командном интерфейсе я выбираю 'Кадры' 'Сотрудники'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Имя'	
			И в поле с именем 'Pattern' я ввожу текст 'ВА Тестировщик 1'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Сотрудники'
			И в таблице "Список" я выбираю текущую строку
			И элемент формы с именем "ГоловнаяОрганизация" стал равен 'Крон-Ц'
			И элемент формы с именем "ДатыПриемаУвольненияExtendedTooltip" стал равен 'Сотрудник уволен. Месяц, после которого не начисляется зарплата: Июнь 2024 г.'
			И элемент формы с именем "Имя" стал равен 'Тестировщик'
			И элемент формы с именем "Отчество" стал равен '1'
			И элемент формы с именем "СотрудникНаименование" стал равен 'ВА Тестировщик 1'
			И элемент формы с именем "Фамилия" стал равен 'ВА'
			И у элемента формы с именем "ФизлицоДатаРождения" текст редактирования стал равен '06.06.2002'
			И элемент формы с именем "ФизлицоПол" стал равен 'Мужской'
			И элемент формы с именем "ФИО" стал равен 'ВА Тестировщик 1'
			И Я закрываю окно 'ВА Тестировщик * (Сотрудник)'
			Тогда открылось окно 'Сотрудники'
			И Я закрываю окно 'Сотрудники'

	Сценарий: 07 Пометка увольнения на удаление										
		* Пометка на удаление 
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
			И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование5'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Увольнение * от *'
			И в поле с именем 'Комментарий' я ввожу текст 'VA-удалить'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			Тогда открылось окно 'Увольнение * от *'
			И Я закрываю окно 'Увольнение * от *'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'

	Сценарий: 08 Пометка кадрового перевода на удаление	
		* Пометка на удаление 
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
			И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование3'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Кадровый перевод * от *'
			И в поле с именем 'Комментарий' я ввожу текст 'VA-удалить'
			И я нажимаю на кнопку с именем 'КомандаЗаписать'
			Тогда открылось окно 'Кадровый перевод * от *'
			И Я закрываю окно 'Кадровый перевод * от *'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'

	Сценарий: 09 Пометка приёма на работу на удаление	
		* Пометка на удаление
			И В командном интерфейсе я выбираю 'Кадры' 'Приемы, переводы, увольнения'
			И я нажимаю сочетание клавиш "Alt+F"
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
			И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Прием на работу * от *'
			И в поле с именем 'Комментарий' я ввожу текст 'VA-удалить'
			И я нажимаю на кнопку с именем 'КомандаЗаписать'
			Тогда открылось окно 'Прием на работу * от *'
			И Я закрываю окно 'Прием на работу * от *'
			Тогда открылось окно 'Приемы на работу, переводы, увольнения'
			И Я закрываю окно 'Приемы на работу, переводы, увольнения'

	Сценарий: 10 Пометка сотрудника на удаление	
		* Пометка на удаление
			Когда в таблице "Сотрудники" я перехожу к строке:
				| 'Дата приема' | 'Должность'                                                          | 'Подразделение'                               | 'Таб. номер' | 'ФИО'                  |
				| '01.07.2016'  | 'Инженер, 1 категория /Отдел установки и эксплуатации оборудования/' | 'Отдел установки и эксплуатации оборудования' | '0000-00036' | 'Акопян Рубен Гезевич' |
			И я выбираю пункт контекстного меню с именем 'СотрудникиКонтекстноеМенюНайти' на элементе формы с именем "Сотрудники"																												
			Когда открылось окно 'Найти'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И в поле с именем 'Pattern' я ввожу текст 'ВА Тестировщик 1'
			И я нажимаю сочетание клавиш "Ctrl+Enter"
			И в таблице "Сотрудники" я активизирую поле с именем "СотрудникиНаименование"
			И в таблице "Начисления" я активизирую поле с именем "НачисленияМесяц"
			И я выбираю пункт контекстного меню с именем 'СотрудникиКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Сотрудники"
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'