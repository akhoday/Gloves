//
//  ChangeOfferView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 4/24/22.
//

import SwiftUI

struct ChangeOfferView: View {
    
    @EnvironmentObject var fetchData : FetchData
    
    
    var body: some View {
        
        var address = fetchData.responses.city_name

        var stateCode = fetchData.responses.state_code
        ZStack {
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
        VStack{
            Text((address ?? "Loading... Don't stress") + ", " + (stateCode ?? "we're working on it!")).foregroundColor(Color.fontColor)
            Text("Change Location")
            
        }.foregroundColor(Color.buttonColor).padding().frame(width: 500.0, height: 100.0, alignment: .top).background(Color.background)
    }
    }
}

struct ChangeOfferView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeOfferView()
    }
}
