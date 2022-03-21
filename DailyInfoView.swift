//
//  DailyInfoView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 3/21/22.
//

import SwiftUI

struct DailyInfoView: View {
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
        var high = data.high_temp
        var low = data.low_temp
        
        VStack {
            
            Text("Temp: " + String(temp ?? 0.0))
            Text("High: " + String(high ?? 0.0))
            Text("Low: " + String(low ?? 0))
            Text(description ?? "who's to say")
            
            
        }.foregroundColor(Color.fontColor)
    }
}

struct DailyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DailyInfoView(weather: Weather(), response : Response(), data : Data())
    }
}
