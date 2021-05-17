//
//  RecipeModel.swift
//  Recipe_List_App
//
//  Created by Athanasios Chatzikonstantinou on 16.03.21.
//

import Foundation

class RecipeModel: ObservableObject {
    //RecipeModel publishes recipes from Array -> Array we defined in the model and its properties
 @Published var recipes = [Recipe]()
    
    init() {
        
        //Create instance of data service and get the data
        
        self.recipes = DataService.getLocalData()
        
        
        //Set recipes property
        
        
        
    }
}
