//
//  WeatherInfoView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 2/28/22.
//

import SwiftUI

struct WeatherInfoView: View {
   // @StateObject var fetchData = FetchData()
    var forecast : Forecast
    var weather : Weather
    
    var body: some View {
        
        var cityName = forecast.city_name
        Text((cityName)!)
            .padding()
    }
}

struct WeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfoView(forecast: Forecast(), weather: Weather())
    }
}
