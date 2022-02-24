//
//  ContentView.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/22/22.
//

import SwiftUI

struct ContentView: View {
   // @StateObject var fetchData = FetchData()
    var forecast : Forecast
    var weather : Weather
    
    var body: some View {
        
        var cityName = forecast.city_name
        Text((cityName)!)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(forecast: Forecast(), weather: Weather())
    }
}
