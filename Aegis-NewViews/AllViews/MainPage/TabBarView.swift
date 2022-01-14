//
//  TabBarView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 13/01/2022.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var tabSelection = 0
    let tabBarItemsDark = ["bike-green","helmet-white","Profile-white"]
    let tabBarItemsWhite = ["bike-gray","helmet-dark","Profile-dark"]
    let tabBarLabel = ["Rides","KL","Profile"]
    
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
  
    var body: some View {
        VStack{
            ZStack{
                switch tabSelection{
                case 0:
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
                ForEach(0..<3){num in
                    Button(action: {
                        tabSelection = num
                    }, label: {
                        Spacer()
                    VStack{
                    Image(tabSelection == 0 ? tabBarItemsDark[num] : tabBarItemsWhite[num])
                        Text(tabBarLabel[num])
                            .font(Font.custom("poppins.extralight", size: 10))
                                    .foregroundColor(tabSelection == num ? Color(.green) : .gray)
                    }
                    Spacer()
                    })
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
