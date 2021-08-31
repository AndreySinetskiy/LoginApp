//
//  Model.swift
//  LoginApp
//
//  Created by 1 on 30.08.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Andrey",
            password: "Swift",
            person: Person.getPerson())
    }
}
struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobby: String
    let image: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Andrey",
            surname: "Sinetskiy",
            age: 36,
            hobby: "IT",
            image: "Image0")
    }
}

