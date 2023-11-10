//
//  UberSwiftUICloneApp.swift
//  UberSwiftUIClone
//
//  Created by Jérémy Perez on 01/11/2023.
//

import SwiftUI

@main
struct UberSwiftUICloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
