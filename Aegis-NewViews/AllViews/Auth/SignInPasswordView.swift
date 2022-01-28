//
//  SignInPasswordView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 04/01/2022.
//

import SwiftUI

struct SignInPasswordView: View {
    //MARK: - PROPERTIES
    @State var fieldBind: String = ""
    @State var buttonName: String = "Sign in"
    @State var buttonIconName: String = "Continue with Apple"
    @State var passFieldName: String = "Password"
    @State var passConFieldBind: String = ""
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .frame(width: Screen.screenSize.width*1, height: Screen.screenSize.height*1, alignment: .center)
           
            VStack(spacing: 40){
              
                //MARK: - BACKWARD ARROW
                HStack(){
                    Button(action:{
                        // action
                    }, label: {
                        Image(systemName:"arrow.backward")
                            .imageScale(.large)
                            .foregroundColor(Color.white)
                    })
                    Spacer()
                }.padding(.top, 50)
                Spacer()
                //MARK: - LOGO & HEADLINE TEXT
                LogoHeadlineView()
                
                //MARK: - PASSWORDS FIELD AND BUTTON
                VStack(spacing: 50){
                    
                    //SIGN IN TEXT
                    Text("Sign into your account")
                        .font(Font.custom("Nexa-Light", size: 20))
                        .foregroundColor(Color.white)
                VStack(spacing: 30){
                   
                    
                    //PASSWORD FIELD
                    UserProfilePasswordField(fieldName: $passFieldName, fieldBind: $fieldBind)
                    
                    //SIGN IN BUTTON
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
                   }
                    
                    //FORGOT PASSWORD
                    Button(action:{
                        // action
                    }, label: {
                        Text("Forgot password?")
                            .font(Font.custom("Nexa-Light", size: 20))
                        .foregroundColor(Color("MainColor")) })
                }
                Spacer()
                
                //MARK: - BOTTOM TEXT
                VStack{
                    BottomTextView().padding(.bottom,40)
                }
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*1, alignment: .center)
            .padding()
            
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

//MARK: - PREVIEW
struct SignInPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SignInPasswordView().previewDevice("iPhone 11")
        //SignInPasswordView().previewDevice("iPhone 8")
    }
}
