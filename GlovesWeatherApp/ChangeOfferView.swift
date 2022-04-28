//
//  ChangeOfferView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 4/24/22.
// displays location and navigates to location changer

import SwiftUI

struct ChangeOfferView: View {
    
    @EnvironmentObject var fetchData : FetchData
    
    
    var body: some View {
        
        //acquires location
        var address = fetchData.responses.city_name
        var stateCode = fetchData.responses.state_code
        
        ZStack {
            //background
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
        //displays current location being used
        VStack{
            Text((address ?? "Loading... Don't stress") + ", " + (stateCode ?? "we're working on it!")).foregroundColor(Color.fontColor)
            Text("Change Location")
            
        }.foregroundColor(Color.buttonColor).background(Color.background)
    }
    }
}

struct ChangeOfferView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeOfferView()
    }
}
