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
    var rides: [Rides] = RidesData
    init(){
        UITabBar.appearance().backgroundColor = UIColor(Color("HomePageColor"))
    }
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            
            //MARK: - TABVIEW
            TabView(selection: $tabSelection){
            NavigationView {
                ScrollView([.vertical], showsIndicators: false){
                    VStack{
                        
                        //MARK: - SEARCHBUTTON
                       
                        SearchButtonView()
                            .padding(.top, 50)
                        
                   ForEach(rides){ item in
                       
                       RidesCardView(rides: item)
                        }
                    }
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color("HomePageBGColor"))
                    } .navigationBarHidden(true)
                    .navigationViewStyle(StackNavigationViewStyle())
                }
                .tabItem{
                    Image(tabSelection == 1 ?"bike-green":"bike-gray")
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
            }.accentColor(Color("MainColor"))
            VStack{
            //MARK: - TABTOPVIEW
            TabTopView()//.padding(.bottom,750)
            Spacer()
            //MARK: - CIRCLEBUTTONWITHHELMET
            CircleWithHelmetView()
                .padding(.bottom,Screen.screenSize.height < 700 ? 5: 30)
            }
           
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    }
}
