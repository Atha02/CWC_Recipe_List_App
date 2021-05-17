//
//  Recipe.swift
//  Recipe_List_App
//
//  Created by Athanasios Chatzikonstantinou on 16.03.21.
//

import Foundation

class Recipe:Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]       //sind in JSON beides Arrays
    var directions: [String]
    
    
}
