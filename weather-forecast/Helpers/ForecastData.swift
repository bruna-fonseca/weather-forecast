//
//  ForecastData.swift
//  weather-forecast
//
//  Created by Bruna Marques De Oliveira Fonseca on 02/04/23.
//

import Foundation

struct Weather: Hashable {
    let dayOfTheWeek: String
    let temperature: Int
    let iconName: String
}

let weekForecast = [
    Weather(dayOfTheWeek: "Seg", temperature: 29, iconName: "cloud.sun.fill"),
    Weather(dayOfTheWeek: "Ter", temperature: 25, iconName: "cloud.heavyrain.fill"),
    Weather(dayOfTheWeek: "Qua", temperature: 28, iconName: "sun.max.fill"),
    Weather(dayOfTheWeek: "Qui", temperature: 29, iconName: "sun.max.fill"),
    Weather(dayOfTheWeek: "Sex", temperature: 26, iconName: "cloud.rain.fill")
]
