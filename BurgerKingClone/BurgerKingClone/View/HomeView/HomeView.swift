//
//  HomeView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                HeaderView()
                
                
                // membershipView
                // ShowView
                // KingOrderView, DeliveryView
                // It's NEW
                
                Spacer()
                
            }
            .background(Color("BurgerBackground"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
