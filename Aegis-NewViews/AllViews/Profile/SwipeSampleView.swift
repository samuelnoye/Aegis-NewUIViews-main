//
//  SwipeSampleView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 28/01/2022.
//

import SwiftUI

struct SwipeSampleView: View {
    var rides:[Rides] = RidesData
    var body: some View {
        TabView{
            ForEach(rides[0...5]){ ride in
                ZStack{
                RidesCardView(rides: ride)
                }
                
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .indexViewStyle(.page(backgroundDisplayMode: .never))
        .padding(10)
    }
}

struct SwipeSampleView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeSampleView()
    }
}
