﻿#language: ru

@tree

Функционал: 04 Регистрация периода болезни и ЛН

Как системный программист я хочу
провести работу с функционалом регистрации периода болезни и ЛН 
чтобы проверить, что всё работает корректно

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 01 Регистрация периода болезни
	* Регистрация периода
		И В командном интерфейсе я выбираю 'Кадры' 'Все отсутствия сотрудников'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруПрогулНеявка'
		Тогда открылось окно 'Отсутствие (болезнь, прогул, неявка) (создание)'
		И я нажимаю кнопку выбора у поля с именем "ПериодРегистрации"
		Тогда открылось окно 'Выбор периода'
		И я нажимаю на кнопку с именем 'КомандаМесяц05'
		И я нажимаю на кнопку с именем 'КомандаВыбрать'
		Тогда открылось окно 'Отсутствие (болезнь, прогул, неявка) (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Организация"
		И из выпадающего списка с именем "Организация" я выбираю по строке 'Крон-Ц'
		И из выпадающего списка с именем "Сотрудник" я выбираю по строке 'Базин Антон Владимирович'
		И в поле с именем 'ДатаНачала' я ввожу текст '10052024'
		И в поле с именем 'ДатаОкончания' я ввожу текст '17052024'
		И я меняю значение переключателя с именем 'ВариантыБолезнь' на 'Болезнь (больничный еще не закрыт)'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '401'
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
		И я жду закрытия окна 'Отсутствие (болезнь, прогул, неявка) (создание) *' в течение 20 секунд
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И Я закрываю окно 'Отпуска, командировки и другие отсутствия'
	* Проверка заполнения данных
		И В командном интерфейсе я выбираю 'Кадры' 'Все отсутствия сотрудников'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "ВидОтсутствия" стал равен 'Отсутствие по болезни (больничный еще не закрыт)'
		И у элемента формы с именем "ДатаНачала" текст редактирования стал равен '10.05.2024'
		И у элемента формы с именем "ДатаОкончания" текст редактирования стал равен '17.05.2024'
		И элемент формы с именем "Комментарий" стал равен 'VA-тестирование'
		И элемент формы с именем "НаименованиеПервичногоДокумента" стал равен ''
		И элемент формы с именем "НомерЛН" стал равен ''
		И элемент формы с именем "НомерПервичногоДокумента" стал равен ''
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И элемент формы с именем "ПерерасчетВыполнен" стал равен 'Да'
		И элемент формы с именем "ПериодРегистрации" стал равен 'Май 2024'
		И элемент формы с именем "Сотрудник" стал равен 'Базин Антон Владимирович'
		И Я закрываю окно 'Отсутствие (болезнь, прогул, неявка) 401 от *'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И Я закрываю окно 'Отпуска, командировки и другие отсутствия'

