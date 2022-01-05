//
//  TextFieldComponent.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/12/2021.
//
import SwiftUI


struct UserProfileTextFieldView: View {
    @Binding var fieldBind: String
    @Binding var fieldName: String
    var body: some View {
        Section {
            HStack {
                
                TextField("\(fieldName)", text: $fieldBind)
                    .font(Font.custom("Nexa-Light", size: 20))
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .frame( height: 35.0)
                    .padding(.leading)
                
            }
            .padding(.all, 8)
        } .background(Color.black)
            .overlay(RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.white, lineWidth: 1))
    }
}

struct GeneralButtonView: View {
    @Binding var buttonName: String
    
    var body: some View {
        
        
        RoundedRectangle(cornerRadius: 3)
            .frame(width: Screen.screenSize.width * 0.9, height: 50, alignment: .center)
            .overlay(Text(buttonName)
                        .foregroundColor(Color.white))
            .font(Font.custom("Nexa-Light", size: 18))
            .foregroundColor(Color.green)
            .background(Color("MainColor").cornerRadius(20))
        
        
    }
}

struct ButtonWithIconView: View {
    @Binding var buttonName: String
    @Binding var buttonIcon: String
    var body: some View {
        
        
        RoundedRectangle(cornerRadius: 3)
            .frame(width: Screen.screenSize.width * 0.9, height: 45, alignment: .center)
            .overlay(
                HStack(spacing: 8){
                    Spacer()
                    Image(systemName: buttonIcon)
                        .imageScale(.large)
                        .foregroundColor(Color.white)
                    Text(buttonName)
                        .foregroundColor(Color.white)
                    Spacer()
                })
            .font(Font.custom("Nexa-Light", size: 20))
            .foregroundColor(Color.black)
            .background(Color.black.cornerRadius(20))
            .border(Color.white, width: 1)
    }
}
    struct UserProfilePasswordField: View {
        @Binding var fieldBind: String
        @Binding var fieldName: String
        
        
        @State var hidden: Bool = false
        
        var body: some View {
            Section {
                HStack {
                    
                    if hidden{
                        TextField("\(fieldName)", text: $fieldBind)
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                            .frame( height: 35.0)
                            .padding(.leading)
                        
                    }else{
                        SecureField("\(fieldName)", text: $fieldBind)
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                            .frame( height: 35.0)
                            .padding(.leading)
                      }
                    
                     Button(action:{
                        // action
                        hidden.toggle()
                    }, label: {
                        Image(systemName: hidden ? "eye.slash" : "eye")
                            .imageScale(.medium)
                            .foregroundColor(Color.gray) })
                    
                }
                .padding(.all, 8)
            }.font(Font.custom("Nexa-Light", size: 18))
            .background(Color.black)
                .border(Color.white, width: 1)
                .cornerRadius(3)
        }
    
}


public struct Screen {
    public static let screenSize: CGRect = UIScreen.main.bounds
}

