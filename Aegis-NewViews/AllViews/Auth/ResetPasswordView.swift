//
//  ResetPasswordView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 05/01/2022.
//

import SwiftUI

struct ResetPasswordView: View {
    
    //MARK: - PROPERTIES
  
    @State var buttonName: String = "Reset Password"
    @State var passFieldName: String = "Password"
    @State var passFieldBind: String = "Password"
    @State var passConFieldName: String = "Confirm Password"
    @State var passConFieldBind: String = ""
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("BgImg")
                .resizable()
             
           
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
                VStack(spacing: 30){
                    Text("Create new password")
                        .font(Font.custom("Nexa-Light", size: 20))
                        .foregroundColor(Color.white)
                       // .padding(.bottom,10)
                        
                    //PASSWORD FIELD
                   
                    UserProfilePasswordField(fieldName: $passFieldName, fieldBind: $passFieldBind)
                    //CONFIRM PASSWORD FIELD
                    UserProfilePasswordField(fieldName: $passConFieldName, fieldBind: $passConFieldBind)
                 
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
                }.padding(.bottom,40)
            }//:VSTACK
            .frame(width: Screen.screenSize.width*0.90, height: Screen.screenSize.height*1.0)
            
        }//:ZSTACK
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

//MARK: - PREVIEW
struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
      //  ResetPasswordView().previewDevice("iPhone 8")
        ResetPasswordView().previewDevice("iPhone 11")
    }
}
