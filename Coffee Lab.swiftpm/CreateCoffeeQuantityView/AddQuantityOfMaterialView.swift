//
//  SwiftUIView.swift
//  
//
//  Created by Ohara Yoji on 2024/02/13.
//

import SwiftUI

struct AddQuantityOfMaterialView: View {

    var completion: (MaterialWithQuantity) -> ()

    init(completion: @escaping (MaterialWithQuantity) -> Void) {
        self.completion = completion
    }

    @Environment(\.dismiss) private var dismiss: DismissAction

    @State private var name: String = ""
    @State private var description: String = ""
    @State private var amount: Double?
    @State private var style: Color = .white
    @State private var isGradient: Bool = false

    var body: some View {
        List {
            Section("Name") {
                TextField("e.g. Milk", text: $name)
            }
            Section("Description") {
                TextField("e.g. Cow's milk.", text: $description)
            }
            Section("Amount") {
                HStack {
                    TextField("e.g. 100", value: $amount, format: .number.precision(.significantDigits(2)))
                        .keyboardType(.numberPad)
                    Text("g")
                }
            }
            Section("Style") {
                Toggle("Gradient", isOn: $isGradient)
                Picker("Color", selection: $style) {
                    ForEach(Color.defaultColors.allCases, id: \.color) { color in
                        Text(color.rawValue)
                            .tag(color.color)
                    }
                }
                .pickerStyle(.menu)
            }
        }
        .navigationTitle("Add quantity of material")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Add") {
                    guard let amount = amount else {
                        return
                    }
                    let material: MaterialWithQuantity = .init(
                        material: .init(
                            name: name,
                            description: description,
                            color: {
                                if isGradient == true {
                                    return .init(style.gradient)
                                } else {
                                    return .init(style)
                                }
                            }()
                        ),
                        quantity_gram: amount
                    )
                    completion(material)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddQuantityOfMaterialView { q in
        
    }
}
