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
            Text("A")
            .tabItem{
                Image(systemName: "bicycle")
                Text("A")
            }
            Text("MAIN")
            .tabItem{
                //Image(systemName: "bicycle")
                Text("MAIN")
            }
            Text("B")
            .tabItem{
                Image(systemName: "person.crop.circle")
                Text("B")
            }
        }
    }
}
