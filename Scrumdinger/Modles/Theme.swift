//
//  Theme.swift
//  Scrumdinger (iOS)
//
//  Created by Ashlynn Mitchell on 2/17/22.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow

    var accentColor: Color {
        switch self {
            case
                .indigo,
                .magenta,
                .navy,
                .orange,
                .oxblood,
                .purple,
                .tan,
                .lavender
            : return .white
            case
                .bubblegum,
                .periwinkle,
                .poppy,
                .seafoam
            : return .black
            case
                .teal,
                .sky
            : return .indigo
            case
                .yellow,
                .buttercup
            : return .pink
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}

//let bubbagum : Theme = .bubblegum
//print("bubbagum \(bubbagum)")

