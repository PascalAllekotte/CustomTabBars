//
//  Extensions.swift
//  CustomTabBars
//
//  Created by Pascal Allekotte on 07.09.24.
//

import SwiftUI

// Erweiterung für alle SwiftUI-Ansichten
extension View {
    // Eine Eigenschaft, um die sicheren Bildschirmränder (Safe Area) abzurufen
    var safeArea: UIEdgeInsets {
        // Versucht, die sicheren Ränder des ersten Fensters der App zu finden
        if let safeArea = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets {
            return safeArea 
        }
        
        return .zero // Gibt null (keine sicheren Ränder) zurück, falls nichts gefunden wird
    }
}


/// Glow Custom View Extension
extension View {
    func glow(_ color: Color, radius: CGFloat) -> some View {
        self
            .shadow(color: color, radius: radius / 2.5)
            .shadow(color: color, radius: radius / 2.5)
            .shadow(color: color, radius: radius / 2.5)
    }
}
