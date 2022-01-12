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
        VStack(spacing:5){
            Spacer()
            Text("By using our app you confirm that you accept our")
                .foregroundColor(Color.white)
            HStack{
                Link("Terms of Use",
                       destination: URL(string: "abc@abc.com")!).foregroundColor(Color("ColorOrange"))
                Text("and").foregroundColor(Color.white)
               Link("Privacy Policy.",
                      destination: URL(string: "abc@abc.com")!).foregroundColor(Color("ColorOrange"))
            }
        }.multilineTextAlignment(.center)
            .font(Font.custom("poppins.extralight",size: 15))
            .frame(width: Screen.screenSize.width * 0.99, height: 45, alignment: .center)
                
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView()
            .preferredColorScheme(.dark)
    }
}
