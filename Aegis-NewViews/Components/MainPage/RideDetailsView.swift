//
//  RideDetailsView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 18/01/2022.
//

import SwiftUI

struct RideDetailsView: View {
    //MARK:- PORPERTIES
    var rides: [Rides] = RidesData
    
    //MARK:- BODY
    var body: some View {
        ZStack(alignment: .top){
            //MARK: - TABTOPVIEW
            
        NavigationView {
            ScrollView([.vertical], showsIndicators: false){
                VStack{
                    //MARK: - SEARCHBUTTON
                    SearchButtonView()
                        .padding(.top, 50)
                    
                    ForEach(rides){ item in
                         RidesCardView(rides: item)
                    }
                }
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color("HomePageBGColor"))
            } .navigationBarHidden(true)
                .navigationViewStyle(StackNavigationViewStyle())
        }
            TabTopView()
            //Spacer()
        }
        
    }
}
//MARK:- PREVIEW
struct RideDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RideDetailsView()
    }
}
