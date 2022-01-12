//
//  MainPageView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 12/01/2022.
//

import SwiftUI

struct MainPageView: View {
    init(){
        UITabBar.appearance().barTintColor = .white
    }
    var body: some View {
        TabView{
           LogoHeadlineView()
            .tabItem{
                Image(systemName: "bicycle")
                Text("Rides")
            }
            Text("MAIN")
            .tabItem{
                //Image(systemName: "bicycle")
                Text("MAIN")
            }
            Text("Profile")
            .tabItem{
                Image(systemName: "person.crop.circle.fill")
                Text("Profile")
            }
        }
    }
}