Сценарий: 02 Регистрация больничного листа
	* Создание ЛН
		И В командном интерфейсе я выбираю 'Кадры' 'Все отсутствия сотрудников'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруБольничныйЛист'
		Тогда открылось окно 'Больничный лист (создание)'
		И я нажимаю кнопку выбора у поля с именем "ПериодРегистрации"
		Тогда открылось окно 'Выбор периода'
		И я нажимаю на кнопку с именем 'КомандаМесяц05'
		И я нажимаю на кнопку с именем 'КомандаВыбрать'
		Тогда открылось окно 'Больничный лист (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Организация"
		И из выпадающего списка с именем "Организация" я выбираю по строке 'Крон-Ц'
		И из выпадающего списка с именем "Сотрудник" я выбираю по строке 'Базин Антон Владимирович'
		И в поле с именем 'ДатаНачала' я ввожу текст '10052024'
		И в поле с именем 'ДатаОкончания' я ввожу текст '17052024'
		И из выпадающего списка с именем "ПредставлениеПричиныНетрудоспособности" я выбираю точное значение '(01) Заболевание'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестированиеЛН'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '402'
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И Я закрываю окно 'Отпуска, командировки и другие отсутствия'
	* Проверка заполнения данных
		И В командном интерфейсе я выбираю 'Кадры' 'Все отсутствия сотрудников'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестированиеЛН'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "ВидОплатыЗаСчетРаботодателя" стал равен 'Оплата больничных листов за счет работодателя'
		И элемент формы с именем "ВидОплатыПособия" стал равен 'Больничный'
		И у элемента формы с именем "ДатаНачала" текст редактирования стал равен '10.05.2024'
		И у элемента формы с именем "ДатаНачалаОплаты" текст редактирования стал равен '10.05.2024'
		И у элемента формы с именем "ДатаНачалаСобытия" текст редактирования стал равен '10.05.2024'
		И у элемента формы с именем "ДатаОкончания" текст редактирования стал равен '17.05.2024'
		И у элемента формы с именем "ДатаОкончанияОплаты" текст редактирования стал равен '17.05.2024'
		И элемент формы с именем "ДокументРассчитан" стал равен 'Да'
		И элемент формы с именем "Комментарий" стал равен 'VA-тестированиеЛН'
		И элемент формы с именем "НадписьДнейОсвобожденияОтРаботы" стал равен '8 дней'
		И таблица "Начисления" стала равной:
			| 'N' | 'Оплачено часов' | 'Период'     | 'Начисление'                                    | 'Результат' | 'В том числе за счет федерального бюджета' | 'Отработано дней' | 'Оплачено дней' | 'Единица измерения времени' | 'Отработано часов' | 'Дата окончания' | 'Основание' |
			| '1' | ''               | '10.05.2024' | 'Оплата больничных листов за счет работодателя' | '1 897,83'  | ''                                         | ''                | '3,00'          | ''                          | ''                 | '12.05.2024'     | ''          |
			| '2' | ''               | '13.05.2024' | 'Больничный'                                    | '3 163,05'  | ''                                         | '5'               | '5,00'          | ''                          | '40'               | '17.05.2024'     | ''          |
		И элемент формы с именем "НачисленоИтог" стал равен '5 060,88'
		И элемент формы с именем "НачисленоРаботодатель" стал равен '1 897,83'
		И элемент формы с именем "НачисленоФСС" стал равен '3 163,05'
		И у элемента формы с именем "НДФЛ" текст редактирования стал равен '658,00'
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И элемент формы с именем "ПериодРегистрации" стал равен 'Май 2024'
		И у элемента формы с именем "ПланируемаяДатаВыплаты" текст редактирования стал равен '05.06.2024'
		И элемент формы с именем "Сотрудник" стал равен 'Базин Антон Владимирович'
		И Я закрываю окно 'Больничный лист 402 от *'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И Я закрываю окно 'Отпуска, командировки и другие отсутствия'

Сценарий: 03 Проверка отображения больничного в документе "Табель"
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
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестированиеЛН'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '403'
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
		И я жду закрытия окна 'Табель (создание) *' в течение 20 секунд
	* Проверка заполнения данных		
		И В командном интерфейсе я выбираю 'Зарплата' 'Табели'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестированиеЛН'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Табели'
		И в таблице "Список" я выбираю текущую строку
		И в таблице "ДанныеОВремени" я нажимаю на кнопку с именем 'ДанныеОВремениНайти'
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "Pattern" я выбираю по строке 'Базин Антон Владимирович'
		И я меняю значение переключателя с именем 'CompareType' на 'По началу строки'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		И таблица "ДанныеОВремени" стала равной:
			| '21\nВт' | '2\nЧт' | '№'  | '12\nВс' | '29\nСр' | '5\nВс' | 'Итого'                | '9\nЧт' | '19\nВс' | '7\nВт' | '4\nСб' | '13\nПн' | 'Сотрудник'                | '15\nСр' | '10\nПт' | '22\nСр' | '6\nПн' | '20\nПн' | '16\nЧт' | '31\nПт' | '23\nЧт' | '3\nПт' | '11\nСб' | '14\nВт' | '18\nСб' | '28\nВт' | '1\nСр' | '25\nСб' | '8\nСр' | '27\nПн' | '26\nВс' | '30\nЧт' | '17\nПт' | '24\nПт' |
			| 'Я 8'    | 'Я 8'   | '22' | 'Б '     | 'Я 8'    | 'В '    | 'Я 15 д. 119 ч.'       | 'В '    | 'В '     | 'Я 8'   | 'В '    | 'Б 8'    | 'Базин Антон Владимирович' | 'Б 8'    | 'Б '     | 'Я 8'    | 'Я 8'   | 'Я 8'    | 'Б 8'    | 'Я 8'    | 'Я 8'    | 'Я 8'   | 'Б '     | 'Б 8'    | 'В '     | 'Я 8'    | 'В '    | 'В '     | 'Я 7'   | 'Я 8'    | 'В '     | 'Я 8'    | 'Б 8'    | 'Я 8'    |
			| ''       | ''      | ''   | ''       | ''       | ''      | 'Б 8 д. 40 ч.\nВ 8 д.' | ''      | ''       | ''      | ''      | ''       | ''                         | ''       | ''       | ''       | ''      | ''       | ''       | ''       | ''       | ''      | ''       | ''       | ''       | ''       | ''      | ''       | ''      | ''       | ''       | ''       | ''       | ''       |
		И у элемента формы с именем "ДатаНачалаПериода" текст редактирования стал равен '01.05.2024'
		И у элемента формы с именем "ДатаОкончанияПериода" текст редактирования стал равен '31.05.2024'
		И элемент формы с именем "Комментарий" стал равен 'VA-тестированиеЛН'
		И элемент формы с именем "МесяцРегистрацииСтрокой" стал равен 'Май 2024'
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И элемент формы с именем "ПериодВводаДанныхОВремени" стал равен 'Текущий месяц'
		И Я закрываю окно 'Табель 403 от *'
		Тогда открылось окно 'Табели'
		И Я закрываю окно 'Табели'

