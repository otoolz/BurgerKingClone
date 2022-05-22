//
//  EventDetailView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct EventDetailView: View {
    
    @Binding var isEventDetailView: Bool
    let info: EventInfo
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button(action: {
                        isEventDetailView.toggle()
                    }, label: {
                        Image(systemName: "chevron.left")
                    })
                    .padding()
                    Spacer()
                }
                Text("Event")
                    .font(.custom(FontsManager.Flame.bold, size: 22))
            }
            .foregroundColor(Color("BurgerBrown"))
            
            Spacer()
            Text(info.detailImage)
            Text(info.title)
            Text(info.descript)
            Spacer()
        }
    }
}
