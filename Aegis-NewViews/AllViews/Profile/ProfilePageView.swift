//
//  ProfilePageView.swift
//  AegisRider-iOS
//
//  Created by Samuel Noye on 03/02/2022.
//

import SwiftUI

struct ProfilePageView: View {
    @State var profileUpdateProgress: CGFloat = 0.0
    @State var dynamicSize: CGFloat = Screen.screenSize.height < 700 ? 110 : 160
    
    @State var showImagePickerSheet: Bool = false
    @State private var shouldPresentImagePicker = false
    @State private var shouldPresentActionScheet = false
    @State var value: CGFloat = 0
    @State private var shouldPresentCamera = false
    @State var imageUpload = false
    @State var uploadProgress: Double? = 0.0
    @State private var image: Image?  = Image("defaultProfileImage")
    @State private var showImageProfile = true
    @State var isSaveDisabled = true
    @State var emailDisabled = true
    @State private var isSaved = true
    @State var save = true
    @State private var showingLogIn = false
    @State private var showUploadStatus = false
    @State private var presentAlert = false
    var body: some View {
//        VStack{
       
        
        ZStack(alignment: .top){
//            Circle()
//                .trim(from: 0, to: 0.5)
//                .frame(width: 1000, height: 480)
//                .padding(.top, -550)
            
                        NavigationView {
                            ScrollView([.vertical], showsIndicators: false){
ZStack {
                       Image("map")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle()
                                        .trim(from: 0, to: 0.5)
                            )
                            .frame(width: Screen.screenSize.width < 375 ? 1000 : 1500, height: Screen.screenSize.height < 700 ? 800 : 900)
                            .padding(.top, topPaddingValue(screenHeight: Screen.screenSize.height))
    VStack(spacing: 50) {
        Button(action: {
//            self.startLoading()
            self.showImagePickerSheet = true
            self.shouldPresentActionScheet = true
            self.imageUpload = true
        }) {
                        Image("CoverImageIcon")
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                            .clipped()
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .font(.system(size: 60))
                            .padding(.top, 41)
        } // eof button
        ZStack {
            ZStack {
                Circle()
                    .trim(from: 0.0, to: profileUpdateProgress)
                    .stroke(Color.white, lineWidth: 2)
                    .frame(width: 180, height: 180)
                    .rotationEffect(Angle(degrees: 0))
                Text("\(Int(self.profileUpdateProgress*100))%")
                    .font(.custom("HelveticaNeue", size: 20.0))
            }
                    Image("me")
                .resizable()
                .scaledToFit()
                         .clipShape(Circle())
                         .frame(width: dynamicSize, height: dynamicSize)
            Button(action: {
//                self.startLoading()
                self.showImagePickerSheet = true
                self.shouldPresentActionScheet = true
                self.imageUpload = true
                
            }) {
                Image("Camera")
            .frame(width: 35, height: 35)
            .clipShape(Circle())
            .clipped()
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .font(.system(size: 45)).foregroundColor(Color.green)
            .font(.system(size: 60))
            .padding(.leading, 90)
            .padding(.top, 155)
            }
        }
                    }
                    .padding(.top, -285)
                    }
               
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            //.background(Color(Utilities.ColorScheme.homePageBGColor))
                            
                        }.background(Color(Utilities.ColorScheme.homePageBGColor))
               // .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .navigationBarHidden(true)
                .navigationViewStyle(StackNavigationViewStyle())
                                  //  .background(Color(Utilities.ColorScheme.homePageBGColor))
                                               
                                
           
            TabTopProfileView()
            
        }
          

        .sheet(isPresented: $showImagePickerSheet) {
            VStack {
                SUImagePickerView(sourceType: self.shouldPresentCamera ? .camera : .photoLibrary, image: self.$image, isPresented: self.$showImagePickerSheet, uploadProgress: self.$uploadProgress)
            }
        }.actionSheet(isPresented: $shouldPresentActionScheet) { () -> ActionSheet in
            ActionSheet(title: Text("Choose mode").foregroundColor(.green), message: Text("Please choose your preferred mode to set your profile image").foregroundColor(.green), buttons: [ActionSheet.Button.default(Text("Camera").foregroundColor(.green), action: {
                self.showImagePickerSheet = true
                self.shouldPresentCamera = true
                self.showImageProfile = false
                onDismissSheet()
            }), ActionSheet.Button.default(Text("Photo Library").foregroundColor(.green), action: {
                self.showImagePickerSheet = true
                self.shouldPresentCamera = false
                self.showImageProfile = false
                onDismissSheet()
            }), ActionSheet.Button.cancel(Text("Cancel"), action: {
                self.imageUpload = false
                showImageProfile = true
            })])
        }.foregroundColor(.green)
    }
    
    func onDismissSheet () {
        print("image picker is 👉🏽 \(image)")
        if image == Image("defaultProfileImage") {
            imageUpload = false
            showImageProfile = true
        } else if image != Image("defaultProfileImage") && image != nil {
            showUploadStatus = true
        }
    }
    
    func startLoading() {
        guard  profileUpdateProgress <= 1.0 else {
            return
            print("limit reached")
        }
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                self.profileUpdateProgress += 0.01
                if self.profileUpdateProgress >= 1.0 {
                    
                    timer.invalidate()
                }
            }
        }
    }
    
    func topPaddingValue(screenHeight: CGFloat) -> CGFloat {
        if screenHeight < 700 {
            print("first")
            return -530
        } else if (screenHeight > 700 && screenHeight <= 750) {
            print("sec")
            return -600
        } else if (screenHeight > 750 && screenHeight <= 800) {
            print("third")
            return -530
        } else if (screenHeight > 800 && screenHeight <= 850) {
            print("f4")
            return -630
        } else if (screenHeight > 850 && screenHeight <= 900) {
            print("5th")
            return -700
        } else if (screenHeight > 900 && screenHeight <= 950) {
            return 0
        }
        return 5
    }
}
