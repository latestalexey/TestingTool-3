&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Элементы.ИмяФункции.СписокВыбора.Добавить("СтрокаСоединения","СтрокаСоединения");
	Элементы.ИмяФункции.СписокВыбора.Добавить("СтрокаСоединенияИБ","СтрокаСоединенияИБ");
	Элементы.ИмяФункции.СписокВыбора.Добавить("ИмяПользователя1С","ИмяПользователя1С");
	Элементы.ИмяФункции.СписокВыбора.Добавить("ПарольПользователя1С","ПарольПользователя1С");
	Элементы.ИмяФункции.СписокВыбора.Добавить("ТекущийПользователь","ТекущийПользователь");
	Элементы.ИмяФункции.СписокВыбора.Добавить("ПутьКФайлуТеста","ПутьКФайлуТеста");
	Элементы.ИмяФункции.СписокВыбора.Добавить("УникальныйИдентификатор","УникальныйИдентификатор");	
	Элементы.ИмяФункции.РежимВыбораИзСписка = Истина;
	Элементы.ИмяФункции.РедактированиеТекста = Ложь;
	
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	ИзменитьВидимостьФункции();
КонецПроцедуры

&НаКлиенте
Процедура ИспользоватьФункциюПриИзменении(Элемент)
	ИзменитьВидимостьФункции();
КонецПроцедуры

&НаКлиенте
Процедура ИзменитьВидимостьФункции()
	Элементы.ГруппаФункции.Видимость = Запись.ИспользоватьФункцию;
	Если Запись.ИспользоватьФункцию=Ложь Тогда
		Запись.ИмяФункции = "";
	КонецЕсли;
КонецПроцедуры