//
//  ProfileIconView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 18/01/2022.
//

import SwiftUI

struct ProfileIconView: View {
    var body: some View {
        VStack{
        
            Image("Profile-white")
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("MainColor"), lineWidth: 2))
                .frame(width: Screen.screenSize.width < 375 ? 50 : 60, height: Screen.screenSize.height < 700 ? 25 : 30)
       }
    }
}

struct ProfileIconView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconView().previewDevice("iPhone 8")
        ProfileIconView().previewDevice("iPhone 11")
    }
}
