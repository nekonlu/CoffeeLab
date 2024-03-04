//
//  test.swift
//  マイApp
//
//  Created by Ohara Yoji on 2024/02/10.
//

import SwiftUI

struct Test: View {

    let heterogeneousArray: [StyleElement] = [
        StyleElement(style: .init(Color.blue)),
        StyleElement(
            style: .init(LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
        )),
        StyleElement(style: .init(Color.green.gradient))
    ]

    var body: some View {
        Text("Hello")

        ForEach(heterogeneousArray, id: \.id) { i in
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(i.style)
        }
    }
}

struct StyleElement: Identifiable {
    let id: UUID = .init()
    let style: AnyShapeStyle
    init(style: AnyShapeStyle) {
        self.style = style
    }
}

#Preview {
    Test()
}
