﻿#language: ru

Функционал: Проверка расчета суммы документа Заказ

Как Менеджер по продажам я хочу
При оформлении документа Заказ вводить цену и количество
чтобы в документе считалась сумма товаров и сумма документа

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий
И я закрываю все окна клиентского приложения

Сценарий: Проверка суммы в документе Заказ
* Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Пантера АО'   |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* Заполнение т.ч. Товары - Строка 1
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2 500,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	// Проверка правильности расчета строки
	Тогда таблица "Товары" содержит строки:
		| 'Товар'   | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Ботинки' | '2 500,00' | '3'          | '7 500,00' |
* Заполнение т.ч. Товары - Строка 2
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000020' | 'Валенки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 300,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	// Проверка правильности расчета строки
	Тогда таблица "Товары" содержит строки:
		| 'Товар'   | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Валенки' | '1 300,00' | '2'          | '2 600,00' |
// Проверка основного условия теста
* Проверка условия теста
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '10 100'
// Этого можно и не делать
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд

