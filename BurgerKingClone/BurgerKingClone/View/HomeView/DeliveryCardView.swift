//
//  DeliveryCardView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct DeliveryCardView: View {
    
    let cardWidth = 180
    let cardHeight = 100
    
    var body: some View {
        HStack {
            VStack {
                Text("Delivery")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.bold, size: 14))
                
                Text("To the door!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.regular, size: 12))
            }
            .padding(.leading, 10)
            .frame(maxWidth: CGFloat(cardWidth), maxHeight: .infinity)
            .foregroundColor(Color("BurgerBackground"))
            
            Spacer()
            
            Image(systemName: "bicycle")
                .frame(maxHeight: .infinity)
                .scaledToFit()
                .padding()
                .foregroundColor(Color("BurgerBackground"))
        }
        .background(Color("BurgerGreen"))
        .cornerRadius(15)
        .frame(maxHeight: 90)
    }
}

struct DeliveryCardView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryCardView()
    }
}