Сценарий: 04 Проверка отображения больничного в документе "Начисление зарплаты и взносов"
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
		И в поле с именем 'Комментарий' я ввожу текст 'VA-тестирование2'
		И в поле с именем 'Номер' я ввожу текст '           '
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		И в поле с именем 'Номер' я ввожу текст '404'
		И я нажимаю на кнопку с именем 'ПровестиИЗакрыть'
		И я жду закрытия окна 'Начисление зарплаты и взносов (создание) *' в течение 20 секунд	
	* Проверка заполнения данных	
		Когда я нажимаю на кнопку с именем 'ЖурналДокументовНачислениеЗарплатыОткрытьСписок'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование2'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Все начисления'
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "ИтогВзносы" стал равен '417 188,69'
		И элемент формы с именем "ИтогНачислено" стал равен '1 381 419,47'
		И элемент формы с именем "ИтогУдержано" стал равен '189 233,98'
		И элемент формы с именем "Комментарий" стал равен 'VA-тестирование2'
		И элемент формы с именем "МесяцНачисленияСтрокой" стал равен 'Май 2024'
		И элемент формы с именем "Организация" стал равен 'Крон-Ц'
		И Я закрываю окно 'Начисление зарплаты и взносов 404 от *'
		Тогда открылось окно 'Все начисления'
		И Я закрываю окно 'Все начисления'
				

Сценарий: 05 Пометка документов на удаление
	* Пометка на удаление документа "Табель"
		И В командном интерфейсе я выбираю 'Зарплата' 'Табели'
		И я нажимаю сочетание клавиш "Alt+F"
		Когда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестированиеЛН'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Табели'
		И в таблице "Список" я активизирую поле с именем "Дата"
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Табели'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Табель 403 от *'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-удаление'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно 'Табель 403 от *'
		И Я закрываю окно 'Табель 403 от *'
		Тогда открылось окно 'Табели'
		И Я закрываю окно 'Табели'
	* Пометка на удаление периода болезни
		И В командном интерфейсе я выбираю 'Кадры' 'Все отсутствия сотрудников'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Отсутствие (болезнь, прогул, неявка) 401 от *'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-удаление'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно 'Отсутствие (болезнь, прогул, неявка) 401 от *'
		И Я закрываю окно 'Отсутствие (болезнь, прогул, неявка) 401 от *'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И Я закрываю окно 'Отпуска, командировки и другие отсутствия'
	* Пометка на удаление больничного листа
		И В командном интерфейсе я выбираю 'Кадры' 'Все отсутствия сотрудников'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестированиеЛН'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Больничный лист 402 от *'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-удаление'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно 'Больничный лист 402 от *'
		И Я закрываю окно 'Больничный лист 402 от *'
		Тогда открылось окно 'Отпуска, командировки и другие отсутствия'
		И Я закрываю окно 'Отпуска, командировки и другие отсутствия'
	* Пометка на удаление документа "Начисление зарплаты и взносов"
		Когда я нажимаю на кнопку с именем 'ЖурналДокументовНачислениеЗарплатыОткрытьСписок'
		И я нажимаю сочетание клавиш "Alt+F"
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Комментарий'
		И в поле с именем 'Pattern' я ввожу текст 'VA-тестирование2'
		И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
		И я нажимаю сочетание клавиш "Ctrl+Enter"
		Тогда открылось окно 'Все начисления'
		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Все начисления'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Начисление зарплаты и взносов 404 от *'
		И в поле с именем 'Комментарий' я ввожу текст 'VA-удаление'
		И я нажимаю на кнопку с именем 'Записать'
		Тогда открылось окно 'Начисление зарплаты и взносов 404 от *'
		И Я закрываю окно 'Начисление зарплаты и взносов 404 от *'
		Тогда открылось окно 'Все начисления'
		И Я закрываю окно 'Все начисления'