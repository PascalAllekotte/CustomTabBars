//
//  Tab1.swift
//  CustomTabBars
//
//  Created by Pascal Allekotte on 07.09.24.
//

import Foundation

enum Tab1: String, CaseIterable {  // Ein Enum definieren, welches von String, CaseIterable erbt
    case play = "Play"
    case explore = "Explore"                //
    case store = "PS Store"                 // Aufzählung der Fälle für die Tabs
    case library = "Game Library"           //
    case search = "Search"
    
    // Index von jedem Case
    var index: CGFloat {
        return CGFloat(Tab1.allCases.firstIndex(of: self) ?? 0 ) // Ermittelt den Index des aktuellen Falls oder gibt 0 zurück
    }
    
    // Zählt die Anzahl an Cases und gibt sie als CGFloat zurück
    static var count: CGFloat {
        return CGFloat(Tab1.allCases.count)
    }
    
    
}
