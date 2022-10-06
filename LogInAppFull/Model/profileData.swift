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
                bio:
                """
                около 2х месяцев назад переехал в СПБ
                сразу как начались курсы)
                Город вдохновляет, мне очень нравится!
                Свой путь в IT начал в начале года, когда
                участвовал на интенсиве от СБЕРА, но там
                нет мобильной разработки, по этому пошел своим путем и пришёл к вам!)
                """
            )
        ]
    }
}

