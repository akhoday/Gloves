//
//  WeatherInfoView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 2/28/22.
//

import SwiftUI

struct WeatherInfoView: View {
   // @StateObject var fetchData = FetchData()
   // var forecast : Forecast
    var weather : Weather
    var response : Response
    var data : Data
    
    
    var body: some View {
        
        var stateCode = response.state_code
        var cityName = response.city_name
        var timezone = response.timezone
        var temp = data.temp
        var description = weather.description
        
        VStack {
            Text(String(temp ?? 0.0))
            Text(description ?? "who's to say")

            Text("test")
        }
    }
}

struct WeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfoView(weather: Weather(), response : Response(), data : Data())
    }
}
