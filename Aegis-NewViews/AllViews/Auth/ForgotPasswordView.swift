//
//  ForgotPasswordView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 04/01/2022.
//

import SwiftUI

struct ForgotPasswordView: View {
    //MARK: - PROPERTIES
    @State private var email: String = ""
    @State var fieldBind: String = "Email"
    @State var buttonName: String = "Confirm Email"
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
                
                Text("Please enter your email")
                    .font(Font.custom("Nexa-Light", size: 20))
                    .foregroundColor(Color.white)
                //MARK: - EMAIL FIELD AND BUTTON
                VStack(spacing: 30){
                    
                    UserProfileTextFieldView(fieldName: $fieldName, fieldBind: $fieldBind)
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
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
struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
      //  ForgotPasswordView().previewDevice("iPhone 8")
        ForgotPasswordView().previewDevice("iPhone 11")
    }
}
