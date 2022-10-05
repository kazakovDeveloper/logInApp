//
//  userData.swift
//  LogInAppFull
//
//  Created by Kazakov Danil on 05.10.2022.
//

struct User {
    let login: String
    let password: String
    
    static func register() -> [User] {
        [
            User(
                login: "User",
                password: "123"
            )
        ]
    }
}
