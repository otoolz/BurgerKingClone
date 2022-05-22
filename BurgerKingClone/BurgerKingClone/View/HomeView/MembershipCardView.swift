//
//  MembershipCardView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/21.
//

import SwiftUI

struct MembershipCardView: View {
    
    @State private var isMembership = false
    
    let cardWidth = 380
    let cardHeight = 100
    
    var body: some View {
        HStack {
            VStack {
                Text("Membership")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.bold, size: 22))
                
                Text("Check out membership-only benefits and special coupons right now!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.regular, size: 12))
            }
            .padding(.leading, 10)
            .frame(maxWidth: CGFloat(cardWidth/2) - 20)
            .foregroundColor(Color("BurgerBrown"))
            
            Spacer()
            
            Image("BurgerMembership")
                .resizable()
                .scaledToFit()
                .padding(25)
        }
        .background(.white)
        .cornerRadius(15)
        .frame(maxWidth: 380, maxHeight: 100)
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct MembershipCardView_Previews: PreviewProvider {
    static var previews: some View {
        MembershipCardView()
    }
}
