//
//  StatsView.swift
//  AegisRider-iOS
//
//  Created by Samuel Noye on 03/02/2022.
//

import SwiftUI

struct StatsView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }

    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        HStack{
            VStack{
                HStack{
                    Text("Matthew alison")
                        .font(Font.custom(Utilities.FontFamily.regular, size: 19))
                        .tracking(CGFloat(Utilities.CharcterSpacing.username))
                        .foregroundColor(Color(Utilities.ColorScheme.textColor))
                                        }
                VStack{
                HStack{
                    Text("Your stats")
                        .font(Font.custom(Utilities.FontFamily.medium, size: 17))
                        .tracking(CGFloat(Utilities.CharcterSpacing.stats))
                        .foregroundColor(Color(Utilities.ColorScheme.textColor))
                    Spacer()
                        Picker("Flavor", selection: $selectedFlavor) {
                            HStack{     Text("Chocolate")}.tag(Flavor.chocolate)
                            Text("Vanilla").tag(Flavor.vanilla)
                            Text("Strawberry").tag(Flavor.strawberry)
                    }
                }
                HStack{
                    VStack(alignment:.leading, spacing:1){
                    Text("Total distance")
                            .font(Font.custom(Utilities.FontFamily.light, size: 9))
                            .tracking(CGFloat(Utilities.CharcterSpacing.statshead))
                            .foregroundColor(Color(Utilities.ColorScheme.textColor))
                        HStack(alignment:.bottom,spacing:2){
                    Text("162")
                                .font(Font.custom(Utilities.FontFamily.bold, size: 16))
                                .tracking(CGFloat(Utilities.CharcterSpacing.statsnum))
                                .foregroundColor(Color(Utilities.ColorScheme.textColor))
                    Text("km")
                                .font(Font.custom(Utilities.FontFamily.light, size: 11))
                                .tracking(CGFloat(Utilities.CharcterSpacing.username))
                                .foregroundColor(Color(Utilities.ColorScheme.textColor))
                                .padding(.bottom,2)
                        }
                    }
                    Spacer()
                    VStack(alignment:.leading, spacing:1){
                    Text("Max. speed")
                            .font(Font.custom(Utilities.FontFamily.light, size: 9))
                            .tracking(CGFloat(Utilities.CharcterSpacing.statshead))
                            .foregroundColor(Color(Utilities.ColorScheme.textColor))
                        HStack(alignment:.bottom,spacing:2){
                    Text("78")
                                .font(Font.custom(Utilities.FontFamily.bold, size: 16))
                                .tracking(CGFloat(Utilities.CharcterSpacing.statsnum))
                                .foregroundColor(Color(Utilities.ColorScheme.textColor))
                    Text("kph")
                                .font(Font.custom(Utilities.FontFamily.light, size: 11))
                                .tracking(CGFloat(Utilities.CharcterSpacing.username))
                                .foregroundColor(Color(Utilities.ColorScheme.textColor))
                                .padding(.bottom,2)
                        }
                    }
                    Spacer()
                    VStack(alignment:.leading, spacing:1){
                    Text("Total time")
                            .font(Font.custom(Utilities.FontFamily.light, size: 9))
                            .tracking(CGFloat(Utilities.CharcterSpacing.statshead))
                            .foregroundColor(Color(Utilities.ColorScheme.textColor))
                        HStack(alignment:.bottom,spacing:2){
                    Text("12:00")
                                .font(Font.custom(Utilities.FontFamily.bold, size: 16))
                                .tracking(CGFloat(Utilities.CharcterSpacing.statsnum))
                                .foregroundColor(Color(Utilities.ColorScheme.textColor))
                              
                    Text("hr")
                                .font(Font.custom(Utilities.FontFamily.light, size: 11))
                                .tracking(CGFloat(Utilities.CharcterSpacing.username))
                                .foregroundColor(Color(Utilities.ColorScheme.textColor))
                                .padding(.bottom,2)
                        }
                    }  .padding(.horizontal,10)
                }
                }
            }
        }.padding()
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
