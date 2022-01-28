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
   // @State private var isHidden = ?
    init(){
        UITabBar.appearance().backgroundColor = UIColor(Color("HomePageColor"))
    }
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            
            //MARK: - TABVIEW
            TabView(selection: $tabSelection){
                //RIDES
                RideDetailsView()
                    .tabItem{
                        Image(tabSelection == 1 ?"bike-green":"bike-gray")
                        Text("Rides")
                    }
                    .tag(1)
                
                //MAIN
                Text("MAIN")
                
                    .tabItem{}
                    .tag(2)
                
                //PROFILE
                Text("Profile")
                
                    .tabItem{
                        //Image(systemName: "person.crop.circle.fill")
                        ProfileIconView()
                        Text("Profile")
                    }
                    .tag(3)
            }.accentColor(Color("MainColor"))
            
            VStack{
                //MARK: - TABTOPVIEW
                TabTopView()
                   // .opacity(isHidden ? 0 : 1)
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
