//
//  LocationView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 4/19/22.
//

import SwiftUI

struct LocationView: View {
    
    @Binding var stateName : String
    @Binding var cityName : String
    
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
            //text fields which allow for the editing of the location of the weather data
            VStack {
                Text("Enter City: ")
                TextField("Enter City: ", text: $cityName).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding().background(Color.background)
                
                Text("Enter State: ")
                TextField("Enter State: ", text: $stateName).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding().background(Color.background)
            }
        }.foregroundColor(Color.fontColor).background(Color.background).edgesIgnoringSafeArea(.all)
    }
}

//struct LocationView_Previews: PreviewProvider {
  //  static var previews: some View {
//        LocationView(stateName: Binding<String>)
//    }
//}
