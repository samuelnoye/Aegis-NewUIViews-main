//
//  SearchButtonView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 16/01/2022.
//

import SwiftUI

struct SearchButtonView: View {
    //MARK: - PROPERETIES
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var tabSelection = 0
    let buttonLabel = ["Recent","Favorites","Speed","Distance","Duration"]
  
    //MARK: - BOBY
    var body: some View {
       HStack{
            ForEach(0..<5){num in
                Button(action:{
                    // action
                    tabSelection = num
                }){
                    Text(buttonLabel[num])
                        .font(Font.custom("poppins.extralight", size: 10))
                        .foregroundColor(tabSelection == num ? Color.white : Color("TextColor"))
                        .padding(.horizontal,13)
                        .padding(.vertical,7)
                }//: Button
                .background(
                    Capsule()
                        .fill(tabSelection == num ? Color("MainColor") : Color("HomePageColor"))
                )
                
            }//.padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
         }//.padding()
        
      
        
        
        
    }
}
