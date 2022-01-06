//
//  ForgotPasswordCodeView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 05/01/2022.
//

import SwiftUI

struct ForgotPasswordCodeView: View {
    //MARK: - PROPERTIES
    @State var fieldBind: String = ""
    @State var buttonName: String = "Confirm Code"
    @State var fieldName: String = "6 digits"
  
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("BgImg")
                .resizable()
                .frame(width: Screen.screenSize.width*1, height: Screen.screenSize.height*1, alignment: .center)
                
          
            VStack(spacing: 50){
                
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
                VStack{
                LogoHeadlineView()
                } .padding(.top, 20)
                
                
               
                
                //MARK: - TEXT, EMAIL-FIELD AND BUTTON
                VStack(spacing: 30){
                    
                    VStack(spacing: 5){
                        Text("Please enter 6 digit code sent to")
                            .font(Font.custom("Nexa-Light", size: 20))
                            .foregroundColor(Color.white)
                        Text("abc@abccom")
                            .font(Font.custom("Nexa-Light", size: 20))
                            .foregroundColor(Color("MainColor"))
                        }
                    
                    UserProfileTextFieldView(fieldName: $fieldName, fieldBind: $fieldBind)
                    Button(action:{
                        // action
                    }, label: {
                        GeneralButtonView(buttonName: $buttonName)
                    })
                
                
                      //Resend Button
                      Button(action:{
                         // action
                     }){

                    Text("Resend")
                             .font(Font.custom("Nexa-Light", size: 17))
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
                }.padding(.bottom,40)
                
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*1.0)
            
            
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
