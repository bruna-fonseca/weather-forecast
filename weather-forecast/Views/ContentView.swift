//
//  ContentView.swift
//  weather-forecast
//
//  Created by Bruna Marques De Oliveira Fonseca on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
            
            VStack {
                VStack {
                    Text("Recife, PE")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                    Text("29°")
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.top, 100)
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.gray, .yellow)
                        .font(.system(size: 150))
                    Spacer()
                }
                
                HStack {
                    ForEach(weekForecast, id: \.self) { forecastDay in
                        Forecast(
                            dayOfWeek: forecastDay.dayOfTheWeek,
                            iconName: forecastDay.iconName,
                            temperature: forecastDay.temperature
                        )
                        Divider()
                    }
                }
                .padding(.bottom, 20)
                .frame(width: UIScreen.main.bounds.width, height: 200)
                .background(Color.teal)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
