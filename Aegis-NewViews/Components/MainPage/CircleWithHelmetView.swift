//
//  CircleWithHelmetView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct CircleWithHelmetView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
 
    
    var body: some View {
        VStack(alignment: .center){
            
                ZStack(){
                    Circle()
                        .fill(Color("CircleBorderColor-1"))
                        .frame(width: Screen.screenSize.width < 375 ? 136 : 150, height: Screen.screenSize.height < 700 ? 68 : 75)
                    Circle()
                        .fill(Color("MainColor"))
                        .frame(width: Screen.screenSize.width < 375 ? 110 : 130, height: Screen.screenSize.height < 700 ? 55 : 65)
                        .overlay(Circle().stroke(Color("CircleBorderColor"),lineWidth: 4))
                    Image(colorScheme == .light ? "helmet-white" : "helmet-dark")
                }
           
        }
    }
}

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
