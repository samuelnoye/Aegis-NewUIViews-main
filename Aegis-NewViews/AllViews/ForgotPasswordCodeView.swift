//
//  ForgotPasswordCodeView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 05/01/2022.
//

import SwiftUI

struct ForgotPasswordCodeView: View {
    //MARK: - PROPERTIES
    @State private var email: String = ""
    @State var fieldBind: String = "Email"
    @State var buttonName: String = "Confirm Code"
    @State var fieldName: String = "Email"
  
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("BgImg")
                .resizable()
                .frame(width: Screen.screenSize.width*1, height: Screen.screenSize.height*1, alignment: .center)
                
            Spacer()
            VStack(spacing: 50){
                
                //MARK: - LOGO & HEADLINE TEXT
                Spacer()
                VStack{
                LogoHeadlineView()
                }.padding(.top, 20)
                VStack(spacing: 5){
                Text("Please enter 6 digit code sent to")
                    .font(Font.custom("Nexa-Light", size: 20))
                    .foregroundColor(Color.white)
                Text("abc.com")
                    .font(Font.custom("Nexa-Light", size: 20))
                    .foregroundColor(Color("MainColor"))
                }
                //MARK: - EMAIL FIELD AND BUTTON
                VStack(spacing: 30){
                    
                    UserProfileTextFieldView(fieldBind: $fieldBind, fieldName: $fieldName)
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
                
                
                //Button
                      Button(action:{
                         // isOnboarding = true
                     }){

                    Text("Resend")
                             .font(Font.custom("Nexa-Light", size: 18))
                             .foregroundColor(Color.white)
                             .padding(.horizontal,50)
                             .padding(.vertical,8)
                    }//: Button
                    
                     .background(
                        Capsule()
                            .fill(Color("MainColor")))
            }
                Spacer()
               //MARK: - BOTTOM TEXT
                VStack{
                BottomTextView()
                }
                
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*0.70, alignment: .top)
            
            
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: Screen.screenSize.width*2.90, alignment: .center)
        .edgesIgnoringSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct ForgotPasswordCodeView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordCodeView()
    }
}
