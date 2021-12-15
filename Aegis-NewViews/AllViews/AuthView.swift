//
//  AuthView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/12/2021.
//

import SwiftUI

struct AuthView: View {
    //MARK: - PROPERTIES
    @State private var email: String = ""
    @State var fieldBind: String = ""
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
                .scaledToFit()
            
            VStack(spacing: 20){
                
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
                } .padding(.bottom, 20)
                
                //MARK: - DIVIDER & APPLE BUTTON
                VStack(spacing: 40){
                    
                    DividerView(label: dividerText)
                    Button(action:{
                        // action
                    }, label: {
                        ButtonWithIconView(buttonName: $buttonIconName, buttonIcon: $iconName) })
                }
               .padding(.bottom,100)
               
                
                //MARK: - BOTTOM TEXT
                BottomTextView()
                
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90)
            .padding(.bottom,20)
            .padding(.top, 180)
            
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
