//
//  MainViewViewModel.swift
//  todoapp
//
//  Created by S. Elif Soysal on 14.04.2025.
//

import FirebaseAuth
import Foundation

class MainViewViewModel:ObservableObject {
    @Published var currentUserId: String = ""
    
    init() {
        Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
