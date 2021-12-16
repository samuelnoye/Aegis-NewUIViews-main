//
//  SignUpView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 15/12/2021.
//

import SwiftUI

struct SignUpView: View {
    
    //MARK: - PROPERTIES
    @State var fieldBind: String = ""
    @State var buttonName: String = "Sign up"
    @State var fieldName: String = "Email"
    @State var buttonIconName: String = "Continue with Apple"
    @State var passFieldName: String = "Password"
    @State var passFieldBind: String = "password"
    @State var passConFieldName: String = "Confirm Password"
    @State var passConFieldBind: String = ""
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("BgImg")
                .resizable()
               // .scaledToFit()
            
            VStack(spacing: 40){
                
                //MARK: - LOGO & HEADLINE TEXT
                LogoHeadlineView().padding()
                
                
                
                //MARK: - PASSWORDS FIELD AND BUTTON
                VStack(spacing: 30){
                    Text("Create new account")
                        .font(Font.custom("Nexa-Trial-Light", size: 20))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom,20)
                        
                    
                    //PASSWORD FIELD
                    UserProfilePasswordField(fieldBind: $fieldBind, fieldName: $passFieldName)
                    //CONFIRM PASSWORD FIELD
                    UserProfilePasswordField(fieldBind: $passConFieldBind, fieldName: $passConFieldName)
                 
                    
                    
                    
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
                }
                
                
                //MARK: - BOTTOM TEXT
                VStack{
                BottomTextView()
                }.padding(.top,20)
                
            }//:VSTACK
           .frame(width: Screen.screenSize.width*0.90)
           .padding(.top, 80)
            
        }//:ZSTACK
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

//MARK: - PREVIEW
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
