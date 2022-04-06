//
//  ClothingTime.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 3/30/22.
//

import Foundation

var weather : Weather = Weather()
var response : Response = Response()
var data : Data = Data()

var choice : String = ""

var isRaining : Bool = false
var shoes = " "
var hats = ""
var sunglasses = ""
var scarves = ""
var gloves = ""
var coats = ""
var pants = ""
var shirts = ""
var socks = " "
var extra = ""
var temp = (data.temp)!
var snow = (data.snow)!

var coldColdComfy = [shirts: "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", pants: "sweatpants, thick leggings", coats: "heavy winter coat (canada goose, puffer jacket)", socks: " 2 pairs of socks or thick socks", shoes: "boots (uggs), sneakers(forces)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

var coldColdFund = [shirts: "long sleeve thick shirt, sweater or a short sleeve that is a good to layer w/ a jacket", pants: "thick leggings, thick jeans, thick corduroy pants", coats: "heavy winter coat (canada goose, puffer jacket)", socks: " 2 pairs of socks or thick socks", shoes: "boots (uggs, docs), sneakers(forces)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

var coldComfy = [shirts: "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", pants: "sweatpants, leggings", coats: "heavy winter coat (canada goose, puffer jacket)", socks: "a good pair of socks", shoes: "boots(uggs), sneakers(forces, converse, vans)", gloves: "", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

var coldFund = [shirts: "long sleeve thick shirt, sweater or a short sleeve that is a good to layer w/ a jacket", pants: "leggings, jeans, corduroy", coats: "heavy winter coat (canada goose, puffer jacket)", socks: "a good pair of socks", shoes: "boots(uggs, docs), sneakers(forces, converse, vans)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]


var coldishComfy = [shirts: "long sleeve shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", pants: "sweatpants, leggings", coats: "basic winter coat (north face)", socks: "", shoes: "sneakers(forces, converse, vans, nike, adidas)", gloves: "optional", scarves: "optional", hats: "optional winter hat", sunglasses: "optional", extra: ""]

var coldishFund = [shirts: "long sleeve shirt, sweater or a short sleeve that is a good to layer w/ a jacket", pants: "leggings, jeans, corduroy", coats: "basic winter coat (north face)", socks: "normal socks", shoes: "sneakers(forces, converse, vans, nike, adidas), docs", gloves: "optional", scarves: "optional", hats: "optional winter hat", sunglasses: "optional", extra: ""]


var warmishComfy = [shirts: "short sleeve w/ jacket, or long sleeve shirt", pants: " sweatpants, leggings, potentially shorts", coats: "lighter/fleece jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "", sunglasses: "optional", extra: ""]

var warmishFund = [shirts: "Long sleeve shirt, sweater, or short sleeve shirt layered over long sleeve", pants: "jeans, leggings, optional shorts", coats: "lighter/fleece jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]


var warmerComfy = [shirts: "casual t-shirt, long sleeve ", pants: "athletic shorts, sweat shorts", coats: "optional jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

var warmerFund = [shirts: "oversized t-shirt, casual long sleeve", pants: "jean shorts", coats: "optional jacket", socks: "normal socks", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hotComfy = [shirts: "casual t-shirt, tank tops", pants: "athletic shorts, sweat shorts", coats: "optional jacket", socks: "athletic socks, cotton socks", shoes: "sneakers (converse, forces, vans), birkenstocks", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hotFund = [shirts: "oversized t-shirt, tank tops", pants: " jean shorts, skirt", coats: "optional jacket", socks: "athletic socks, cotton socks", shoes: "sneakers (converse, forces, vans), birkenstocks", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hawtComfy = [shirts: "casual t-shirt, tank tops", pants: "athletic shorts, sweat shorts", coats: "optional jacket", socks: "no socks or socks w/ sneakers", shoes: "flip flops, birkenstocks, sandals, sneakers", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hawtFund = [shirts: "oversized t-shirt, tank tops", pants: " jean shorts, skirt", coats: "optional jacket", socks: "no socks or socks w/ sneakers", shoes: "flip flops, birkenstocks, sandals, sneakers", gloves: "not recommended", scarves: "not recommended", hats: "baseball cap", sunglasses: "optional", extra: ""]

func rainOrSnow()-> String{
    
    if (data.precip)! > 2.4{
        isRaining = true
    }
  
    if isRaining == true {
        coldColdComfy[shoes] = "rain boots, snow boots, waterproof shoes"
        coldColdFund[shoes] = "rain boots, snow boots, waterproof shoes"
        coldComfy[shoes] = "rain boots, snow boots, waterproof shoes"
        coldFund[shoes] = "rain boots, snow boots, waterproof shoes"
        coldishComfy[shoes] = "rain boots"
        coldishFund[shoes] = "rain boots"
        warmishFund[shoes] = "rain boots, old sneakers"
        warmishComfy[shoes] = "rain boots, old sneakers"
        warmerFund[shoes] = "old sneakers"
        warmerComfy[shoes] = "old sneakers"
        hotFund[shoes] = "old sneakers"
        hotComfy[shoes] = "old sneakers"
        hawtFund[shoes] = "old sneakers"
        hawtComfy[shoes] = "old sneakers"
        
        coldColdComfy[extra] = "Bring an umbrella!"
        coldColdFund[extra] = "Bring an umbrella!"
        coldComfy[extra] = "Bring an umbrella!"
        coldFund[extra] = "Bring an umbrella!"
        coldishComfy[extra] = "Bring an umbrella!"
        coldishFund[extra] = "Bring an umbrella!"
        warmishFund[extra] = "Bring an umbrella!"
        warmishComfy[extra] = "Bring an umbrella!"
        warmerFund[extra] = "Bring an umbrella!"
        warmerComfy[extra] = "Bring an umbrella!"
        hotFund[extra] = "Bring an umbrella!"
        hotComfy[extra] = "Bring an umbrella!"
        hawtFund[extra] = "Bring an umbrella!"
        hawtComfy[extra] = "Bring an umbrella!"
    }
    
    if snow > 0 {
        coldColdComfy[shoes] = "snow boots, good sole shoes"
        coldColdFund[shoes] = "snow boots, good sole shoes"
        coldComfy[shoes] = "snow boots, good sole shoes"
        coldFund[shoes] = "snow boots, good sole shoes"
        coldishComfy[shoes] = "no need for snow boots but good sole shoes"
        coldishFund[shoes] = "no need for snow boots but good sole shoes"
    }
    
    
    return "ur mom"
}











