//
//  MainPageView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 12/01/2022.
//

import SwiftUI

struct MainPageView: View {
    @State private var tabSelection = 1
    @State var circleTabIndex: Int = 2
    init(){
       // UITabBar.appearance().barTintColor = Color("HomePageColor")
        UITabBar.appearance().backgroundColor = UIColor(Color("HomePageColor"))
    }
    var body: some View {
        ZStack{
           
            TabView(selection: $tabSelection){
                //ResetPasswordView()
                
                ScrollView{
                   VStack{
                       
                       ResetPasswordView()
                        }
                     }
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
            TabTopView()
            Spacer()
            CircleWithHelmetView(circleTabIndex: $circleTabIndex)
                .padding(.bottom,30)
            
           
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    }
}
