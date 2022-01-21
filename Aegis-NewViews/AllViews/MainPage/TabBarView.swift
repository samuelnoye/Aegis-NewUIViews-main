//
//  TabBarView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 13/01/2022.
//

import SwiftUI

struct TabBarView: View {
    //MARK:- PROPERTIES
    @State private var isHidden = false
    @State private var Hidden = "true"
    @State private var tabSelection = 0
    let tabBarItemsDark = ["bike-green","","Profile-white"]
    let tabBarItemsWhite = ["bike-gray","","Profile-dark"]
    let tabBarLabel = ["Rides","","Profile"]
    
    init(){
        UITabBar.appearance().barTintColor = UIColor(Color("HomePageColor"))
    }
    
    //MARK:- BODY
    var body: some View {
        ZStack{
            ZStack{
                switch tabSelection{
                case 0:
                    RideDetailsView()
                case 2:
                    Text("PROFILE")
                default:
                    Text("MAIN")
                }
            }
            VStack{
                Spacer()
                VStack{
                    ZStack{
                        Spacer()
                        Rectangle()
                            .fill(Color("HomePageColor"))
                            .frame(height: Screen.screenSize.height*0.10)
                            .padding(.top,30)
                        
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
                                             .overlay(Circle().stroke(Color("MainColor"),lineWidth: 1))
                                           
                                            Text(tabBarLabel[num])
                                                .font(Font.custom("Poppins-ExtraLight", size: 10))
                                                .foregroundColor(tabSelection == num ? Color("MainColor") : Color.gray)
                                        } .padding(.top,Screen.screenSize.height < 700 ? 20: 0)
                                    }
                                    else{
                                        VStack{
                                            Image(tabSelection == 0 ? tabBarItemsDark[num] : tabBarItemsWhite[num])
                                            Text(tabBarLabel[num])
                                                .font(Font.custom("Poppins-ExtraLight", size: 10))
                                                .foregroundColor(tabSelection == num ? Color("MainColor") : .init(white: 0.8))
                                        }.padding(.top,Screen.screenSize.height < 700 ? 20: 0)
                                    }
                                    
                                    Spacer()
                                })
                            }
                        }
                    }
                }
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .edgesIgnoringSafeArea(.all)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

