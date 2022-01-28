//
//  RidesView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 12/01/2022.
//

import SwiftUI

struct RidesView: View {
    var body: some View {
        VStack{
           VStack{
               Text("Rides")
              } .frame(width: Screen.screenSize.width*1.0, height: Screen.screenSize.height*1.0, alignment: .top)
                .background(Color.gray)
            }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .edgesIgnoringSafeArea(.all)
     }
}

struct RidesView_Previews: PreviewProvider {
    static var previews: some View {
        RidesView()
    }
}
