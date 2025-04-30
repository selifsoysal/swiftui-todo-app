//
//  ContentView.swift
//  todoapp
//
//  Created by S. Elif Soysal on 14.04.2025.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn,
            !viewModel.currentUserId.isEmpty {
            TabView{
                ToDoListView()
                .tabItem {
                    Label("Yapılacaklar", systemImage: "list.clipboard")
                }
                ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            }
        } else{
            LoginView() 
        }
    }
}

#Preview {
    MainView()
}
