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
                .frame(width: Screen.screenSize.width*0.9, height: Screen.screenSize.height*0.20)
            
            VStack(){
                HStack(){
                    Text("\(rides.day) Rides \(rides.username)")
                        .font(Font.custom("poppins.light", size: 13))
                    Spacer()
                    Text(rides.date)
                        .font(Font.custom("poppins.light", size: 10))
                }
                Spacer()
                HStack(spacing: 20){
                    VStack(alignment:.leading, spacing: 15){
                        VStack(alignment: .leading){
                            Text("Distance")
                                .font(Font.custom("poppins.light", size: 8))
                            HStack{
                                Text(rides.distance)
                                    .font(Font.custom("poppins.bold", size: 15))
                                Text("km")
                                    .font(Font.custom("poppins.light", size: 10))
                            }
                        }
                        
                        VStack(alignment: .leading){
                            Text("Duration")
                                .font(Font.custom("poppins.light", size: 8))
                            HStack{
                                Text(rides.duration)
                                    .font(Font.custom("poppins.bold", size: 15))
                                Text("hr")
                                    .font(Font.custom("poppins.light", size: 10))
                            }
                        }
                        VStack(alignment: .leading){
                            Text("Speed")
                                .font(Font.custom("poppins.light", size: 8))
                            HStack{
                                Text(rides.speed)
                                    .font(Font.custom("poppins.bold", size: 15))
                                Text("kph")
                                    .font(Font.custom("poppins.light", size: 10))
                            }
                        }
                        
                    }
                    Spacer()
                    Image(rides.video)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: Screen.screenSize.height*0.14)
                        .background(Color("MainPageColor"))
                        .cornerRadius(10)
                }
            }
            .padding()
            .frame(height: Screen.screenSize.height*0.20)
            
        }.padding()
        //
    }
}

struct RidesCardView_Previews: PreviewProvider {
    static var previews: some View {
        RidesCardView(rides: RidesData[2]).preferredColorScheme(.dark)
        RidesCardView(rides: RidesData[2])
            .previewDevice("iPhone 8").preferredColorScheme(.light)
    }
}