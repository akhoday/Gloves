//
//  ClassicView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 3/30/22.
//

import SwiftUI

struct ClassicView: View {
    
    var weather : Weather
    var response : Response
    var data : Data
    
    var coldColdFund = [shirts: "long sleeve thick shirt, sweater or a short sleeve that is a good to layer w/ a jacket", pants: "thick leggings, thick jeans, thick corduroy pants", coats: "heavy winter coat (canada goose, puffer jacket)", socks: " 2 pairs of socks or thick socks", shoes: "boots (uggs, docs), sneakers(forces)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

    
    var coldFund = [shirts: "long sleeve thick shirt, sweater or a short sleeve that is a good to layer w/ a jacket", pants: "leggings, jeans, corduroy", coats: "heavy winter coat (canada goose, puffer jacket)", socks: "a good pair of socks", shoes: "boots(uggs, docs), sneakers(forces, converse, vans)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

    var coldishFund = [shirts: "long sleeve shirt, sweater or a short sleeve that is a good to layer w/ a jacket", pants: "leggings, jeans, corduroy", coats: "basic winter coat (north face)", socks: "normal socks", shoes: "sneakers(forces, converse, vans, nike, adidas), docs", gloves: "optional", scarves: "optional", hats: "optional winter hat", sunglasses: "optional", extra: ""]

    var warmishFund = [shirts: "Long sleeve shirt, sweater, or short sleeve shirt layered over long sleeve", pants: "jeans, leggings, optional shorts", coats: "lighter/fleece jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

    var warmerFund = [shirts: "oversized t-shirt, casual long sleeve", pants: "jean shorts", coats: "optional jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

    var hotFund = [shirts: "oversized t-shirt, tank tops", pants: " jean shorts, skirt", coats: "optional jacket", socks: "athletic socks, cotton socks", shoes: "sneakers (converse, forces, vans), birkenstocks", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

    var hawtFund = [shirts: "oversized t-shirt, tank tops", pants: " jean shorts, skirt", coats: "optional jacket", socks: "no socks or socks w/ sneakers", shoes: "flip flops, birkenstocks, sandals, sneakers", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]
    
    var body: some View {
        
        let temp = (data.temp)!
        
        ZStack{
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
            VStack{
                if temp < 21 {
                    Text("ur mom")
                                }
                else if temp > 20 && temp < 33{
                    Text("ur mom") }
                else if temp > 32 && temp < 51{
                    Text("ur mom") }
                else if temp > 50 && temp < 61{
                    Text("ur mom") }
                else if temp > 60 && temp < 71{
                    Text("ur mom") }
                else if (temp > 60 && temp < 71){
                    Text("ur mom")
                }
                else {
                    Text("ur mom") //hawtComfy
                }
            }
            
            }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
        
    }
}

struct ClassicView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicView(weather: Weather(), response : Response(), data : Data())
    }
}
