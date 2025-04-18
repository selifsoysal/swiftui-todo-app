//
//  LoginView.swift
//  todoapp
//
//  Created by S. Elif Soysal on 14.04.2025.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                //header
                HeaderView()
                Section(header: Text("Kayıt Formu")){
                    VStack() {
                        HStack {
                            Image(systemName: "person")
                            TextField("Adınız", text: $name)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        
                        HStack {
                            Image(systemName: "envelope")
                            TextField("Email", text: $email)
                                .autocapitalization(.none)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)

                        HStack {
                            Image(systemName: "lock")
                            SecureField("Şifre", text: $password)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                    
                    Button(action: {}, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundStyle(.primary)
                            Text("Kayıt Ol")
                                .foregroundStyle(.white)
                        }
                    })
                    .frame(width: 150, height: 50)
                    .padding(.horizontal)
                    Spacer()
                }
                 //footer
                VStack{
                    Text("Hesabınız var mı?")
                    NavigationLink("Giriş Yap", destination: LoginView())
                        .foregroundColor(.white)
                }
                .padding(.bottom, 50)
            }
            .background(LinearGradient(colors: [.white, .blue], startPoint: .top, endPoint: .bottom))
        }


    }
}

#Preview {
    RegisterView()
}
