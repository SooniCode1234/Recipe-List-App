//
//  DataService.swift
//  Recipe List App
//
//  Created by Sooni Mohammed on 2021-12-27.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")

        guard pathString != nil else {
            return []
        }

        let url = URL(fileURLWithPath: pathString!)

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()

            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)

                for recipe in recipeData {
                    recipe.id = UUID()
                }

                return recipeData

            } catch {
                print(error)
            }
        } catch {
            print(error)
        }

        return [Recipe]()
    }
}
