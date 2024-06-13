﻿#language: ru

@tree
Функционал:  Автоинструкция "Создание сотрудника"



Контекст: 
	И Я подключаю клиент тестирования "Этот клиент" из таблицы клиентов тестирования
	И я закрываю все окна клиентского приложения
	
Сценарий: 01. Создание сотрудника
	* Создание
		И видеовставка "Создание нового сотрудника" "Инструкция по созданию нового сотрудника"
		Нажимаем Кадры, Сотрудники
		И В командном интерфейсе я выбираю 'Кадры' 'Сотрудники'
		Открывается список всех сотрудников
		Тогда открылось окно 'Сотрудники'
		Нажмём кнопку Создать
		И я нажимаю на кнопку с именем 'Создать'
		Тогда открылось окно 'Сотрудник (создание)'
		Теперь укажем организацию
		И из выпадающего списка с именем "ГоловнаяОрганизация" я выбираю точное значение 'Крон-Ц'
		Далее нажимаем кнопку изменить ФИО
		И я нажимаю на кнопку с именем 'ИзменитьФИО'
		Тогда открылось окно 'Смена ФИО'
		В поле Фамилия вводим значение
		И в поле с именем 'Фамилия' я ввожу текст 'ВА'
		Теперь заполняем поле Имя
		И в поле с именем 'Имя' я ввожу текст 'Сотрудник'
		поле отчество
		И в поле с именем 'Отчество' я ввожу текст '1'
		Нажимаем ОК
		И я нажимаю на кнопку с именем 'ОК'
		Тогда открылось окно 'Сотрудник (создание) *'
		Обязательно указываем пол сотрудника
		И из выпадающего списка с именем "ФизлицоПол" я выбираю точное значение 'Мужской'
		Сохраняем данные
		И я нажимаю на кнопку с именем 'КомандаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Сотрудник (создание) *' в течение 20 секунд
		Сотрудник создан
		Когда открылось окно 'Сотрудники'
		И Я закрываю окно 'Сотрудники'
				