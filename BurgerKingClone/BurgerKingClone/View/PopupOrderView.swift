//
//  PopupOrderView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/25.
//

import SwiftUI

struct PopupOrderView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                KingOrderCardView()
                DeliveryCardView()
            }
            Spacer()
        }
        .ignoresSafeArea()
        .background(Color.black.opacity(0.65))
    }
}

struct PopupOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PopupOrderView()
    }
}
