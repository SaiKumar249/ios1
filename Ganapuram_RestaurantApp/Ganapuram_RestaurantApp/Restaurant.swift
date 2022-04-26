//
//  Restaurant.swift
//  Ganapuram_RestaurantApp
//
//  Created by Ganapuram,Sai Kumar on 4/26/22.
//

import Foundation

struct Restarant{
   var name : String?
    var details : RestDetails?
    
}

struct RestDetails{
    var image : String?
    var item1 : String?
    var item2 : String?
    var item3 : String?
    var item4 : String?
    var item5 : String?
}

var rest1 = RestDetails(image: "AG", item1: "Boneless Buffalo Strips", item2: "Flaming Cheese Saganaki", item3: "Tex-Mex EggRolls", item4: "Bruchetta", item5: "Chicken & Pesto")

var rest2 = RestDetails(image: "Applebee's", item1: "Chicken Quesadilla", item2: "Bread Sticks", item3: "Boneless Wings", item4: "The Classic Combo", item5: "Chicken Wonton Tacos")

var rest3 = RestDetails(image: "pizzaRanch", item1: "Green Salad", item2: "Chicken Fried Steak", item3: "Chicken and Waffles", item4: "Pasta with Mariana Sauce", item5: "Soft Serve Ice Cream")

var rest4 = RestDetails(image: "SimplySiam", item1: "Pad Thai", item2: "Thai Hot Suki", item3: "Chicken Strips", item4: "Pho Noodle Soup", item5: "Noodle Platter")

var rest5 = RestDetails(image: "elMaguey", item1: "Burrito Macho", item2: "Burrito Fajita", item3: "Pollo Con Queso", item4: "Street Tacos", item5: "Asada Fries")

let restaurants = [Restarant(name: "A&G", details: rest1),Restarant(name: "Applebee's", details: rest2),Restarant(name: "Pizza Ranch", details: rest3),Restarant(name: "Simply Siams", details: rest4),Restarant(name: "El Maguey", details: rest5)]

