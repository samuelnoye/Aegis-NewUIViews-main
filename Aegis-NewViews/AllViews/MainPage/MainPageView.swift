//
//  MainPageView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 12/01/2022.
//

import SwiftUI

struct MainPageView: View {
    @State private var tabSelection = 1
  
    var rides: [Rides] = RidesData
    init(){
        UINavigationBar.appearance().backgroundColor = UIColor(Color("HomePageBGColor"))
        UITabBar.appearance().backgroundColor = UIColor(Color("HomePageColor"))
    }
    var body: some View {
        ZStack{
            
            
            TabView(selection: $tabSelection){
            
                NavigationView {
                ScrollView([.vertical], showsIndicators: false){
                    VStack{
                        SearchButtonView()
                            .padding(.top, 50)
                   ForEach(rides){ item in
                       
                       RidesCardView(rides: item)
                        }
                    }
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color("HomePageBGColor"))
                    } .navigationBarHidden(true)
                }.navigationViewStyle(StackNavigationViewStyle())
                .tabItem{
                    Image("bike-green")
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
            }
            VStack{
            TabTopView()//.padding(.bottom,750)
            Spacer()
            CircleWithHelmetView()
                .padding(.bottom,20)
            }
           
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    }
}
