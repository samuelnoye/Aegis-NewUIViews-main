//
//  MainPageView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 12/01/2022.
//

import SwiftUI

struct MainPageView: View {
    @State private var tabSelection = 1
      
    init(){
     UITabBar.appearance().barTintColor = .systemBackground
    }
    var body: some View {
        ZStack{
            
        TabView(selection: $tabSelection){
         //ResetPasswordView()
            Image("bike")
            .tabItem{
                Image("bike")
                Text("Rides")
            }
            .tag(1)
            Text("MAIN")
           .tabItem{
                
            }.tag(2)
            Text("Profile")
            .tabItem{
                Image(systemName: "person.crop.circle.fill")
                Text("Profile")
            }
            .tag(3)
        }.padding()
            
            VStack(alignment: .center){
                Spacer()
                      .frame(minWidth: 0, maxWidth: .infinity, minHeight:0, maxHeight: .infinity, alignment: Alignment.topLeading)
                      
            
                Button(action:{
                    // action
                    tabSelection = 2
                }, label: {
                    ZStack(){
                    Circle()
                        .fill(Color.green)
                        .frame(width: 130, height: 65)
                        .overlay(Circle().stroke(Color.white,lineWidth: 4))
                        .shadow(color: .gray, radius: 4, x: 0, y: 0)
                    Image("helmet")
                }
                })
                
            
            }.padding(.bottom,30)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    }
}
