//
//  WORDLEApp.swift
//  WORDLE
//
//  Created by  on 3/15/23.
//

import SwiftUI

@main
struct WORDLEApp: App
{
    @StateObject var homeVM = HomeViewModel()
    var body: some Scene
    {
        WindowGroup
        {
            HomeView().environmentObject(homeVM)
        }
        
//        WindowGroup
//        {
//            ContentView().environmentObject(homeVM)
//        }
    }
}
