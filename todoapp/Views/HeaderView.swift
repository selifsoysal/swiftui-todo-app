//
//  HeaderView.swift
//  todoapp
//
//  Created by S. Elif Soysal on 17.04.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //header
        ZStack{
            Image("elist-logo")
                .resizable()
                .frame(width: 150, height: 150)
            Text("Elist")
                .font(.system(size: 60))
                .fontWeight(.bold)
        }.padding(.top, 100)
            }
}

#Preview {
    HeaderView()
}
