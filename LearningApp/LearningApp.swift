//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Руслан Меланин on 03.05.2023.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
