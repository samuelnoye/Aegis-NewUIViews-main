//
//  Aegis_NewViewsApp.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 14/12/2021.
//

import SwiftUI

@main
struct Aegis_NewViewsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //ForgotPasswordCodeView()
            //ForgotPasswordView()
             //SignUpEmailView()
           // SearchButtonView()
          MainPageView()
           //TabBarView()
            //SignInPasswordView()
            //SignUpPasswordView()
            //ConfirmEmailView()
            //ResetPasswordView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
