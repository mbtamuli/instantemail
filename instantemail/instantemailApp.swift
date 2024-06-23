//
//  instantemailApp.swift
//  instantemail
//
//  Created by Mriyam Tamuli on 22/06/24.
//

import SwiftUI

@main
struct EmailAliasApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

struct CustomDomain {
    var name: String
    var aliases: [EmailAlias]
}

struct EmailAlias {
    var alias: String
    var email: String
}
