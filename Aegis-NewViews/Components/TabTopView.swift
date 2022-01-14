//
//  TabTopView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct TabTopView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        ZStack{
            HStack{
                Image("tabViewlogo-white").resizable()
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(Color("MainColor"))
            }.padding()
        }.background(Color("HomePageColor"))
        .frame(width: Screen.screenSize.width*1.0, height: Screen.screenSize.height*0.20)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabTopView_Previews: PreviewProvider {
    static var previews: some View {
        TabTopView().preferredColorScheme(.dark)
        TabTopView().preferredColorScheme(.light)
    }
}
