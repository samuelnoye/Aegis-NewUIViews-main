//
//  BottomTextView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 15/12/2021.
//

import SwiftUI

struct BottomTextView: View {
    var body: some View {
        
        //MARK: - BOTTOM TEXT
        VStack{
            Spacer()
            Text("By using our app you confirm that you accept our")
                .foregroundColor(Color.white)
            HStack{
                Button(action:{
                    // action
                }, label: {
                    Text("Terms of Use").foregroundColor(Color("ColorOrange")) })
                Text("and").foregroundColor(Color.white)
                Button(action:{
                    // action
                }, label: {
                    Text("Privacy Policy.").foregroundColor(Color("ColorOrange")) })
            }
        }.frame(width: Screen.screenSize.width * 0.99, height: 45, alignment: .center)
            .multilineTextAlignment(.center)
            .font(Font.custom("Nexa-Trial-Regular",size: 15))
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView()
            .preferredColorScheme(.dark)
    }
}
