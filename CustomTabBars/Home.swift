//
//  Home.swift
//  CustomTabBars
//
//  Created by Pascal Allekotte on 07.09.24.
//

import SwiftUI

struct Home: View {
    // MARK: VARIABLES -
    @State private var activeTab: Tab1 = .play // Zustandvariable von dem Binding var auf customTabBar1
    
    
    // MARK: VIEW -
    var body: some View {
        VStack(spacing: 0){
         Spacer()
            
            
            // CustomTabBar1
            CustomTabBar1(activeTab: $activeTab)
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Rectangle()
                .fill(Color("BG"))
                .ignoresSafeArea()
        }
    }
}

#Preview {
    Home()
}
