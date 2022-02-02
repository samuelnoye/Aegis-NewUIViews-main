//
//  SwiftBackView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 28/01/2022.
//

import SwiftUI

struct SwiftBackView: View {
    var rides:[Rides] = RidesData
   
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: SignUpPasswordView()) {
                Text("Hello, World!")
            }
        }
        // Add your custom back button here
        
    }
}

struct SwiftBackView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftBackView()
    }
}
