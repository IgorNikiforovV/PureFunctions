//
//  Const.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 03.05.2021.
//

// Global consts list

enum K {

    enum Tasks {

        static let imagePrefix = "Cells/Image"
        static let backgroundPrefix = "Colors/Cells/Cell"

        static let titleTasksColorName = "TextColor/TitleTasksColor"
        static let titleTasksFontName = "SFProDisplay-Medium"

        static let titleText = "Домашняя работа"
        static let subtitleText = "Функциональное программирование"

        enum Task1 {
            static let condition = "Напишите своими словами, что такое Pure Function"
            static let result = """
                Чистые функции - это функции, которые:\n\t- всегда возвращают одинаковый результат с одним и тем же набором параметров (являются детерминированными)\n\t- используют для вычисления переменные, которые пришли в функцию как параметры или переменные/константы, объявленные внутри функции (без использования глобальных переменных)\n\t- не изменяют переменные, которые приходят в чистые функции в качестве параметров\n\t- не изменяют состояния глобальных переменных/объектов (no side effect)
            """
        }

        enum Task2 {
            static let condition = "Отсортируйте массив чисел по возрастанию, используя функцию Sorted"
            static let param = [3, 1, 4, 7, 12, 22]
            static let inputData = "3, 1, 4, 7, 12, 22"
        }

        enum Task3 {
            static let condition = "Переведите массив чисел в массив строк с помощью функции Map"
            static let param = [3, 1, 4, 7, 12, 22]
            static let inputData = "3, 1, 4, 7, 12, 22"
        }

        enum Task4 {
            static let condition = "Переведите массив строк с именами людей в одну строку, содержащую все эти имена, с помощью функции Reduce"
            static let param = ["Anna", "Andrey", "Igor", "Katy", "Olga"]
            static let inputData = "'Anna', 'Andrey', 'Igor', 'Katy', 'Olga'"
        }

        enum Task5 {
            static let condition = "Напишите функцию, которая принимает в себя функцию c типом () -> Void, которая будет вызвана с задержкой в две секунды"
            static let inputData = "public static func showDelay() {\n\tsleep(1)\n}"
        }

        enum Task6 {
            static let condition = "Напишите функцию, которая принимает в себя две функции и возвращает функцию, которая при вызове выполнит первые две функции"
            static let inputData = """
            public static func getFirstTestString() -> String {\n\t'First func completed'\n}\n\npublic static func getSecondTestString() -> String {
            \t'Second func completed'\n}'
            """
        }

        enum Task7 {
            static let condition = "Напишите функцию, которая сортирует массив по переданному алгоритму: принимает в себя массив чисел и функцию, которая берёт на вход два числа, возвращает Bool (должно ли первое число идти после второго) и возвращает массив, отсортированный по этому алгоритму"
            static let param1 = [3, 1, 4, 7, 12, 22]
            static let param2: (Int, Int) -> Bool = { num1, num2 in num1 > num2 }
            static let inputData = "Array:\t 3, 1, 4, 7, 12, 22\nSorted algoritm:\n\t { num1, num2 in num1 > num2 }"
        }

        enum Task8 {
            static let condition = "Напишите своими словами, что такое infix-, postfix-, prefix-операторы"
            static let result = """
                Prefix, postfix, infix это функции для создания пользовательских операторов. Существенно повышают чистоту и читаемость кода.\n
                prefix operator ??? {}
                postfix operator ^^^ {}
                infix operator ***\n
                infix operator +-: AdditionPrecedence
                extension Set {
                    static func +- (lhs: Set, rhs: Set) -> Set {
                        return lhs.union(rhs)
                    }
                }
            """
        }

    }

    enum TaskCell {
        static let titleColorName = "TextColor/CellTtitleColor"
        static let titleFontName = "SFProText-Regular"
    }

    enum TaskDetail {
        static let conditionTitle = "Условие задачи"
        static let inputDataTitle = "Входные данные"
        static let resultTitle = "Результат"

        static let titleColorName = "TextColor/CellTtitleColor"
        static let titleFontName = "SFProText-Regular"

        static let subtitleColorName = "TextColor/InputDataColor"
        static let subtitleFontName = "SFProDisplay-Medium"
    }
    

}
