//
//  Color.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 6.04.2023.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()

}


struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("Background")
    let orange = Color("OrangeColor")
    let purple = Color("PurpleColor")
    let secondaryText = Color("SecondaryTextColor")
    
}


struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
    
}

