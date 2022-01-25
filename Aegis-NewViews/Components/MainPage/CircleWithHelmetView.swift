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
                        .fill(Color("CircleBorderColor"))
                        .frame(width: Screen.screenSize.width < 375 ? 136 : 150, height: Screen.screenSize.height < 700 ? 68 : 75)
                        .overlay(Circle().stroke(Color("CircleBorderColor-1"),lineWidth: 3))
                    Circle()
                        .fill(Color("MainColor"))
                        .frame(width: Screen.screenSize.width < 375 ? 104 : 124, height: Screen.screenSize.height < 700 ? 52 : 62)
                        
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
