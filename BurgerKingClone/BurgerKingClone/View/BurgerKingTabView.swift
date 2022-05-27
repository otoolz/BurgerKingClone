//
//  BurgerKingTabView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/24.
//

import SwiftUI

struct BurgerKingTabView: View {
    
    @State private var selectedTab: Tab = .home
    @State private var isPop = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                
                    selectedTab.view
                        .ignoresSafeArea()
                    Spacer()
                    
                    ZStack {
                      //  Rectangle()
                        
                        HStack(spacing: -10) {
                            ForEach(Tab.allCases, id:\.self) { tab in
                                BurgerKingTabItem(selectedtab: $selectedTab,
                                                  tab: tab,
                                                  width: proxy.size.width / 5,
                                                  height: proxy.size.height / 28,
                                                  itemColor: tab == selectedTab ? "BurgerRed" : "BurgerBrown")
                                if tab == Tab.cuopon { Spacer() }
                            }
                            
                        }
                        //.background(Color("BurgerBackground"))
                        //.shadow(color: .gray, radius: 5, x: 10, y: 10)
                 //       .shadow(radius: 10)
                        .frame(maxWidth: proxy.size.width, maxHeight: proxy.size.height / 16)
                    }
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius:  35)
                        .trim(from: 0.5, to: 1.0)
                        .frame(width: proxy.size.width / 5, height: proxy.size.height / 5)
                        .foregroundColor(Color("BurgerBrown"))
                        .offset(x: 0, y: 30)
                    Button(action: {
                        isPop.toggle()
                    }, label: {
                        VStack {
                            Image(systemName: "square.and.arrow.down.fill")
                                .frame(width: proxy.size.width / 5,
                                       height: proxy.size.height / 28)
                            Text("Order")
                                .font(.footnote)
                        }.foregroundColor(Color("BurgerBackground"))
                    })
                }.offset(x: 0, y: proxy.frame(in: .global).midY - 72)
            }
        }
        .background(Color("BurgerBackground"))
    
    }
}

struct BurgerKingTabItem: View {
    
    @Binding var selectedtab: Tab
    let tab: Tab
    let width: CGFloat  //proxy.size.width / 5
    let height: CGFloat // proxy.size.height / 28
    let itemColor: String
    
    var body: some View {
        Button(action: {
            selectedtab = tab
        }, label: {
            VStack {
                Image(systemName: tab.systemImage)
                    .frame(width: width, height: height)
                Text(tab.tabName)
                    .font(.footnote)
            }.foregroundColor(Color(itemColor))
        })
    }
}

struct BurgerKingTabView_Previews: PreviewProvider {
    static var previews: some View {
        BurgerKingTabView()
    }
}
