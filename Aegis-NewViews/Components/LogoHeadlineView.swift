//
//  BgLogoHeadlineView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 15/12/2021.
//

import SwiftUI

struct LogoHeadlineView: View {
    var body: some View {
      
          
                
                //MARK: - LOGO & HEADLINE TEXT
                VStack(){
                    Image("Logo")
                        .resizable()
                        .frame(width: Screen.screenSize.width*0.50, height: Screen.screenSize.height*0.10, alignment:.center)
                   
                    Text("""
                         An artificially intelligent
                         safety system for bikers.
                         """)
                        //.font(.system(size: 20, weight: .light, design: .rounded))
                        .font(Font.custom("poppins.light", size: 20))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: Screen.screenSize.width*1, height: Screen.screenSize.height*0.07, alignment:.center)
                   
                    
                }//:VSTACK
                
                
                
               
                
              
        
       
    }
}

struct LogoHeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        LogoHeadlineView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 8")
        LogoHeadlineView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
            
    }
}
