//
//  TabBarView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 13/01/2022.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var tabSelection = 0
    let tabBarItemsDark = ["bike-green","","Profile-white"]
    let tabBarItemsWhite = ["bike-gray","","Profile-dark"]
    let tabBarLabel = ["Rides","","Profile"]
    
    init(){
        UITabBar.appearance().barTintColor = UIColor(Color("HomePageColor"))
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
                        if num == 1{
                            CircleWithHelmetView()
                                .padding(.bottom,Screen.screenSize.height < 700 ? 5: 30)
                        }else if num == 2{
                            VStack{
                                ProfileIconView()
                                Text(tabBarLabel[num])
                                    .font(Font.custom("poppins.extralight", size: 10))
                                    .foregroundColor(tabSelection == num ? Color(.green) : .init(white: 0.8))
                            }
                        }
                        else{
                            VStack{
                                Image(tabSelection == 0 ? tabBarItemsDark[num] : tabBarItemsWhite[num])
                                Text(tabBarLabel[num])
                                    .font(Font.custom("poppins.extralight", size: 10))
                                    .foregroundColor(tabSelection == num ? Color(.green) : .init(white: 0.8))
                            }
                        }
                        
                        Spacer()
                    })
                }
            }//.padding()
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

