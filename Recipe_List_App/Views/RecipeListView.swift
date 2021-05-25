//
//  RecipeListView.swift
//  Recipe_List_App
//
//  Created by Athanasios Chatzikonstantinou on 16.03.21.
//

import SwiftUI

struct RecipeListView: View {
    //Reference the viewmodel
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        NavigationView {
            
            List(model.recipes){ r in
            
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        
                        // MARK: Row item
                        HStack{
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped() //Bilder not stretched
                                .cornerRadius(5)
                            Text(r.name)
                            
                        }

                    })
            }.navigationBarTitle("All Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
