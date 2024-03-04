//
//  SwiftUIView.swift
//  
//
//  Created by Ohara Yoji on 2024/02/10.
//

import SwiftUI

struct CoffeeQuentityView: View {
    let recipe: CoffeeRecipe
    var body: some View {
        VStack {
            Text(recipe.name)
                .font(.title)
                .fontWeight(.bold)
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let totalQuantity = recipe.quantity.totalQuantity()

                var offsets: [Double] {
                    var offsets: [Double] = []
                    var offset: Double = 0
                    for i in recipe.quantity.materials {
                        offsets.append(offset)
                        offset += height * (i.quantity_gram / totalQuantity)
                    }
                    return offsets
                }

                ForEach(
                    Array(recipe.quantity.materials.enumerated()),
                    id: \.offset
                ) { i, material in
                    Rectangle()
                        .frame(
                            width: width,
                            height: height * (material.quantity_gram / totalQuantity)
                        )
                        .foregroundStyle(material.material.style)
                        .overlay {
                            HStack {
                                Text(material.material.name)
                                    .fontWeight(.bold)
                                    .font(.caption)
                                Spacer()
                                Text("\((Int(material.quantity_gram / totalQuantity * 100)))%")
                                    .fontWeight(.bold)
                            }
                            .padding(.horizontal, width * 0.05)
                        }
                        .offset(y: offsets[i])

                }
            }
            .mask(cupMask)
            .overlay(cupLine())
        }

    }

    func cupLine() -> some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let curveRadius = height / 7
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: height - curveRadius))
                path.addQuadCurve(
                    to: CGPoint(x: curveRadius, y: height),
                    control: CGPoint(x: 0, y: height)
                )
                path.addLine(to: CGPoint(x: width - curveRadius, y: height))
                path.addQuadCurve(
                    to: CGPoint(x: width, y: height - curveRadius),
                    control: CGPoint(x: width, y: height)
                )
                path.addLine(to: CGPoint(x: width, y: 0))
            }
            .stroke(lineWidth: width / 50)
            .fill(.black)
        }
    }

    func cupMask() -> some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let curveRadius = height / 7
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: height - curveRadius))
                path.addQuadCurve(
                    to: CGPoint(x: curveRadius, y: height),
                    control: CGPoint(x: 0, y: height)
                )
                path.addLine(to: CGPoint(x: width - curveRadius, y: height))
                path.addQuadCurve(
                    to: CGPoint(x: width, y: height - curveRadius),
                    control: CGPoint(x: width, y: height)
                )
                path.addLine(to: CGPoint(x: width, y: 0))
            }
        }
    }
}

let recipe = CoffeeRecipe(
    name: "Americano",
    quantity: QuantityOfMaterials(
        materials: [
            .init(material: DefaultMaterials.espresso.material, quantity_gram: 100),
            .init(material: DefaultMaterials.boilingWater.material, quantity_gram: 100)
        ]
    )
)

#Preview {
    CoffeeQuentityView(recipe: recipe)
}
