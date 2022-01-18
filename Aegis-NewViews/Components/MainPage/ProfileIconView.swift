//
//  ProfileIconView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 18/01/2022.
//

import SwiftUI

struct ProfileIconView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color("MainColor"))
                .frame(width: Screen.screenSize.width < 375 ? 50 : 80, height: Screen.screenSize.height < 700 ? 25 : 40)
            Image(systemName: "person.crop.circle")
                .frame(width: Screen.screenSize.width < 375 ? 45 : 80, height: Screen.screenSize.height < 700 ? 22.5 : 40).border(Color("MainColor"), width: 1)
            
        }
    }
}

struct ProfileIconView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconView().previewDevice("iPhone 8")
        ProfileIconView().previewDevice("iPhone 11")
    }
}
