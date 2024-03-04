//
//  SwiftUIView.swift
//  
//
//  Created by Ohara Yoji on 2024/02/11.
//

import SwiftUI

struct CoffeeQuantityListView: View {
    @ObservedObject private var viewmodel: CoffeeQuantityListViewModel = .init()

    @State private var isShowingCreateCoffeeQuantityView: Bool = false

    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewmodel.coffeeQuantities, id: \.name) { recipe in
                        CoffeeQuentityView(recipe: recipe)
                            .frame(height: 200)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                    }
                }
                .padding()
            }
            .navigationTitle("List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isShowingCreateCoffeeQuantityView = true
                    }, label: {
                        Image(systemName: "cup.and.saucer")
                            .overlay(alignment: .bottomLeading) {
                                Image(systemName: "plus.circle.fill")
                                    .background {
                                        Circle()
                                            .fill(.white)
                                    }
                                    .scaleEffect(0.55)
                                    .offset(x: -7, y: 7)
                            }
                    })
                }
            }
        }
        .sheet(isPresented: $isShowingCreateCoffeeQuantityView, content: {
            CreateCoffeeQuantityView()
        })
        .onAppear {
            viewmodel.demoCoffeeQuantities()
        }
    }
}

#Preview {
    CoffeeQuantityListView()
}
