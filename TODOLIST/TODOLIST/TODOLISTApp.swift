//
//  TODOLISTApp.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

@main
struct TODOLISTApp: App {
    
    @StateObject var memoViewModel = MemoViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(memoViewModel)
        }
    }
}
