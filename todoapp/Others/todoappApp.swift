//
//  todoappApp.swift
//  todoapp
//
//  Created by S. Elif Soysal on 14.04.2025.
//
import FirebaseCore 
import SwiftUI

@main
struct todoappApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
