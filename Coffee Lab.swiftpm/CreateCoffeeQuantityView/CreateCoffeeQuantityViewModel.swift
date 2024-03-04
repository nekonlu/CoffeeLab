//
//  File.swift
//  
//
//  Created by Ohara Yoji on 2024/02/12.
//

import Foundation

class CreateCoffeeQuantityViewModel: ObservableObject {
    @Published var quantities: [MaterialWithQuantity] = [
        .init(
            material: .init(
                name: "Milk",
                description: "Milk is milk",
                color: .init(.blue.gradient)
            ),
            quantity_gram: 10
        )
    ]

    func add(materialWithQuantity: MaterialWithQuantity) {
        quantities.append(materialWithQuantity)
    }
}
