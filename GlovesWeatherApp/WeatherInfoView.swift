//
//  WeatherInfoView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 2/28/22.
//

import SwiftUI
import WebKit
import UIKit

struct WeatherInfoView: View {
   // @StateObject var fetchData = FetchData()
   // var forecast : Forecast
    var weather : Weather
    var response : Response
    var data : Data
    
    //finds weekday and returns
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
        

        //displays important basic daily weather info so that user knows at a glance what to expect
        HStack {
          
            //forecasted temperature
            Text(String(Int(temp ?? 0)) + "°").font(.system(size: 30))
            Spacer()

            //descriptive icon
            Image(icon).resizable().frame(width: 70, height: 70)
            Spacer()
            
            VStack {
            
             //date
            if let weekday = getDayOfWeek(unwrappedDate, format:"yyyy-MM-dd") {
                Text(weekday)
            }
            Text(subStringDate)
            }
           
        }.foregroundColor(Color.fontColor).background(Color.background)
    }
}

struct WeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherInfoView(weather: Weather(), response : Response(), data : Data())
    }
}
