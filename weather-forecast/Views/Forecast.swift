//
//  Forecast.swift
//  weather-forecast
//
//  Created by Bruna Marques De Oliveira Fonseca on 02/04/23.
//

import SwiftUI

struct Forecast: View {
    let dayOfWeek: String
    let iconName: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(dayOfWeek)
            Image(systemName: iconName)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white)
                .font(.system(size: 50))
            Text("\(temperature)°")
        }
    }
}
