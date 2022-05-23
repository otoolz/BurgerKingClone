//
//  SwiftUIView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/24.
//

import SwiftUI

enum Tab: CaseIterable {
    
    case home
    case cuopon
    case myKing
    case more
    
    var tabName: String {
        switch self {
        case .home : return "Home"
        case .cuopon : return "Cuopon"
        case .myKing : return "myKing"
        case .more : return "More"
        }
    }
    
    var systemImage: String {
        switch self {
        case .home : return "house.fill"
        case .cuopon : return "ticket"
        case .myKing : return "sparkles"
        case .more : return "ellipsis"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .home : HomeView()
        case .cuopon : Text("cuopon")
        case .myKing : Text("myKing")
        case .more : Text("More")
        }
    }
}
