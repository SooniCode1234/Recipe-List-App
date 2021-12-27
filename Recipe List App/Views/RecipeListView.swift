//
//  RecipeListView.swift
//  Recipe List App
//
//  Created by Sooni Mohammed on 2021-12-27.
//

import SwiftUI

struct RecipeListView: View {
    
    @StateObject var model = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(model.recipes) { r in
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                }
            }
            .navigationTitle("All Recipes")
            .listStyle(.plain)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
