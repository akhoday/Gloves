//
//  OptionsView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 4/27/22.
//

import SwiftUI

struct OptionsView: View {
    var weather : Weather
    var response : Response
    var data : Data
    
    //dictionaries that hold all the clothing suggestions for a comfy aesthetic. Separated based on the temperature outside
    
    //20 and below
    var coldColdComfy = ["Shirts": "long sleeve thick shirt or a short sleeve shirt that is good to layer w/ sweatshirts/jackets(zip up)",
                         "Pants": "sweatpants, thick leggings",
                         "Coats" : "heavy winter coat (canada goose, puffer jacket)",
                         "Socks": " 2 pairs of socks or thick socks",
                         "Shoes": "boots (uggs), sneakers(forces)",
                         "Gloves": "recommended",
                         "Scarves": "recommended",
                         "Hats" : "beanie, ear muffs, ski mask, head warmer headbands",
                         "Sunglasses" : "optional",
                         "Extra" : "none"]
    //21-32
    var coldComfy = ["Shirts" : "long sleeve thick shirt or a short sleeve shirt that is good to layer w/ sweatshirts/jackets(zip up)",
                     "Pants" : "sweatpants, leggings",
                     "Coats" : "heavy winter coat (canada goose, puffer jacket)",
                     "Socks" : "a good pair of socks",
                     "Shoes": "boots(uggs), sneakers(forces, converse, vans)",
                     "Gloves" : "recommended",
                     "Scarves" : "recommended",
                     "Hats": "beanie, ear muffs, ski mask, head warmer headbands",
                     "Sunglasses" : "optional",
                     "Extra" : "none"]
    
    //32-51
    var coldishComfy = ["Shirts": "long sleeve shirt or a short sleeve shirt that is good to layer w/ a sweatshirt/jacket(zip up)",
                        "Pants": "sweatpants, leggings",
                        "Coats": "basic winter coat (north face)",
                        "Socks": "normal socks",
                        "Shoes": "sneakers(forces, converse, vans, nike, adidas)",
                        "Gloves": "always recommended, but maybe not the best choice!", "Scarves": "optional", "Hats" : "optional winter hat", "Sunglasses" : "optional", "Extra" : "none"]
    //52-60
    var warmishComfy = ["Shirts": "short sleeve w/ jacket, or long sleeve shirt", "Pants": " sweatpants, leggings, potentially shorts", "Coats" : "lighter/fleece jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves" : "always recommended, but maybe not the best choice!", "Scarves" : "not recommended", "Hats" : "baseball cap, optional" , "Sunglasses" : "optional", "Extra" : "none"]
    //61-71
    var warmerComfy = ["Shirts": "casual t-shirt, long sleeve ", "Pants": "athletic shorts, sweat shorts", "Coats": "optional jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves": "always recommended, but maybe not the best choice!", "Scarves": "not recommended", "Hats": "baseball cap", "Sunglasses": "optional", "Extra" : "none"]
    //72-86
    var hotComfy = ["Shirts": "casual t-shirt, tank tops", "Pants": "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "athletic socks, cotton socks", "Shoes": "sneakers (converse, forces, vans), birkenstocks", "Gloves": "always recommended, but maybe not the best choice!", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses" : "optional", "Extra" : "none"]
    //86+
    var hawtComfy = ["Shirts" : "casual t-shirt, tank tops", "Pants" : "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "no socks or socks w/ sneakers", "Shoes": "flip flops, birkenstocks, sandals, sneakers", "Gloves" : "always recommended, but maybe not the best choice!", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses": "optional", "Extra" : "none"]
    
    
    var body: some View {
        
        let temp = (data.temp)!
        var unwrappedIcon = weather.icon!
        var bk = unwrappedIcon + "bk"
        
        ZStack{
            
            Image(bk).resizable().edgesIgnoringSafeArea(.all)
            
            //chooses which outfits to present based on the temperature
            
            if temp < 21 {
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldAcess").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
                
            }
            
            
            if temp > 20 && temp < 33{
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldAcess").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
            }
            if temp > 32 && temp < 51{
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
            }
            
            if temp > 50 && temp < 61{
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
            }
            
            if temp > 60 && temp < 71{
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
            }
            
            
            if temp > 72 && temp < 86 {
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
            }
            if temp > 86 {
                VStack{
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    HStack{
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
            }
            
            
            
        }.padding().foregroundColor(Color.fontColor).edgesIgnoringSafeArea(.all)
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView(weather: Weather(), response : Response(), data : Data())
    }
}
