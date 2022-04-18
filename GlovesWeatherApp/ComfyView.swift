//
//  ComfyView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 3/30/22.
//
import SwiftUI
//comfy
struct ComfyView: View {
    
    var weather : Weather
    var response : Response
    var data : Data
    
    var coldColdComfy = ["Shirts": "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)",
        "Pants": "sweatpants, thick leggings",
        "Coats" : "heavy winter coat (canada goose, puffer jacket)",
        "Socks": " 2 pairs of socks or thick socks",
        "Shoes": "boots (uggs), sneakers(forces)",
        "Gloves": "recommended",
        "Scarves": "recommended",
        "Hats" : "beanie, ear muffs, ski mask, head warmer headbands",
        "Sunglasses" : "optional",
        "Extra" : ""]
//
    var coldComfy = ["Shirts" : "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)",
                     "Pants" : "sweatpants, leggings",
                     "Coats" : "heavy winter coat (canada goose, puffer jacket)",
                     "Socks" : "a good pair of socks",
                     "Shoes": "boots(uggs), sneakers(forces, converse, vans)",
                     "Gloves" : "",
                     "Scarves" : "recommended",
                     "Hats": "beanie, ear muffs, ski mask, head warmer headbands",
                     "Sunglasses" : "optional",
                     "Extra" : ""]
//
   var coldishComfy = ["Shirts": "long sleeve shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", "Pants": "sweatpants, leggings", "Coats": "basic winter coat (north face)", "Socks": "", "Shoes": "sneakers(forces, converse, vans, nike, adidas)", "Gloves": "optional", "Scarves": "optional", "Hats" : "optional winter hat", "Sunglasses" : "optional", "Extra" : ""]
//
    var warmishComfy = ["Shirts": "short sleeve w/ jacket, or long sleeve shirt", "Pants": " sweatpants, leggings, potentially shorts", "Coats" : "lighter/fleece jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves" : "not recommended", "Scarves" : "not recommended", "Hats" : "" , "Sunglasses" : "optional", "Extra" : ""]
//
    var warmerComfy = ["Shirts": "casual t-shirt, long sleeve ", "Pants": "athletic shorts, sweat shorts", "Coats": "optional jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves": "not recommended", "Scarves": "not recommended", "Hats": "baseball cap", "Sunglasses": "optional", "Extra" : ""]

    var hotComfy = ["Shirts": "casual t-shirt, tank tops", "Pants": "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "athletic socks, cotton socks", "Shoes": "sneakers (converse, forces, vans), birkenstocks", "Gloves": "not recommended", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses" : "optional", "Extra" : ""]

    var hawtComfy = ["Shirts" : "casual t-shirt, tank tops", "Pants" : "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "no socks or socks w/ sneakers", "Shoes": "flip flops, birkenstocks, sandals, sneakers", "Gloves" : "not recommended", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses": "optional", "Extra" : ""]

    
    var body: some View {
        
        let temp = (data.temp)!
        
        ZStack{
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
            
           
            VStack{
                if temp < 21 {
              Text(coldColdComfy.description)
                }
                else if temp > 20 && temp < 33{
                    Text(coldComfy.description) }
                else if temp > 32 && temp < 51{
                    Text(coldishComfy.description) }
                else if temp > 50 && temp < 61{
                     Text(warmishComfy.description)}
                else if temp > 60 && temp < 71{
                     Text(coldColdComfy.description)}
                else if (temp > 60 && temp < 71){
                     Text(hotComfy.description)
                }
                else {
                    Text(hawtComfy.description) //hawtComfy
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
