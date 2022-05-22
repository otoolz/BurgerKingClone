//
//  NewProductView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct NewProductScrollView: View {
    var body: some View {
        VStack {
            Text("It's NEW")
                .font(.custom(FontsManager.Flame.bold, size: 22))
                .foregroundColor(Color("BurgerBrown"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(15)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(BurgerInfo.dummy, id: \.self) { burger in
                        NewProductCardView(burger: burger)
                    }
                }
            }.frame(height: 180)
                .padding(.leading, 15)
                .padding(.trailing, 15)
        }
    }
}

struct NewProductScrollView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductScrollView()
    }
}
