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
                  
                  
                  NavigationView {
                      ScrollView([.vertical], showsIndicators: false){
                          VStack{
                              //MARK: - SEARCHBUTTON
                              SearchButtonView()
                                  .padding(.top, searchButtonTopPadding(screenHeight: Screen.screenSize.height))
                              
                              ForEach(rides){ item in
                                  RidesCardView(rides: item)
                              }
                          }
                          .padding()
                          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color("HomePageBGColor"))
                      } .navigationBarHidden(true)
                          .navigationViewStyle(StackNavigationViewStyle())
                  }
                  //MARK: - TABTOPVIEW
                  TabTopView()
              }
          }
    func searchButtonTopPadding(screenHeight: CGFloat) -> CGFloat {
        if screenHeight < 700 {
            return    53
        } else if (screenHeight > 700 && screenHeight <= 750) {
            return 60
        } else if (screenHeight > 750 && screenHeight <= 850) {
            return 45
        }
        return 55
    }
}

