//
//  ComfyView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 3/30/22.
//

import SwiftUI

struct ComfyView: View {
    
    var weather : Weather
    var response : Response
    var data : Data
    
    var coldColdComfy = [shirts: "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", pants: "sweatpants, thick leggings", coats: "heavy winter coat (canada goose, puffer jacket)", socks: " 2 pairs of socks or thick socks", shoes: "boots (uggs), sneakers(forces)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]
    
    var coldComfy = [shirts: "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", pants: "sweatpants, leggings", coats: "heavy winter coat (canada goose, puffer jacket)", socks: "a good pair of socks", shoes: "boots(uggs), sneakers(forces, converse, vans)", gloves: "", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]
    
    var coldishComfy = [shirts: "long sleeve shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", pants: "sweatpants, leggings", coats: "basic winter coat (north face)", socks: "", shoes: "sneakers(forces, converse, vans, nike, adidas)", gloves: "optional", scarves: "optional", hats: "optional winter hat", sunglasses: "optional", extra: ""]
    
    var warmishComfy = [shirts: "short sleeve w/ jacket, or long sleeve shirt", pants: " sweatpants, leggings, potentially shorts", coats: "lighter/fleece jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "", sunglasses: "optional", extra: ""]
    
    var warmerComfy = [shirts: "casual t-shirt, long sleeve ", pants: "athletic shorts, sweat shorts", coats: "optional jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]
    
    var hotComfy = [shirts: "casual t-shirt, tank tops", pants: "athletic shorts, sweat shorts", coats: "optional jacket", socks: "athletic socks, cotton socks", shoes: "sneakers (converse, forces, vans), birkenstocks", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]
    
    var hawtComfy = [shirts: "casual t-shirt, tank tops", pants: "athletic shorts, sweat shorts", coats: "optional jacket", socks: "no socks or socks w/ sneakers", shoes: "flip flops, birkenstocks, sandals, sneakers", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]
   
    
    /*COLD COLD : 20 and below
     COLD: 32 -20 deg
     COLDISH : 33-50
     WARMISH: 51-60
     WARMER: 61-70
     HOT: 71-85
     BURNING UR ASS OFF: 86+
     */
    var body: some View {
        
        let temp = (data.temp)!
        
        ZStack{
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
            VStack{
                if temp < 21 {
                    print(coldColdComfy)
                }
                else if temp > 20 && temp < 33{
                    print(coldComfy) }
                else if temp > 32 && temp < 51{
                    print(coldishComfy) }
                else if temp > 50 && temp < 61{
                    print(warmishComfy) }
                else if temp > 60 && temp < 71{
                    print(warmerComfy) }
                else if (temp > 60 && temp < 71){
                    print(hotComfy)
                }
                else {
                    Text("ur mom") //hawtComfy
                }
            }
            
            }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
        
    }
        }


struct ComfyView_Previews: PreviewProvider {
    static var previews: some View {
        ComfyView(weather: Weather(), response : Response(), data : Data())
    }
}
