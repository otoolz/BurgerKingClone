//
//  HomeView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/21.
//

import SwiftUI

struct HomeView: View {
    @State private var isMembership = false
    var body: some View {
            VStack {
                // HomeView Header
                HeaderView()
                
                // HomeView Body
                ScrollView {
                    VStack {
                    //Membership Card View
                        Button(action: {
                            isMembership = true
                        }, label: {
                            MembershipCardView()
                        }).fullScreenCover(isPresented: $isMembership, content: {
                            MembershipView(isMembership: $isMembership)
                        })
                    
                    // Event Show View
                        EventShowView()
                        
                    // KingOrderCardView, DeliveryCardView
                        HStack {
                            KingOrderCardView()
                            DeliveryCardView()
                        }
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                    
                    // NewProductView
                        NewProductScrollView()
                        
                    }
                }
                
                
                
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
