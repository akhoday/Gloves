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
            
            
            TextField("Enter City: ", text: $cityName)
            TextField("Enter State: ", text: $stateName)
        }
    }
}

//struct LocationView_Previews: PreviewProvider {
  //  static var previews: some View {
//        LocationView(stateName: Binding<String>)
//    }
//}
