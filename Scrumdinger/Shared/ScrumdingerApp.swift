//
//  ScrumdingerApp.swift
//  Shared
//
//  Created by Ashlynn Mitchell on 2/17/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
