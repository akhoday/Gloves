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
        "Extra" : "none"]
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
                     "Extra" : "none"]
//
   var coldishComfy = ["Shirts": "long sleeve shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)",
                       "Pants": "sweatpants, leggings",
                       "Coats": "basic winter coat (north face)",
                       "Socks": "normal socks",
                       "Shoes": "sneakers(forces, converse, vans, nike, adidas)",
                       "Gloves": "always recommended, but maybe not the best choice!", "Scarves": "optional", "Hats" : "optional winter hat", "Sunglasses" : "optional", "Extra" : "none"]
//
    var warmishComfy = ["Shirts": "short sleeve w/ jacket, or long sleeve shirt", "Pants": " sweatpants, leggings, potentially shorts", "Coats" : "lighter/fleece jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves" : "always recommended, but maybe not the best choice!", "Scarves" : "not recommended", "Hats" : "baseball cap, optional" , "Sunglasses" : "optional", "Extra" : "none"]
//
    var warmerComfy = ["Shirts": "casual t-shirt, long sleeve ", "Pants": "athletic shorts, sweat shorts", "Coats": "optional jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves": "always recommended, but maybe not the best choice!", "Scarves": "not recommended", "Hats": "baseball cap", "Sunglasses": "optional", "Extra" : "none"]

    var hotComfy = ["Shirts": "casual t-shirt, tank tops", "Pants": "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "athletic socks, cotton socks", "Shoes": "sneakers (converse, forces, vans), birkenstocks", "Gloves": "always recommended, but maybe not the best choice!", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses" : "optional", "Extra" : "none"]

    var hawtComfy = ["Shirts" : "casual t-shirt, tank tops", "Pants" : "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "no socks or socks w/ sneakers", "Shoes": "flip flops, birkenstocks, sandals, sneakers", "Gloves" : "always recommended, but maybe not the best choice!", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses": "optional", "Extra" : "none"]

    
    var body: some View {
        
        let temp = (data.temp)!
        var unwrappedIcon = weather.icon!
        var bk = unwrappedIcon + "bk"
    
               

        ZStack{
                   
            Image(bk).edgesIgnoringSafeArea(.all)
           
       
                   VStack{
                       
                       if temp < 21 {
                        
                            VStack(alignment: .leading){
                                Text("Shirts: " + (coldColdComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Pants: " + (coldColdComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Coats: " + (coldColdComfy["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Socks: " + (coldColdComfy["Socks"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                              
                                if (data.precip)! > 0.04 {
                                    let shoes = "rain boots, snow boots, waterproof shoes"
                                    Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                                }
                                else { Text("Shoes: " + (coldColdComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                               
                                
                                Text("Gloves: " + (coldColdComfy["Gloves"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Scarves: " + (coldColdComfy["Scarves"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Hats: " + (coldColdComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Sunglasses: " + (coldColdComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                               
                                if (data.precip)! > 0.04 {
                                   let extra = "Bring an umbrella!"
                                    Text("Extra: " + extra)
                                }
                                else { Text("Extra: " + (coldColdComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                                                       }
                        
                       }
                        
                     
                        if temp > 20 && temp < 33{
                            

                               VStack(alignment: .leading){
                                Text("Shirts: " + (coldComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Pants: " + (coldComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Coats: " + (coldComfy["Coats"] ?? "Recommended")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Socks: " + (coldComfy["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                if (data.precip)! > 0.04 {
                                    let shoes = "rain boots, snow boots, waterproof shoes"
                                    Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                                }
                                else { Text("Shoes" + (coldComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] } }
                               
                                Text("Gloves: " + (coldComfy["Gloves"] ?? "Recommended")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Scarves: " + (coldComfy["Scarves"] ?? "Recommended")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Hats: " + (coldComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                Text("Sunglasses: " + (coldComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                               
                                if (data.precip)! > 0.04 {
                                   let extra = "Bring an umbrella!"
                                    Text("Extra: " + extra)
                                }
                                
                                else { Text("Extra: " + (coldComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}

                               }}
//
                       if temp > 32 && temp < 51{
                     
                               VStack(alignment: .leading){
                                Text("Shirts: " + (coldishComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Pants: " + (coldishComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Coats: " + (coldishComfy["Coats"] ?? "Recommended")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Socks: " + (coldishComfy["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                if (data.precip)! > 0.04 {
                                   let shoes = "rain boots"
                                    Text("Shoes: " + shoes)
                                }
                                else { Text("Shoes: " + (coldishComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                                
                                Text("Gloves: " + (coldishComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Scarves: " + (coldishComfy["Scarves"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Hats: " + (coldishComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Sunglasses: " + (coldishComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                               
                                if (data.precip)! > 0.04 {
                                   let extra = "Bring an umbrella!"
                                    Text("Extra: " + extra)
                                }
                                
                                else { Text("Extra: " + (coldishComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                               }
                           }
//
                       if temp > 50 && temp < 61{
                        
                               VStack(alignment: .leading){
                                Text("Shirts: " + (warmishComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Pants: " + (warmishComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Coats: " + (warmishComfy["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Socks: " + (warmishComfy["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                if (data.precip)! > 0.04 {
                                   let shoes = "rain boots, old sneakers"
                                    Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                                    
                                }
                                else { Text("Shoes: " + (warmishComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] } }
                                
                                Text("Gloves: " + (warmishComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Scarves: " + (warmishComfy["Scarves"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Hats: " + (warmishComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                                
                                Text("Sunglasses: " + (warmishComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                               
                                if (data.precip)! > 0.04 {
                                    let extra  = "Bring an umbrella!"
                                    Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                                }
                                else {Text("Extra: " + (warmishComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] } }

                               }
                       }

                   if temp > 60 && temp < 71{
                    
//                    if (data.precip)! > 2.4 {
//                        warmerComfy["Shoes"] = "old sneakers"
//                        warmerComfy["Extra"] = "Bring an umbrella!"
//                    }
                           VStack(alignment: .leading){
                            
                            Text("Shirts: " + (warmerComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Pants: " + (warmerComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Coats: " + (warmerComfy["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Socks: " + (warmerComfy["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            
                            if (data.precip)! > 0.04 {
                               let shoes =  "old sneakers"
                                Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                            }
                            
                            else { Text("Shoes: " + (warmerComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                           
                            Text("Gloves: " + (warmerComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Scarves: " + (warmerComfy["Scarves"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Hats: " + (warmerComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Sunglasses: " + (warmerComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                           
                            if (data.precip)! > 0.04 {
                               let extra = "Bring an umbrella!"
                                Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                            }
                            
                            else { Text("Extra: " + (warmerComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }
                                
                            }

                           }

                       }
                   
//
                   if temp > 72 && temp < 86 {
//                    if (data.precip)! > 2.4 {
//                        hotComfy["Shoes"] = "old sneakers"
//                        hotComfy["Extra"] = "Bring an umbrella!"
//                    }
                           VStack(alignment: .leading){
                            Text("Shirts: " + (hotComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Pants: " + (hotComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Coats: " + (hotComfy["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Socks: " + (hotComfy["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                           
                            if (data.precip)! > 0.04 {
                               let shoes = "old sneakers"
                                Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                                
                            }
                            else { Text("Shoes: " + (hotComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                           
                            Text("Gloves: " + (hotComfy["Gloves"] ?? "Always recommended, but maybe not the best choice!")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Scarves: " + (hotComfy["Scarves"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Hats: " + (hotComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Sunglasses: " + (hotComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                           
                            if (data.precip)! > 0.04 {
                                let extra = "Bring an umbrella!"
                                 Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                            }
                            
                            else {
                                Text("Extra: " + (hotComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] } }
                                
                            

                           }

                   }
// trying to get this to push
                   if temp > 86 {

                    VStack(alignment: .leading){
                        Text("Shirts: " + (hawtComfy["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (hawtComfy["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (hawtComfy["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                       
                        if (data.precip)! > 0.04 {
                           let shoes = "old sneakers"
                            Text("Socks: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else { Text("Socks: " + (hawtComfy["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        Text("Shoes: " + (hawtComfy["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Gloves: " + (hawtComfy["Gloves"] ?? "Always recommended, but maybe not the best choice")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (hawtComfy["Scarves"] ?? "Not recommended")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (hawtComfy["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (hawtComfy["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                       
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                             Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else {
                            Text("Extra: " + (hawtComfy["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
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
