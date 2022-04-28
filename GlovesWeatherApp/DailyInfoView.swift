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
    
    //formats day of week
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
        var high = data.high_temp
        var low = data.low_temp
        var icon = weather.icon
        var unwrappedIcon = weather.icon!
        var bk = unwrappedIcon + "bk"
        var unwrappedDate = date!
        var subStringDate = unwrappedDate.suffix(5)
        
        
        
        ZStack{
            
            //custom background depending on weather
            Image(bk).resizable().edgesIgnoringSafeArea(.all)
            
            //shows basic daily weather information
            VStack(spacing: 0.0) {
                if let weekday = getDayOfWeek(unwrappedDate, format:"yyyy-MM-dd") {
                    Text(weekday)
                }
                Text(subStringDate)
                
                
                Text(String(Int(temp ?? 0)) + "°").font(.system(size: 56))
                HStack {
                    Text("Low: " + String(Int(low ?? 0)) + "°").font(.system(size: 20))
                    Text("High: " + String(Int(high ?? 0)) + "°").font(.system(size: 20))
                }
                Text(description ?? "Loading... hang tight, we're working on it!").font(.system(size: 24))
                
                //Navigation to Clothing Options
                HStack{
                    //comfy option
                    NavigationLink(
                        destination: ComfyView(weather: weather, response: response, data: data),
                        label: {
                            Text("Comfy")
                        })
                    
                    
                    //classic option
                    NavigationLink(
                        destination: ClassicView(weather: weather, response: response, data: data),
                        label: {
                            Text("Classic")
                        })
                    //assorted option
                    NavigationLink(
                        destination: OptionsView(weather: weather, response: response, data: data),
                        label: {
                            Text("Other")
                        })
                }
             
            }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
        }
    }
}

struct DailyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DailyInfoView(weather: Weather(), response : Response(), data : Data())
    }
}
