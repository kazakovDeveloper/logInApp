//
//  profileData.swift
//  LogInAppFull
//
//  Created by Kazakov Danil on 05.10.2022.
//

struct Profile {
    let name: String
    let surname: String
    let age: String
    let city: String
    let favoritePlace: String
    let bio: String
    
    static func getProfile() -> [Profile] {
        [
            Profile(
                name: "Данил",
                surname: "Казаков",
                age: "24",
                city: "Петроградка",
                favoritePlace: "Санкт-Петербург",
                bio: """
Переехал в Питер около 2 месяцев назад
Почти сразу, как начались курсы.
Этот город вдохновляет!
Спасибо за курсы, твои шутки это топ!
Советую хачапури и вино на петроградке :))
    
"""
            )
        ]
    }
}

