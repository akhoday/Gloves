//
//  ContentView.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fetchData : FetchData
    
    var body: some View {
        
        //will have the background based on the weather behind all of the info
        ZStack{
            
            
            //contains weather currently and weather for next couple of days
            VStack{
                //weather daily
                
                
                
                
                //next couple of days
                HStack{
                            NavigationView{
                           List(fetchData.responses.data) {
                                
                            data in
                                NavigationLink(
                                    destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                                    label: {
                                      
                                        WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)
                                        
                                
                            })
                           }
                        }
                }
            }
        
        }
        

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
