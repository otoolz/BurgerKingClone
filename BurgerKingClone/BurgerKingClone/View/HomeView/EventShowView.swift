//
//  EventShowView.swift
//  BurgerKingClone
//
//  Created by KiWoong Hong on 2022/05/22.
//

import SwiftUI

struct EventShowView: View {
    
    @State private var isEventDetailView = false
    @State private var current = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            //TabView(selection: $current) {
            TabView(selection: $current) {
                ForEach(EventInfo.dummyData.indices, id: \.self) { index in
                    VStack {
                        Button(action: {
                            isEventDetailView = true
                        }, label: {
                            Image(EventInfo.dummyData[index].thumbNail)
                                .resizable()
                                .scaledToFill()
                        }).fullScreenCover(isPresented: $isEventDetailView, content: {
                            EventDetailView(isEventDetailView: $isEventDetailView, info: EventInfo.dummyData[index])
                        }).onAppear {
                        }
                        
                    }
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.gray, lineWidth: 2)
                )
                .padding(.leading, 15)
                .padding(.trailing, 15)
                //.frame(width: 380, height: 380)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        current = current < EventInfo.dummyData.count ? current + 1 : 0
                    }
                })
        }
    }
}

class EventInfoViewModel: ObservableObject {
}

struct EventInfo: Decodable {
    var thumbNail: String
    var detailImage: String
    var title: String
    var descript: String
}

extension EventInfo: Hashable {
    
    static let dummyData: [EventInfo] = [
        EventInfo(thumbNail: "ThumbNail1", detailImage: "detailImage1", title: "title1", descript: "descript1"),
        EventInfo(thumbNail: "ThumbNail2", detailImage: "detailImage2", title: "title2", descript: "descript2"),
        EventInfo(thumbNail: "ThumbNail3", detailImage: "detailImage3", title: "title3", descript: "descript3")
    ]
    
}

struct EventShowView_Previews: PreviewProvider {
    static var previews: some View {
        EventShowView()
    }
}
