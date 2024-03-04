//
//  SwiftUIView.swift
//  
//
//  Created by Ohara Yoji on 2024/02/12.
//

import SwiftUI

struct CreateCoffeeQuantityView: View {

    @Environment(\.dismiss) private var dismiss: DismissAction

    @ObservedObject private var viewmodel: CreateCoffeeQuantityViewModel = .init()

    @State private var nameOfCoffee: String = ""

    var body: some View {
        NavigationStack {
            List {
                Section("Name of Coffee") {
                    TextField("e.g. Drip Coffee", text: $nameOfCoffee)
                }
                Section("Quantity") {
                    ForEach(
                        Array(viewmodel.quantities.enumerated()),
                        id: \.element.id
                    ) { index, quantity in
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(quantity.material.style)
                                    .padding(.trailing, 10)
                                Text(quantity.material.name)
                                    .font(.title2)
                                Spacer()
                                HStack(alignment: .bottom, spacing: 3) {
                                    Text("\(Int(quantity.quantity_gram))")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("g")
                                        .font(.title2)
                                }
                            }
                        }
                    }
                }

                NavigationLink("Add Quantity of Material") {
                    AddQuantityOfMaterialView { material in
                        viewmodel.add(materialWithQuantity: material)
                    }
                }
            }
            .navigationTitle("Add Quantity")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {

                    }
                }
            }
        }
    }
}

#Preview {
    CreateCoffeeQuantityView()
}
