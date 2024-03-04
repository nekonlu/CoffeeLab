//
//  File.swift
//  
//
//  Created by Ohara Yoji on 2024/02/08.
//

import Foundation
import SwiftUI

struct CoffeeMaterialList {
    let defaultList: [Material] = [
        .init(
            name: "DripCoffee",
            description: "It is a common coffee extracted with hot water",
            color: .init(Color.brown.gradient)
        ),
        .init(
            name: "Milk",
            description: "Milk",
            color: .init(Color.white.gradient)
        ),
        .init(
            name: "Boiling water",
            description: "Boiling Water",
            color: .init(Color.orange.gradient)
        ),
        .init(
            name: "Espresso",
            description: "Espresso",
            color: .init(Color.brown.gradient)
        )
    ]
}

struct Material {
    let name: String
    let description: String
    let style: AnyShapeStyle
    init(name: String, description: String, color: AnyShapeStyle) {
        self.name = name
        self.description = description
        self.style = color
    }
}

enum DefaultMaterials {
    case dripCoffee
    case milk
    case boilingWater
    case espresso
    case coldWater
    case foamMilk
    case steamMilk

    var material: Material {
        switch self {
        case .dripCoffee:
            return Material(
                name: "DripCoffee",
                description: "It is a common coffee extracted with hot water",
                color: .init(Color.brown.gradient)
            )
        case .milk: 
            return .init(
                name: "Milk",
                description: "Milk",
                color: .init(Color.white.gradient)
            )
        case .boilingWater:
            return .init(
                name: "boiling water",
                description: "Boiling Water",
                color: .init(Color.orange.gradient)
            )
        case .espresso:
            return .init(
                name: "Espresso",
                description: "Espresso",
                color: .init(Color.brown.gradient)
            )
        case .coldWater:
            return .init(
                name: "Cold Water",
                description: "Cold Water",
                color: .init(Color.blue.gradient)
            )
        case .foamMilk:
            return .init(
                name: "Foam Milk",
                description: "Foam milk",
                color: .init(Color.white.gradient)
            )
        case .steamMilk:
            return .init(
                name: "Steam Milk",
                description: "steam milk",
                color: .init(Color.white.gradient)
            )
        }
        
    }
}

struct MaterialWithQuantity: Identifiable {
    let id: UUID = .init()
    let material: Material
    let quantity_gram: Double

    init(material: Material, quantity_gram: Double) {
        self.material = material
        self.quantity_gram = quantity_gram
    }
}

struct QuantityOfMaterials {


    let materials: [MaterialWithQuantity]

    init(materials: [MaterialWithQuantity]) {
        self.materials = materials
    }

    func totalQuantity() -> Double {
        var total: Double = 0
        materials.forEach { i in
            total += i.quantity_gram
        }
        return total
    }
}

struct CoffeeRecipe {
    let name: String
    let quantity: QuantityOfMaterials
    init(name: String, quantity: QuantityOfMaterials) {
        self.name = name
        self.quantity = quantity
    }
}
