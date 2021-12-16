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
                VStack(spacing: 10){
                    Image("Logo")
                        .resizable()
                        .frame(width: 200, height:70, alignment: .center)
                       
                    Text("""
                         An artificially intelligent
                         safety system for bikers.
                         """)
                        //.font(.system(size: 20, weight: .light, design: .rounded))
                        .font(Font.custom("Nexa-Trial-Light", size: 20))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                }//:VSTACK
                
                
               
                
              
        
       
    }
}

struct LogoHeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        LogoHeadlineView()
            .preferredColorScheme(.dark)
            
    }
}
