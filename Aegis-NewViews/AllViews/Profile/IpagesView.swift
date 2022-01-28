//
//  IpagesView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 28/01/2022.
//

import SwiftUI
import iPages

struct IpagesView: View {
    var body: some View {
        iPages {
                    Text("iPages 🤑")
                    Color.pink
            TabBarView()
        } .hideDots(true)
            .wraps(true)
}
}


struct IpagesView_Previews: PreviewProvider {
    static var previews: some View {
        IpagesView()
    }
}
