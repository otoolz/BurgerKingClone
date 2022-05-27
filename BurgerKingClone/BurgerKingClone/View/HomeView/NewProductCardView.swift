//
//  NewProductCardView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct NewProductCardView: View {
    var burger: BurgerInfo
    var body: some View {
        
        VStack {
            Image(burger.burgerImage)
                .resizable()
                .scaledToFit()
            Text(burger.burgerName)
                .font(.custom(FontsManager.Flame.regular, size: 12))
                .foregroundColor(Color("BurgerBrown"))
        }.frame(width: 150, height: 180)
            .background(Color(.white))
            .cornerRadius(15)
    }
}

struct BurgerInfo {
    let burgerName: String
    let burgerImage: String
}

extension BurgerInfo: Hashable {
    static let dummy: [BurgerInfo] = [
        BurgerInfo(burgerName: "Diablo altimate DonutKing", burgerImage: "Burger1"),
        BurgerInfo(burgerName: "Crispy DonutChikenBurger", burgerImage: "Burger2"),
        BurgerInfo(burgerName: "Spicy DonutChikenBurger", burgerImage: "Burger3")
    ]
    
}



struct NewProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductCardView(burger: BurgerInfo(burgerName: "Burger1", burgerImage: "Burger1"))
    }
}
