//
//  MembershipView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct MembershipView: View {
    
    @Binding var isMembership: Bool
    
    var body: some View {
        
        VStack {
            ZStack {
                HStack {
                    Button(action: {
                        isMembership.toggle()
                    }, label: {
                        Image(systemName: "chevron.left")
                    })
                    .padding()
                    Spacer()
                }
                Text("Membership")
                    .font(.custom(FontsManager.Flame.bold, size: 22))
            }
            .foregroundColor(Color("BurgerBrown"))
            
            Spacer()
            Text("Membership View!")
            Spacer()
        }
    }
}
