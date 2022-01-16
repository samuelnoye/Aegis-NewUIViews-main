//
//  SearchButtonView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 16/01/2022.
//

import SwiftUI

struct SearchButtonView: View {
    var body: some View {
        //Resend Button
        Button(action:{
           // action
       }){

      Text("Recent")
               .font(Font.custom("poppins.extralight", size: 10))
               .foregroundColor(Color.white)
               .padding(.horizontal,12.5)
               .padding(.vertical,7)
      }//: Button
       .background(
          Capsule()
              .fill(Color("MainColor")))
    
    }
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView()
    }
}
