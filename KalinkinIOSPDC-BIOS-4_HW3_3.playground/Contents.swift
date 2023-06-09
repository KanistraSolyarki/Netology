import UIKit
//: Домашнее задание необходимо выполнить в данном файле, перед отправкой переименуйте название файла (латиницей) в формате ФамилияГруппаDZ4_3, например, *IvanovIOS4_DZ4_3*, заархивировать и приложить в личном кабинете для проверки.
/*:
 Чтобы успешно выполнить это домашнее задание, необходимо усвоить следующие темы:
 * [Коллекции eng.](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
 * [Коллекции  рус.](https://swiftbook.ru/content/languageguide/collection-types/)
 * [Управление потоком eng.](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
 * [Управление потоком рус.](https://swiftbook.ru/content/languageguide/control-flow/)
 * [Функции eng.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)
 * [Функции рус.](https://swiftbook.ru/content/languageguide/functions/)
*/
//: ## Задача №1
//: В данной задаче Вы тренируетесь Добавлять и Удалять значения в **`Хранилище (массив)`** при помощи двух функций, которые Вам и нужно реализовать. Функции принимают значение, но ничего не возвращают.
//: Первая функция добавляет элемент в массив, вторая функция удаляет элемент из массива, вы сами можете выбрать любой удобный для вас вариант добавления и удаления элементов из массива.
//: ### Алгоритм решения:
//:  * Создайте пустой массив строк типа String на любимую тематику, например, это будет Хранилище столовых приборов (этот пример не использовать), в который вы будете поочередно добавлять или удалять ложки, вилки и т.п. приборы.
//: * Создайте 2 функции в соответствии с условием.
//: * Попробуйте добавлять и удалять значения в массиве при помощи созданных функций.
//: * Что произойдет, если попытаетесь удалить значение, которого нет в Хранилище? Напишите, что в этом случае вы можете изменить в своей функции и внесите в нее изменения.
//: * *(условие со звездочкой - не обязательное) обе функции должны принимать массив и значение. Они должны добавлять или удалять значения в массиве. Функция удаления должна быть безопасной, т.е. если Хранилище пустое, мы должны сообщить об этом пользователю, если запрашиваемое на удаление значение отсутствует, необходимо также сообщить, что такого элемента нет. Запрещается использование forced unwrapping, если в вашем варианте будет необходимость работать с опционалами.*
// Решение задачи №1:
print("Задача №1")
var lessons: [String] = []
func addLessons(add lesson: String) {
    lessons.append(lesson)
    print("Урок \(lesson) добавлен в список")
}
func deleteLessons(del lessonTwo: String) {
    if lessons.isEmpty == false{
        if let index = lessons.firstIndex(of: lessonTwo) {
            print("Урок \(lessonTwo) удален из списка")
            lessons.remove(at :index)
            
        }
        else {
            print("Удаляемого урока \(lessonTwo) нет в списке.")
        }
    }
    else {
        print("Список пустой, удаление невозможно.")
    }
}

addLessons(add:)
deleteLessons(del: "Lit")
print("Список \(lessons)")
//: ## Задача №2
//: Вы получили тестовое задание от службы доставки еды: преобразовать бонусные баллы клиентов, которые хранятся на сайте, в денежные единицы. Со стороны сайта приходит словарь, содержащий ID клиента **(Int)** и накопленную сумму Бонусов **(Double)**. Ваша задача вернуть на сайт словарь, содержащий ID клиента **(Int)** и конвертированные денежные единицы **(Int)**, каждые 100 бонусов равны 10 денежным единицам.
//: ### Алгоритм решения:
//: * Словарь со своими значениями создавать не нужно. Значения, с которыми вы будете работать, инкапсулированы и переданы в `userPoints`.
//: * Распечатайте словарь и посмотрите, с какими значениями вы будете работать.
//: * Создайте функцию, которая принимаем словарь, ключом которого будет тип Integer, значением число с плавающей точкой Double, вернуть необходимо словарь ключом и значением, которого будет Integer.
//: * Вызовите функцию и распечатайте полученный результат.
//: * Дополнительно(не обязательно) входящих параметров может быть больше, например, для коэффициента пересчета баллов в денежные единицы.
// Решение задачи №2:
// подготовленный словарь
print("Задача №2")
userPoints
print(userPoints, "\n")
var userMoney: [Int: Int] = [:]
func convertPoints (from userPoints: [Int: Double], _ bonuses:Int = 100, _ cash:Int = 10) -> [Int: Int] {
    for data in userPoints {
        userMoney[data.key] = Int(data.value)/bonuses*cash
    }
    return userMoney
}
print(convertPoints(from: userPoints))
// 
