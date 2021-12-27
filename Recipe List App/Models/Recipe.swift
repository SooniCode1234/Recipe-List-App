//
//  Recipe.swift
//  Recipe List App
//
//  Created by Sooni Mohammed on 2021-12-27.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id: UUID?
    let name: String
    let featured: Bool
    let image: String
    let description: String
    let prepTime: String
    let cookTime: String
    let totalTime: String
    let servings: Int
    let ingredients: [String]
    let directions: [String]
}
