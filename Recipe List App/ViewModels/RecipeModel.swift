//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Sooni Mohammed on 2021-12-27.
//

import Foundation

final class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()

    init() {
        recipes = DataService.getLocalData()
    }
}
