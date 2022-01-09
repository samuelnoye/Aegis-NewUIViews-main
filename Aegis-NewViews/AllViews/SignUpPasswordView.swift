//
//  SignUpView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 15/12/2021.
//

import SwiftUI

struct SignUpPasswordView: View {
    
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
                Spacer()
                //MARK: - LOGO & HEADLINE TEXT
                LogoHeadlineView()
                
                //MARK: - PASSWORDS FIELD AND BUTTON
                VStack(spacing: 30){
                    Text("Create new account")
                        .font(Font.custom("Nexa-Light", size: 20))
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                       // .padding(.bottom,18)
                        
                    //PASSWORD FIELD
                    UserProfilePasswordField(fieldName: $passFieldName, fieldBind: $fieldBind)
                    //CONFIRM PASSWORD FIELD
                    UserProfilePasswordField(fieldName: $passConFieldName, fieldBind: $passConFieldBind)
                 
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
                }
               // Spacer()
                //MARK: - BOTTOM TEXT
                VStack{
                BottomTextView()
                }.padding(.top,20)
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*0.70, alignment: .top)
            
        }//:ZSTACK
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

//MARK: - PREVIEW
struct SignUpPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPasswordView().previewDevice("iPhone 11")
    }
}
