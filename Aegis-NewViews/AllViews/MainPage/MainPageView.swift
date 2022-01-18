//
//  MainPageView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 12/01/2022.
//

import SwiftUI

struct MainPageView: View {
    //MARK: - PROPERTIES
    @State private var tabSelection = 1
    @State private var searchButton = 0
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor(Color("HomePageColor"))
    }
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            
            //MARK: - TABVIEW
            TabView(selection: $tabSelection){
                RideDetailsView()
                    .tabItem{
                        Image(tabSelection == 1 ?"bike-green":"bike-gray")
                        Text("Rides")
                    }
                    .tag(1)
                
                Text("MAIN")
                SignInPasswordView()
                    .tabItem{
                        //CircleWithHelmetView() replaces this
                    }
                    .tag(2)
                
                Text("Profile")
                    .tabItem{
                        //Image(systemName: "person.crop.circle.fill")
                        ProfileIconView()
                        Text("Profile1")
                    }
                    .tag(3)
            }.accentColor(Color("MainColor"))
            
            VStack{
                //MARK: - TABTOPVIEW
                TabTopView()//.padding(.bottom,750)
                Spacer()
                //MARK: - CIRCLEBUTTONWITHHELMET
                Button(action:{
                    tabSelection = 2
                }, label: {
                    CircleWithHelmetView()
                        .padding(.bottom,Screen.screenSize.height < 700 ? 5: 30)
                }).buttonStyle(FlatLinkStyle())
            }
            
        }//:ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    }
}
