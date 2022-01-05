//
//  ConfirmEmailView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 01/01/2022.
//

import SwiftUI

struct ConfirmEmailView: View {
  
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
                    .frame(width: Screen.screenSize.width*1, height: Screen.screenSize.height*1, alignment: .center)
                    
                Spacer()
                VStack(spacing: 80){
                    
                    //MARK: - LOGO & HEADLINE TEXT
                    Spacer()
                    VStack{
                    LogoHeadlineView()
                    }
                    
                    //MARK: - EMAIL FIELD AND BUTTON
                  VStack(spacing:5){
                       
                        Text("We have sent you an email at").foregroundColor(Color.white)
//  Text("abc@abc.com").foregroundColor(Color("MainColor"))
                      Link("abc@abccom",
                            destination: URL(string: "abc@abc.com")!).foregroundColor(Color("MainColor"))
                        Text("to confirm your account").foregroundColor(Color.white)
                       
                    }.multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        
                            
                    HStack{
                      
                        Text("Didn't recieve email?").foregroundColor(Color.white)
                        Button(action:{
                            // action
                        }, label: {
                            Text("Resend").foregroundColor(Color("MainColor")) })
                    }
                    
                    HStack{
                      
                        Text("Already confirmed?").foregroundColor(Color.white)
                        Button(action:{
                            // action
                        }, label: {
                            Text("Sign in").foregroundColor(Color("MainColor")) })
                    }
                   
                   
                   
                   //MARK: - BOTTOM TEXT
                    
                    BottomTextView()
                    
                    
                }//:VSTACK
                .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*0.70)
                .font(Font.custom("Nexa-Light",size: 20))
               
                
            }//:ZSTACK
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
        }
    }

    //MARK: - PREVIEW

struct ConfirmEmailView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmEmailView().previewDevice("iPhone 8")
        ConfirmEmailView().previewDevice("iPhone 11")
    }
}
