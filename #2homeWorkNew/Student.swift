//
//  Student.swift
//  #2homeWorkNew
//
//  Created by Нурлан on 17/1/23.
//

import Foundation

//1)Придумать пример с наследованием с тройной иерархией. То есть 1 родитель, от него наследуется 2 наследника, от 2 наследников наследуются еще по 1 классу. Придумать общие параметры. В main вызвать по 1 объекту каждого класса.
//
//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse()



class Student: User{
    var year: Int
    var course: Int
    
    init(name: String, sureName: String, year: Int,  course: Int) {
        self.year = year
        self.course = course
        super.init(name: name, sureName: sureName)
    }
    func getCourse(){
        var thisYear = 2023
        course = thisYear - year
        if course <= 5 {
            print("студент курса - \(course)")
        } else {
            print("Нет такого студента")
        }
    }
}
