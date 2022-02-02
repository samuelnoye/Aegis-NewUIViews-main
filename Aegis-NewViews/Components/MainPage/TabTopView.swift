//
//  TabTopView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/01/2022.
//

import SwiftUI

struct TabTopView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    let hapticsFeedback = UINotificationFeedbackGenerator()
   
    var body: some View {
        HStack{
            
            ZStack{
                Rectangle()
                    .fill(Color("HomePageColor"))
                VStack{
                    Spacer()
                    HStack{
                        Image(colorScheme == .light ? "tabViewlogo-dark":"tabViewlogo-white")
                        Spacer()
                        
                        // APPEARANCE BUTTON
                        Button(action: {
                          // TOGGLE APPEARANCE
                          isDarkMode.toggle()
                            hapticsFeedback.notificationOccurred(.success)
                                //playSound(sound: "sound-tap", type: "mp3")
                        }, label: {
                          Image(systemName: isDarkMode ? "moon.circle.fill" :  "moon.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(Color("MainColor"))
                        })
                        Button(action:{
                            // action
                        }, label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color("MainColor"))
                        })
                    }.padding()
                }
            }.background(Color("HomePageColor"))
                .frame(height: Screen.screenSize.height*0.12)
                .edgesIgnoringSafeArea(.all)
                
        }
    }
}

struct TabTopView_Previews: PreviewProvider {
    static var previews: some View {
        TabTopView().preferredColorScheme(.dark)
        TabTopView().preferredColorScheme(.light)
    }
}
