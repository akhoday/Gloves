//
//  WeatherInfoView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 2/28/22.
//

import SwiftUI
import WebKit

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
        
        //let icon = URL(string: "https://www.weatherbit.io/static/img/icons/\(weather.icon).png")

        VStack {
            
           // AsyncImage(url: URL(string: "www.weatherbit.io/static/img/icons/\(weather.icon).png")!, placeholder: { Text("Loading ...") }, image: { Image(uiImage: $0).resizable() }) .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
          
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
