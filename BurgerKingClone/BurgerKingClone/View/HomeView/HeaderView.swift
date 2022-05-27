//
//  HeaderView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    print("cart")
                }, label: {
                    Image(systemName: "line.3.horizontal")
                })
                
                Spacer()
                
                Button(action: {
                    print("cart")
                }, label: {
                    Image(systemName: "barcode.viewfinder")
                })
                
                Button(action: {
                    print("cart")
                }, label: {
                    Image(systemName: "cart")
                })
                
            }
            Image("BurgerLogo")
                .resizable()
                .scaledToFit()
        }
        .accentColor(Color("BurgerRed"))
        .padding()
        .frame(width: UIScreen.main.bounds.width, height: 80)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
