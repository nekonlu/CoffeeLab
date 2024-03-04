//
//  File.swift
//  
//
//  Created by Ohara Yoji on 2024/02/11.
//

import Foundation

class CoffeeQuantityListViewModel: ObservableObject {
    @Published var coffeeQuantities: [CoffeeRecipe] = []

    func demoCoffeeQuantities() {
        coffeeQuantities = [
            CoffeeRecipe(
                name: "Americano",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 100),
                        .init(material: DefaultMaterials.boilingWater.material, quantity_gram: 100)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "Cappuccino",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.foamMilk.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.steamMilk.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 100)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "American",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "Hoge",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "Fuga",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "Piyo",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "AAA",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "BBBBB",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "CCCCCC",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "DDDDDD",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "AAADF",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "HOI",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "FD",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "jio",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "btre",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "njovewr",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "nuigerw",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "bhuwev",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "njweqr;",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "@fodas",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "nfjas",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "lkrwe;q",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "biwe@",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            ),
            CoffeeRecipe(
                name: "@abs",
                quantity: QuantityOfMaterials(
                    materials: [
                        .init(material: DefaultMaterials.coldWater.material, quantity_gram: 50),
                        .init(material: DefaultMaterials.espresso.material, quantity_gram: 50)
                    ]
                )
            )
        ]
    }
}
