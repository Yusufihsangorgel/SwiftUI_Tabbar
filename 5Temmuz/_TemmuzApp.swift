//
//  _TemmuzApp.swift
//  5Temmuz
//
//  Created by Yusuf İhsan Görgel on 5.07.2022.
//

import SwiftUI

enum Screen{
    case one
    case two
}

final class TabRouter: ObservableObject {
    @Published var screen: Screen = .one
    
    func change(to screen: Screen){
        self.screen = screen
    }
    
    
}


@main
struct _TemmuzApp: App {
    
    @StateObject var router = TabRouter()
    
    var body: some Scene { 
        WindowGroup {
            TabView(selection: $router.screen){
                ScreenOne()
                    .badge(10)
                    .tag(Screen.one)
                    .environmentObject(router)
                    .tabItem {
                        Label("Screen 1", systemImage: "calendar")
                    }
                
                ScreenTwo()
                    .tag(Screen.two)
                    .environmentObject(router)
                    .tabItem {
                    Label("Screen 2", systemImage: "house")
                }
                }
            }
        }
      
}
