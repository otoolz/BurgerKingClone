//
//  KingOrderCardView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct KingOrderCardView: View {
    
    let cardWidth = 180
    let cardHeight = 100
    
    var body: some View {
        HStack {
            VStack {
                Text("KingOrder")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.bold, size: 14))
                
                Text("Pre-order!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.regular, size: 12))
            }
            .padding(.leading, 10)
            .frame(maxWidth: CGFloat(cardWidth))
            .foregroundColor(Color("BurgerBackground"))
            
            Spacer()
            
            Image(systemName: "bag.fill")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(Color("BurgerBackground"))
        }
        .background(Color("BurgerRed"))
        .cornerRadius(15)
        .frame(maxWidth: 380, maxHeight: 100)
    }
}

struct KingOrderCardView_Previews: PreviewProvider {
    static var previews: some View {
        KingOrderCardView()
    }
}
