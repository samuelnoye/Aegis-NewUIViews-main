//
//  TabBarView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 13/01/2022.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var tabSelection = 1
    let tabBarItems = ["bike","helmet","person.crop.circle.fill"]
    
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
  
    var body: some View {
        VStack{
            ZStack{
                switch tabSelection{
                case 1:
                    NavigationView{
                        Text("1")
                            .navigationTitle("First")
                    }
                default:
                    Text("remain")
                }
               
            }
            
            Spacer()
            HStack{
                ForEach(1..<4){num in
                        Spacer()
                    VStack{
                    Image("bike")
                        Text("Rides")
                    }
                    Spacer()
                }
             }.padding()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    //
    }
    }

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

//TabView(selection: $tabSelection){
    //ResetPasswordView()
//    Image("bike")
//        .tabItem{
//            Image("bike")
//            Text("Rides")
//        }
//        .tag(1)
//    Text("MAIN")
//        .tabItem{
//
//        }.tag(2)
//    Text("Profile")
//        .tabItem{
//            Image(systemName: "person.crop.circle.fill")
//            Text("Profile")
//        }
//    .tag(3)
//}
