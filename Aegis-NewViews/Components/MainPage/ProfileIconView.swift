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
        Image("me")
                .resizable()
                .scaledToFit()
               .clipShape(Circle())
            .frame(width: Screen.screenSize.width < 375 ? 60 : 70, height: Screen.screenSize.height < 700 ? 30 : 35)
       }
    }
}

struct ProfileIconView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconView().previewDevice("iPhone 8")
        ProfileIconView().previewDevice("iPhone 11")
    }
}
