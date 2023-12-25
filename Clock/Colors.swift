//
//  Colors.swift
//  Clock
//
//  Created by Aizada on 25.12.2023.
//

import SwiftUI

extension Color {
    static let lightYellow = Color(hex: "#FFE066")
    static let lightRed = Color(hex: "#FF8983")
    
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0

        scanner.scanLocation = 1
        scanner.scanHexInt64(&rgbValue)

        self.init(
            red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: Double(rgbValue & 0x0000FF) / 255.0
        )
    }
}
