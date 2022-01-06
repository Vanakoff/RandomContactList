//
//  DataManager.swift
//  RandomContactList
//
//  Created by Andrey Vanakoff on 06/01/2022.
//

struct DataManager {
    
    static let shared = DataManager()
    
    let names = [
    "Andrey", "Serhio", "Leo",
    "Orville", "Alexa", "Grover",
    "Stan", "Vladimir", "Roberta",
    "Melissa"
    ]
    let surnames = [
    "Vanakoff", "Fender", "Gibson",
    "Jackson", "Ali Mohommed", "Chong",
    "Fu Yeng", "Yamamoto", "Suzuki",
    "Porsche"
    ]
    let emails = [
    "swift@apple.com", "money@business.org", "space@cosmos.ru",
    "darth.vaderd@starwars.universe", "earth@water.com", "telecaster@fender.com",
    "guitar@gibson.com", "hokus@pokus.trick", "iphone@apple.com",
    "jackson@michael.com"
    ]
    let phones = [
    "+(77) 777-77-77", "+49-123-45-67", "+38-0572-69-27-03",
    "55-555-55-55", "+39-789-89-89", "+(049)-78-00-777",
    "+(039) 123-45-67", "555-55-77-8", "123-123-123",
    "+(077) 777-77-88"
    ]
    
    private init() {}
}
