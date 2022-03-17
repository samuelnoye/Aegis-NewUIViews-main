//
//  TapTopProfileView.swift
//  AegisRider-iOS
//
//  Created by Samuel Noye on 03/02/2022.
//

import SwiftUI

struct TabTopProfileView: View {
    var body: some View {
        
        HStack{
            ZStack{
                Rectangle()
                    .fill(Color(Utilities.ColorScheme.homePageColor))
                VStack{
                    Spacer()
                    HStack{
                        Image("tabViewlogo")
                        Spacer()

                        Text("Profile")
                            .font(Font.custom(Utilities.FontFamily.regular, size: 15))
                            .foregroundColor(Color(Utilities.ColorScheme.textColor))
                        Text("Prof").foregroundColor(Color(Utilities.ColorScheme.homePageColor))
                        Spacer()
                        Button(action:{
                            // action
                        }, label: {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(Color(Utilities.ColorScheme.mainColor))
                                .font(Font.custom(Utilities.FontFamily.regular, size: 17))
                        })
                    }.padding()
                }
            }.background(Color(Utilities.ColorScheme.homePageColor))
                .frame(height: Screen.screenSize.height*0.12)
                .edgesIgnoringSafeArea(.all)    
    }
    }
    
}
