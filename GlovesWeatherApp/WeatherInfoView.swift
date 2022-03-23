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
        var date = data.datetime
        let icon = URL(string: "https://www.weatherbit.io/static/img/icons/\(weather.icon).png")

        
        VStack {
            
            Text(date ?? "material gorl")
            Text(description ?? "who's to say")
            Text("Temp: " + String(temp ?? 0.0))
          
            
        }.foregroundColor(Color.fontColor).background(Color.background)
    }
}

struct WeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfoView(weather: Weather(), response : Response(), data : Data())
    }
}
