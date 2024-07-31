//
//  User.swift
//  AboutMeApp
//
//  Created by Евгений on 30.07.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let photo: String
    let name: String
    let surname: String
    let age: Int
    let bio: String
    let company: Company
    
    var fullName: String { "\(name) \(surname)" }
    
    static func getPerson() -> Person {
        Person(
            photo: "photo",
            name: "Евгений",
            surname: "Шипицын",
            age: 29,
            bio: "Родился 18.01.1995 в Новом Уренгое. В 2010 году закончил среднюю школу и поступил в техникум. В 2014 году закончил техникум и поступил в Казанский энергетический  институт, в декабре ушел в армию. После срочной службы в мае 2016 года устроился в ООО Газпром добыча Ямбург на должность слесаря КИПиА. В 2019 году закончил учёбу в институте. В марте 2024 года перешел на должность инженера-электроника.",
            company: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let profession: String
    
    static func getCompany() -> Company {
        Company(
            title: "ООО Газпром добыча Ямбург",
            profession: "Инженер-электроник"
        )
    }
}
