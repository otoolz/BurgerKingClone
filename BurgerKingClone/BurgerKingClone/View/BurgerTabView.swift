//
//  BurgerTabView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/23.
//

import SwiftUI

struct BurgerTabView: View {
    var body: some View {
        
        
        ZStack {
            TabView {
                ForEach(Tab.allCases, id: \.self) { tab in
                    tab.view
                        .tabItem{
                            Label(tab.tabName, systemImage: tab.systemImage)
                        }
                    if tab == Tab.cuopon {
                        Spacer()
                    }
                }
            }.accentColor(Color("BurgerRed"))
                .
            
            GeometryReader { proxy in
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .trim(from: 0.5, to: 1.0)
                        .frame(width: 65, height: 140)
                        .foregroundColor(Color("BurgerBrown"))
                    VStack {
                        Image(systemName: "square.and.arrow.down.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width / 10, height: proxy.size.height / 36)
                            .padding(.top, 10)
                        Text("Order")
                            .font(.footnote)
                        Spacer()
                    }.foregroundColor(Color("BurgerBackground"))
                        .offset(x: 0, y: proxy.frame(in: .global).midY - 105)
                }.offset(x: proxy.frame(in: .global).midX - 32, y: proxy.frame(in: .global).midY - 45)
            }
        }
    }
}

struct BurgerTabView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerTabView()
    }
}
