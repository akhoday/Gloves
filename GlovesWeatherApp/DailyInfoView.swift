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
        var unwrappedDate = date!
        var subStringDate = unwrappedDate.suffix(5)
        
        
        
        ZStack{
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
            
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
                Text(description ?? "who's to say").font(.system(size: 24))
                
                //Clothing Options
                HStack{
                    //comfy option
                    NavigationLink(
                        destination: ComfyView(weather: weather, response: response, data: data),
                        label: {
                            Text("Comfy Option")
                        })
                    
                    //trendy option
                   /* NavigationLink(
                        destination: TrendyView(),
                        label: {
                            Text("Trendy Option")
                        }) */
                    
                    //classic option
                    NavigationLink(
                        destination: ClassicView(weather: weather, response: response, data: data),
                        label: {
                            Text("Classic Option")
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
