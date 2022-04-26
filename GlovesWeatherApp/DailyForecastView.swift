//
//  DailyForecastView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 4/26/22.
//

import SwiftUI
import WebKit
import UIKit

struct DailyForecastView: View {
    var weather : Weather
    var response : Response
    var data : Data
    
    func getDayOfWeek(_ date:String, format: String) -> String? {
        
        let weekDays = [
            "Sun",
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat"
        ]

        let formatter  = DateFormatter()
        formatter.dateFormat = format
        guard let myDate = formatter.date(from: date) else { return nil }
        
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: myDate)
        
        
        return weekDays[weekDay-1]
    }
    
    
    var body: some View {
        
        var stateCode = response.state_code
        var cityName = response.city_name
        var timezone = response.timezone
        var temp = data.temp
        var description = weather.description
        var date = data.datetime
        var unwrappedDate = date!
        var subStringDate = unwrappedDate.suffix(5)
        var icon = weather.icon!
        

        VStack {
  
            Text(String(Int(temp ?? 0)) + "°").font(.system(size: 30))
            
            if let weekday = getDayOfWeek(unwrappedDate, format:"yyyy-MM-dd") {
                Text(weekday)
            }
            Text(subStringDate)

            Image(icon).resizable().frame(width: 70, height: 70)
           
        }.foregroundColor(Color.fontColor).background(Color.background)
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastView(weather: Weather(), response : Response(), data : Data())
    }
}
