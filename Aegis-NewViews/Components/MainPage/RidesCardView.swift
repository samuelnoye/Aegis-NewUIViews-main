//
//  RidesCardView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct RidesCardView: View {
    var rides: Rides
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(Color("HomePageColor"))
                .cornerRadius(10)
                .frame(width: Screen.screenSize.width*0.95, height: Screen.screenSize.height*0.25)
            
            VStack(){
                HStack(){
                    Text("\(rides.day) ride with \(rides.username)")
                        .font(Font.custom("poppins.light", size: 13))
                    Spacer()
                    Text(rides.date)
                        .font(Font.custom("poppins.light", size: 10))
                }
                Spacer()
                
                HStack(){
                    VStack(alignment:.leading){
                        VStack(alignment: .leading){
                            Text("Distance")
                                .font(Font.custom("poppins.light", size: 8))
                            HStack(spacing:1){
                                Text(rides.distance)
                                    .font(Font.custom("poppins.bold", size: 14))
                                VStack{
                                    
                                    Text(".").font(Font.custom("poppins.light", size: 2))
                                    Text("km")
                                        .font(Font.custom("poppins.light", size: 10))
                                }
                            }
                        }
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Duration")
                                .font(Font.custom("poppins.light", size: 8))
                            
                            HStack(spacing:1){
                                Text(rides.duration)
                                    .font(Font.custom("poppins.bold", size: 14))
                                VStack{
                                    Text(".").font(Font.custom("poppins.light", size: 3))
                                    Text("hr")
                                        .font(Font.custom("poppins.light", size: 10))
                                }
                            }
                        }
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Speed")
                                .font(Font.custom("poppins.light", size: 8))
                            HStack(spacing:1){
                                Text(rides.speed)
                                    .font(Font.custom("poppins.bold", size: 14))
                                VStack{
                                    Text(".").font(Font.custom("poppins.light", size: 3))
                                    Text("kph")
                                        .font(Font.custom("poppins.light", size: 10))
                                }
                            }
                        }
                    }
                    Spacer()
                    Image(rides.video)
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: Screen.screenSize.width*0.65, height: Screen.screenSize.height*0.17)
                        .background(Color("MainPageColor"))
                        .cornerRadius(10)
                }
                .frame(height: Screen.screenSize.height*0.17)
            }
            .padding()
            .frame(width: Screen.screenSize.width*0.95,height: Screen.screenSize.height*0.25)
        }
    }
}

struct RidesCardView_Previews: PreviewProvider {
    static var previews: some View {
        RidesCardView(rides: RidesData[2]).preferredColorScheme(.dark)
        RidesCardView(rides: RidesData[2])
            .previewDevice("iPhone 8").preferredColorScheme(.light)
    }
}
