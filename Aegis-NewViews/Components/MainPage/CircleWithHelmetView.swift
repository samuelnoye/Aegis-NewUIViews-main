//
//  CircleWithHelmetView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct CircleWithHelmetView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
   // @Binding var circleTabIndex: Int
    //@State private var tabSelection = 0
    var body: some View {
        VStack(alignment: .center){
            //Spacer()
            
            Button(action:{
                // action
              
            }, label: {
                ZStack(){
                    Circle() //width: 150, height:75 //width: 130, height: 65
                        .fill(Color("CircleBorderColor-1"))
                        .frame(width: Screen.screenSize.width < 375 ? 140 : 150, height: Screen.screenSize.height < 700 ? 70 : 75)
                    Circle()
                        .fill(Color("MainColor"))
                        .frame(width: Screen.screenSize.width < 375 ? 110 : 130, height: Screen.screenSize.height < 700 ? 55 : 65)
                        .overlay(Circle().stroke(Color("CircleBorderColor"),lineWidth: 4))
                    Image(colorScheme == .light ? "helmet-white" : "helmet-dark")
                }
            }).buttonStyle(FlatLinkStyle())
        }
    }
}

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
