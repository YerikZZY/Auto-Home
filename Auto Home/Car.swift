//
//  Car.swift
//  Auto Home
//
//  Created by Jay Zhang on 3/14/21.
//

import Foundation
class Car {
    enum Brands: String {
        case bmw = "bmw"
        case benz = "benz"
        case audi = "audi"
    }
    var name: String
    var year: Int
    var type: Brands
    var battery: Double
    var engine: String
    var brake: String
    var tyre: Int
    var description: String
    var price: Int
    init(name: String, year: Int, type: Brands, battery: Double, engine: String, brake: String, tyre: Int, description: String, price: Int){
        self.name = name
        self.year = year
        self.type = type
        self.battery = battery
        self.engine = engine
        self.brake = brake
        self.tyre = tyre
        self.description = description
        self.price = price
    }
    
}
let cars = [
    Car(name: "GLE63", year: 2018, type: .benz, battery: 89.24, engine: "3.0T", brake: "Good", tyre: 8, description: "very new condition", price: 30760),
    Car(name: "GLC300", year: 2020, type: .benz, battery: 96.38, engine: "2.0L", brake: "Bad", tyre: 9, description: "great design", price: 43552),
    Car(name: "C300", year: 2016, type: .benz, battery: 78.89, engine: "2.0L", brake: "Good", tyre: 6, description: "reliable and luxurious", price: 26981),
    Car(name: "E300", year: 2019, type: .benz, battery: 89.24, engine: "2.0L", brake: "Good", tyre: 8, description: "great on fuel", price: 44983),
    Car(name: "E450", year: 2020, type: .benz, battery: 99.15, engine: "3.0L", brake: "Bad", tyre: 9, description: "fairly rare in the market", price: 63984),
    Car(name: "A8", year: 2017, type: .audi, battery: 87.42, engine: "3.0T", brake: "Good", tyre: 7, description: " comfortable and powerful engine", price: 41881),
    Car(name: "Q8", year: 2019, type: .audi, battery: 93.62, engine: "3.0T", brake: "Good", tyre: 8, description: "great safety", price: 67900),
    Car(name: "S8", year: 2015, type: .audi, battery: 88.11, engine: "4.0T", brake: "Good", tyre: 6, description: "sufficiently fleet", price: 37995),
    Car(name: "A6", year: 2018, type: .audi, battery: 82.19, engine: "3.0T", brake: "Good", tyre: 8, description: "great performance", price: 35750),
    Car(name: "A4", year: 2018, type: .audi, battery: 89.24, engine: "2.0T", brake: "Bad", tyre: 8, description: "excellent traction", price: 27950),
    Car(name: "X5", year: 2019, type: .bmw, battery: 92.18, engine: "3.0L", brake: "Good", tyre: 9, description: "reliable and technologically advance", price: 56715),
    Car(name: "i3", year: 2018, type: .bmw, battery: 82.88, engine: "Electric", brake: "Good", tyre: 8, description: "unique styling", price: 23999),
    Car(name: "740e", year: 2018, type: .bmw, battery: 96.76, engine: "2.0L", brake: "Good", tyre: 9, description: "luxury and comfort", price: 52841),
    Car(name: "X3", year: 2018, type: .bmw, battery: 81.02, engine: "2.0L", brake: "Good", tyre: 7, description: "sporty", price: 31777),
    Car(name: "750i", year: 2016, type: .bmw, battery: 74.63, engine: "4.4T", brake: "Good", tyre: 7, description: "great fuel economy", price: 39888)
]
