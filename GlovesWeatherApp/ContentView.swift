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
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            //contains weather currently and weather for next couple of days
            VStack{
                //weather daily
                
                
                //clothing options
                HStack{
                    //comfy option
                    NavigationLink(
                        destination: ComfyView(weather: weather, response: response, data: data),
                        label: {
                            Text("Comfy Option")
                        })
                    
                    //trendy option
                 /*   NavigationLink(
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
                
                
                //next couple of days and that array
                ZStack{
                    
                    NavigationView{
                        ZStack{
                            
                            List(fetchData.responses.data) {
                                
                                data in
                                if #available(iOS 15.0, *) {
                                    NavigationLink(
                                        destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                                        label: {
                                            
                                            WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)
                                            
                                            
                                        }).listRowBackground(Color.background).listRowSeparatorTint(Color.fontColor)
                                        .navigationTitle(Text("16 Day Forecast")).accentColor(Color.fontColor)
                                } else {
                                    NavigationLink(
                                        destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                                        label: {
                                            
                                            WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)
                                            
                                            
                                        }).listRowBackground(Color.background)
                                }
                            }
                            
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
