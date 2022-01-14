//
//  CircleWithHelmetView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct CircleWithHelmetView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @Binding var circleTabIndex: Int
    //@State private var tabSelection = 0
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            
            Button(action:{
                // action
                circleTabIndex = 2
            }, label: {
                ZStack(){
                    Circle()
                        .fill(Color("CircleBorderColor-1"))
                        .frame(width: 150, height: 75)
                    Circle()
                        .fill(Color("MainColor"))
                        .frame(width: 130, height: 65)
                        .overlay(Circle().stroke(Color("CircleBorderColor"),lineWidth: 4))
                    Image(colorScheme == .light ? "helmet-white" : "helmet-dark")
                }
            })
        }
    }
}

