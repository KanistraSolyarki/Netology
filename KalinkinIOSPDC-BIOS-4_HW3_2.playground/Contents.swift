//Задача 1
//Работа с кортежами
//
//Вы работаете над приложением “Информация о вас и ваших друзьях”. Ваша задача создать список людей с минимальной информацией о них и объединить одно из полей для создания общего значения.
//
//Алгоритм выполнения
//
//Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо. Все элементы кортежа должны быть именованы.
//Одним выражением запишите каждый элемент кортежа в три константы.
//Создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека (с другими значениями).
//Обменяйте значения в кортежах между собой (с использованием дополнительного промежуточного кортежа).
//Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
//Задача 2
//Представьте, что вы работаете над приложением электронный дневник. Создайте словарь, где ключом будет имя студента, а значением будет другой словарь из 3 элементов, содержащий название предмета и оценку.
//
//Задача 3
//Вы разрабатываете приложение “Шахматы”. Вашей задачей будет создать фигуру на игровом поле.
//
//Алгоритм выполнения
//Создайте псевдоним типа (typealias) Chessman для типа словаря [String: (alpha:Character, num: Int)?]. Данный тип описывает шахматную фигуру на игровом поле.
//В ключе словаря должно храниться имя фигуры, например «Белый король», а в значении — кортеж, указывающий на координаты фигуры на игровом поле. Если вместо кортежа находится nil, это означает, что фигура убита (не имеет координат на игровом поле).
//
//Создайте переменный словарь Chessmans типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.
//
//Создайте конструкцию if-else, которая проверяет, убита ли переданная ей фигура (элемент словаря Chessmans), и выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.
//
//Подсказка
//Для получения координат переданной фигуры используйте опциональное связывание.
//// chessmans[key] - опциональное значение if let info = chessmans[key] { // Действие }



// Задача 1

var myFavorite = (film: "Terminal", number: 1, dish: "Picca")
let (myFilm, myNumber, myDish) = myFavorite
var anotherFavorite = (film: "Noi", number: 7, dish: "Cake")

var favorite = myFavorite
myFavorite = anotherFavorite
anotherFavorite = favorite

let numbers = (myFavorite.number, anotherFavorite.number, myFavorite.number - anotherFavorite.number)
print ("Кортеж чисел: \(numbers)")

//Задача 2

let diary = ["Petr": ["English": 4, "History": 5, "Mathematics": 5]]
print ("Дневник ученика - \(diary)")

//Задача 3

typealias Chessman = [String: (alpha:Character, num: Int)?]
var chessmans: Chessman = ["белый король":("A",5), "белый ферзь":("C",7), "черный слон":nil]

var key = "черный слон"
if let info = chessmans[key], let value = info {
        print("Координаты фигуры \(key): \(value.alpha), \(value.num)")
    }
    else {
        print("Фигура \(key) отсутствует на поле")
    }
