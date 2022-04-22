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
        var shoes  = ""
        var shirts  = ""
        var coats = ""
        var gloves  = ""
        var extra = ""
        var pants  = ""
        var socks  = ""
        var scarves  = ""
        var gloves  = ""
        var hats  = ""
        var sunglasses = ""
               

        ZStack{
                   
                   Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
           
         
//                   if (data.precip)! > 2.4 {
            
//                       coldColdComfy["Shoes"] = "rain boots, snow boots, waterproof shoes"
//                       coldComfy["Shoes"] = "rain boots, snow boots, waterproof shoes"
//                       coldishComfy["Shoes"] = "rain boots"
//                       warmishComfy["Shoes"] = "rain boots, old sneakers"
//                       warmerComfy["Shoes"] = "old sneakers"
//                       hotComfy["Shoes"] = "old sneakers"
//                       hawtComfy["Shoes"] = "old sneakers"
//
//                       coldComfy["Extra"] = "Bring an umbrella!"
//                       coldishComfy["Extra"] = "Bring an umbrella!"
//                       warmishComfy["Extra"] = "Bring an umbrella!"
//                       warmerComfy["Extra"] = "Bring an umbrella!"
//                       hotComfy["Extra"] = "Bring an umbrella!"
//                       hawtComfy["Extra"] = "Bring an umbrella!"
//          }
                   VStack{
                       
                       if temp < 21 {
                        
                            VStack{
                                Text("Shirts: " + (coldColdComfy["Shirts"] ?? "ur mom"))
                                Text("Pants: " + (coldColdComfy["Pants"] ?? "ur mom"))
                                Text("Coats: " + (coldColdComfy["Coats"] ?? "Optional"))
                                Text("Socks: " + (coldColdComfy["Socks"] ?? "Optional"))
                                Text("Shoes: " + (coldColdComfy["Shoes"] ?? "ur mom"))
                                Text("Gloves: " + (coldColdComfy["Gloves"] ?? "Optional"))
                                Text("Scarves: " + (coldColdComfy["Scarves"] ?? "Optional"))
                                Text("Hats: " + (coldColdComfy["Hats"] ?? "Optional"))
                                Text("Sunglasses: " + (coldColdComfy["Sunglasses"] ?? "Optional"))
                                Text("Extra: " + (coldColdComfy["Extra"] ?? "None"))
                        
                                                       }
                        
                       }
                        
                     
                        if temp > 20 && temp < 33{
                            
//                            if (data.precip)! > 2.4 {
//                                coldComfy["Shoes"] = "rain boots, snow boots, waterproof shoes"
//                                coldComfy["Extra"] = "Bring an umbrella!"
//
//                            }
                          
                               VStack{
                                   Text("Shirts: " + (coldComfy["Shirts"] ?? "ur mom"))
                                   Text("Pants: " + (coldComfy["Pants"] ?? "ur mom"))
                                   Text("Coats: " + (coldComfy["Coats"] ?? "Recommended"))
                                   Text("Socks: " + (coldComfy["Socks"] ?? "ur mom"))
                                   Text("Shoes" + (coldComfy["Shoes"] ?? "ur mom"))
                                   Text("Gloves: " + (coldComfy["Gloves"] ?? "Recommended"))
                                   Text("Scarves: " + (coldComfy["Scarves"] ?? "Recommended"))
                                   Text("Hats: " + (coldComfy["Hats"] ?? "Optional"))
                                   Text("Sunglasses: " + (coldComfy["Sunglasses"] ?? "Optional"))
                                   Text("Extra: " + (coldComfy["Extra"] ?? "None"))

                               }}
//
                       if temp > 32 && temp < 51{
                     
//                        if (data.precip)! > 2.4 {
//                            coldishComfy["Shoes"] = "rain boots"
//                            coldishComfy["Extra"] = "Bring an umbrella!"
//                        }
                        
                               VStack{
                                   Text("Shirts: " + (coldishComfy["Shirts"] ?? "ur mom"))
                                   Text("Pants: " + (coldishComfy["Pants"] ?? "ur mom"))
                                   Text("Coats: " + (coldishComfy["Coats"] ?? "Recommended"))
                                   Text("Socks: " + (coldishComfy["Socks"] ?? "ur mom"))
                                   Text("Shoes: " + (coldishComfy["Shoes"] ?? "ur mom"))
                                   Text("Gloves: " + (coldishComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!"))
                                   Text("Scarves: " + (coldishComfy["Scarves"] ?? "Optional"))
                                   Text("Hats: " + (coldishComfy["Hats"] ?? "Optional"))
                                   Text("Sunglasses: " + (coldishComfy["Sunglasses"] ?? "Optional"))
                                   Text("Extra: " + (coldishComfy["Extra"] ?? "None"))
                               }
                           }
//
                       if temp > 50 && temp < 61{
                        
//                        if (data.precip)! > 2.4 {
//                            warmishComfy["Shoes"] = "rain boots, old sneakers"
//                            warmishComfy["Extra"] = "Bring an umbrella!"
//                        }
                         
                               VStack{
                                   Text("Shirts: " + (warmishComfy["Shirts"] ?? "ur mom"))
                                   Text("Pants: " + (warmishComfy["Pants"] ?? "ur mom"))
                                   Text("Coats: " + (warmishComfy["Coats"] ?? "Optional"))
                                   Text("Socks: " + (warmishComfy["Socks"] ?? "ur mom"))
                                    Text("Shoes: " + (warmishComfy["Shoes"] ?? "ur mom"))
                                   Text("Gloves: " + (warmishComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!"))
                                   Text("Scarves: " + (warmishComfy["Scarves"] ?? "Optional"))
                                   Text("Hats: " + (warmishComfy["Hats"] ?? "Optional"))
                                   Text("Sunglasses: " + (warmishComfy["Sunglasses"] ?? "Optional"))
                                   Text("Extra: " + (warmishComfy["Extra"] ?? "None"))

                               }
                       }

                   if temp > 60 && temp < 71{
                    
//                    if (data.precip)! > 2.4 {
//                        warmerComfy["Shoes"] = "old sneakers"
//                        warmerComfy["Extra"] = "Bring an umbrella!"
//                    }
                           VStack{
                                Text("Shirts: " + (warmerComfy["Shirts"] ?? "ur mom"))
                                Text("Pants: " + (warmerComfy["Pants"] ?? "ur mom"))
                                Text("Coats: " + (warmerComfy["Coats"] ?? "Optional"))
                                Text("Socks: " + (warmerComfy["Socks"] ?? "ur mom"))
                                Text("Shoes: " + (warmerComfy["Shoes"] ?? "ur mom"))
                               Text("Gloves: " + (warmerComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!"))
                               Text("Scarves: " + (warmerComfy["Scarves"] ?? "Optional"))
                               Text("Hats: " + (warmerComfy["Hats"] ?? "Optional"))
                               Text("Sunglasses: " + (warmerComfy["Sunglasses"] ?? "Optional"))
                               Text("Extra: " + (warmerComfy["Extra"] ?? "None"))

                           }

                       }
                   
//
                   if temp > 72 && temp < 86 {
//                    if (data.precip)! > 2.4 {
//                        hotComfy["Shoes"] = "old sneakers"
//                        hotComfy["Extra"] = "Bring an umbrella!"
//                    }
                           VStack{
                               Text("Shirts: " + (hotComfy["Shirts"] ?? "ur mom"))
                               Text("Pants: " + (hotComfy["Pants"] ?? "ur mom"))
                               Text("Coats: " + (hotComfy["Coats"] ?? "Optional"))
                               Text("Socks: " + (hotComfy["Socks"] ?? "ur mom"))
                                Text("Shoes: " + (hotComfy["Shoes"] ?? "ur mom"))
                               Text("Gloves: " + (hotComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!"))
                               Text("Scarves: " + (hotComfy["Scarves"] ?? "Optional"))
                               Text("Hats: " + (hotComfy["Hats"] ?? "Optional"))
                               Text("Sunglasses: " + (hotComfy["Sunglasses"] ?? "Optional"))
                               Text("Extra: " + (hotComfy["Extra"] ?? "None"))

                           }

                   }
//
                   if temp > 86 {
//                    if (data.precip)! > 2.4 {
//                        hawtComfy["Shoes"] = "old sneakers"
//                        hawtComfy["Extra"] = "Bring an umbrella!"
                    VStack{
                        Text("Shirts: " + (hawtComfy["Shirts"] ?? "ur mom"))
                        Text("Pants: " + (hawtComfy["Pants"] ?? "ur mom"))
                        Text("Coats: " + (hawtComfy["Coats"] ?? "Optional"))
                        Text("Socks: " + (hawtComfy["Socks"] ?? "ur mom"))
                         Text("Shoes: " + (hawtComfy["Shoes"] ?? "ur mom"))
                        Text("Gloves: " + (hawtComfy["Gloves"] ?? "Always recommended, but maybe not the best choice"))
                        Text("Scarves: " + (hawtComfy["Scarves"] ?? "Not recommended"))
                        Text("Hats: " + (hawtComfy["Hats"] ?? "Optional"))
                        Text("Sunglasses: " + (hawtComfy["Sunglasses"] ?? "Optional"))
                        Text("Extra: " + (hawtComfy["Extra"] ?? "None"))
                    }
                    }
                      
                       
                }
            
                   }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
}}
           
      
struct ComfyView_Previews: PreviewProvider {
           static var previews: some View {
               ComfyView(weather: Weather(), response : Response(), data : Data())
           }
       }




