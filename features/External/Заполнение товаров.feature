#language: ru

@tree
@IgnoreOnCIMainBuild
@ExportScenarios

Функционал: Заполнение товаров для тестирования

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Загрузка данных
@Описание: Экспортный сценарий создающий Товары для текстирования
@ПримерИспользования: И Я создаю Товары для тестирования
Сценарий: я создаю Товары для тестирования


	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'   | 'Улица'        | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                           | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000005' | 'Скороход АО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121456' | 'Россия' | 'Москва'  | 'Полярная ул.' | '33'  | '+7(999)234-57-65' | ''                 | '+7(999)234-57-65' | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | ''                         | 'Улиткин Ф.Ф.'   | 55.88895  | 37.64444  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000006' | 'Пантера АО'   | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | '2222'   | 'Польша' | 'Варшава' | 'Czolowa'      | '2'   | '+7(999)890-987'   | 'ff@jmail.ru'      | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' | ''                         | 'Ковальски А.Р.' | 52.331154 | 20.989486 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'   | ''                                                                   | ''       | ''       | ''        | ''             | ''    | ''                 | ''                 | ''                 | ''        | ''                                                 | ''                         | ''               | ''        | ''        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | 'False'           | '000000006' | 'Польша'       |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул'  | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                     | 'Штрихкод' | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000006' | 'Ботинки'      | 'ОБ-003'   | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa18' | 'Enum.ВидыТоваров.Товар'  | ''         | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9b1315c596e3' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000020' | 'Валенки'      | 'ОБ-00100' | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eacd471d6ce' | 'Enum.ВидыТоваров.Товар'  | ''         | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'     | ''         | ''                                                                       | ''                                                                         | 'Enum.ВидыТоваров.Услуга' | ''         | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'        | ''         | ''                                                                       | ''                                                                         | ''                        | ''         | ''         | ''       |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'           | ''                                                                  | 'True'      | '000000036' | 'Услуги'       | ''         | ''                                                                       | ''                                                                         | ''                        | ''         | ''         | ''       |

