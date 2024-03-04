//
//  File.swift
//  
//
//  Created by Ohara Yoji on 2024/02/14.
//

import Foundation
import SwiftUI

extension Color {
    enum defaultColors: String, CaseIterable {
        case white = "White"
        case brown = "Brown"
        case blue = "Blue"
        case green = "Green"
        case red = "Red"
        case orange = "Orange"
        case black = "Black"

        var color: Color {
            switch self {
            case .white:
                return Color.white
            case .brown:
                return Color.brown
            case .blue:
                return Color.blue
            case .green:
                return Color.green
            case .red:
                return Color.red
            case .orange:
                return Color.orange
            case .black:
                return Color.black
            }
        }
    }
}
