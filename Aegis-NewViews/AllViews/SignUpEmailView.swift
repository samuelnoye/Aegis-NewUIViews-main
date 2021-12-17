//
//  AuthView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/12/2021.
//

import SwiftUI

struct SignUpEmailView: View {
    //MARK: - PROPERTIES
    @State private var email: String = ""
    @State var fieldBind: String = "Email"
    @State var buttonName: String = "Continue"
    @State var fieldName: String = "Email"
    @State var buttonIconName: String = "Continue with Apple"
    @State var iconName: String = "applelogo"
    @State var dividerText: String = "or"
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("BgImg")
                .resizable()
               // .scaledToFit()
            
            VStack(spacing: 40){
                
                //MARK: - LOGO & HEADLINE TEXT
                
                LogoHeadlineView()
                
                
                //MARK: - EMAIL FIELD AND BUTTON
                VStack(spacing: 30){
                    
                    UserProfileTextFieldView(fieldBind: $fieldBind, fieldName: $fieldName)
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
                }
                
                //MARK: - DIVIDER & APPLE BUTTON
                DividerView(label: dividerText)
                
                Button(action:{
                    // action
                }, label: {
                    ButtonWithIconView(buttonName: $buttonIconName, buttonIcon: $iconName) })
                VStack(spacing: 40){
                    
                   
                  
                }
              // .padding(.bottom,100)
               
                
                //MARK: - BOTTOM TEXT
                BottomTextView()
                
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*0.90)
            .padding(.top, 90)
            
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct SignUpEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmailView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
