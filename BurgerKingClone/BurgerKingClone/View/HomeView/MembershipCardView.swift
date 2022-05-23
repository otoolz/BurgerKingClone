//
//  MembershipCardView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/21.
//

import SwiftUI

struct MembershipCardView: View {
    
    @State private var isMembership = false
    
    var body: some View {
        HStack {
            VStack {
                Text(" Membership")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.bold, size: 24))
                
                Text("\n Check out membership-only benefits\n and special coupons right now!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(FontsManager.Flame.regular, size: 12))
                    .multilineTextAlignment(.leading)
            }
            .padding(.leading, 10)
            .frame(maxWidth: UIScreen.main.bounds.width)
            .foregroundColor(Color("BurgerBrown"))
            
            Spacer()
            
            Image("BurgerMembership")
                .resizable()
                .scaledToFit()
                .padding(25)
        }
        .background(.white)
        .cornerRadius(15)
        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.width / 4)
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct MembershipCardView_Previews: PreviewProvider {
    static var previews: some View {
        MembershipCardView()
    }
}
