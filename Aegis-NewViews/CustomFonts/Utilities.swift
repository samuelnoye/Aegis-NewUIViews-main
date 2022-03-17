//
//  Utilities.swift
//  AegisRider-iOS
//
//  Created by Abdul Suraj on 14/12/2021.
//

import Foundation

struct Utilities {
    // MARK: - Default Key
    struct Defaults {
        static let userData = "userData"
        static let accessToken = "accessToken"
        static let refreshToken = "refreshToken"
        static let isLoggedIn = "isLoggedIn"
        static let userId = "userKey"
        static let userEmail = "Email"
        static let userPassword = "password"
        static let unverifiedUser = "unverified"  
    }
    // MARK: - Headers
    struct Headers {
        static let contentType = "Content-Type"
        static let FormUrlEncoded = "application/x-www-form-urlencoded"
        static let JsonEncoded = "application/json"
        static let auth = "Authorization"
        static let authData = "Bearer "
    }
    // MARK: - Pixel points
    struct PixelPoints  {
        static let mainEntranceElement = 24
        static let mainEntranceForm = 20
        static let signInPageElementSpacing = 12
        static let btnHeight  = 50
        static let textFieldHeight  = 50
        static let mainEntranceDividerHeight  = 50
        static let passwordField = 30
        static let mainPageLogo = 210.37   //210.37
        static let artTextAndEmailTextfield = 47.17
        static let generalBodyPadding = 16
    }
    // MARK: - Font family
    struct FontFamily {
        static let light = "Poppins-Light"
        static let dark = "Poppins-Black"
        static let extraLight = "Poppins-ExtraLight"
        static let regular = "Poppins-Regular"
        static let thin = "Poppins-Thin"
        static let bold = "Poppins-Bold"
        static let semiBold = "Poppins-SemiBold"
        static let medium = "Poppins-Medium"
    }
    // MARK: - Font sizes
    struct FontSizes {
        static let title0 = 18
        static let title1 = 17
        static let title2 = 16
        static let title3 = 15
        static let title4 = 14
        static let textField = 16
        static let buttons = 18
        static let orWord = 17
        static let appleBtn = 17
        static let footNote = 12
        static let errorText = 12
        static let profileFieldLabel = 13
    }
    // MARK: - Character spacing
    struct CharcterSpacing {
        static let title1 = 0.85
        static let title2 = 0.8
        static let textField = 0.96
        static let buttons = 1.08
        static let orWord = 0.34
        static let navbar = 0.3
        static let appleBtn = 0.34
        static let footNote = 0
        static let errorText = 0
        static let editProfileFieldLabel = 0.39
        static let editProfileNav = -0.01
        static let editProfileSectionLabel = 0.45
        static let username = 0.57
        static let stats = 0.51
        static let statshead = 0.27
        static let statsnum = -0.38
        static let statsunits = 0.33
    }
    // MARK: - Color codes
    struct ColorScheme {
        static let mainColor = "ColorGreenAdaptive"
        static let textColor = "TextColor"
        static let overlayColor = "OverlayColor"
        static let btnBGColor = "BtnBGColor"
        static let profileTextfielOutline = "ProfileTextfieldOutline"
        static let profilefieldNameColor = "ProfilefieldNameColor"
        static let profileDateBackground = "ProfileDateBackgroundColor"
        static let profileDateText = "ProfileDateText"
        static let homePageColor = "HomePageColor"
        static let homePageBGColor = "HomePageBGColor"
        static let circleBorderColor = "CircleBorderColor"
        static let circleBorderColor1 = "CircleBorderColor-1"
        static let FavoriteColor = "FavoriteColor"
        
    }
    // MARK: - response codes
    struct ResponseCode {
        static let success = 200
        static let created = 201
        static let userExistsButNotVerified = 320
        static let userDoesNotExist = 310
        static let userAlreadyExists = 311
        static let rideNotFound = 311
        static let invalidCSV = 313
        static let rideIsNotSupported = 314
        static let rideAlreadyExists = 315
        static let rideNoLongerExists = 316
        static let fileAlreadyExists = 317
        static let keyError = 318
        static let userAccountDeactivated = 309
        static let codeNotFound = 321
        static let deviceAlreadyExists = 322
        static let accountAlreadyExistWithAppleAuth = 326
        static let internalServerError = 500
        static let unauthorized = 401
    }
}
