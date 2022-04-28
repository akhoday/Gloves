//

//  ContentView.swift

//  GlovesWeatherApp

//

//  Created by Alveena Khoday (student LM) on 2/22/22.

//



import SwiftUI



struct ContentView: View {

    @EnvironmentObject var fetchData : FetchData
    @Binding var stateName : String
    @Binding var cityName : String

    var body: some View {
        //will have the background based on the weather behind all of the info
        var address = fetchData.responses.city_name
        var stateCode = fetchData.responses.state_code

               

       
//        HStack{
//            //current weather
//
        
        
        ZStack{
            NavigationView{
                VStack{
                    NavigationLink(
                        destination:
                            LocationView(stateName: $stateName, cityName: $cityName).edgesIgnoringSafeArea(.all)
                        ,
                        label: {
                           ChangeOfferView()
                        }).frame(height: 50.0)
                    
                    List(fetchData.responses.data) {
                        data in
                        if #available(iOS 15.0, *) {
                            NavigationLink(
                                destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                                label: {
                                    WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)
                                }).listRowBackground(Color.background)
                                //.listRowSeparatorTint(Color.fontColor)
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
//}











//struct ContentView_Previews: PreviewProvider {
//
//    static var previews: some View {
//
//        ContentView()
//
//    }
//
//}
