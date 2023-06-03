//
//  SignupView.swift
//  Authui
//
//  Created by Aashish on 6/3/23.
//

import SwiftUI

struct SignupView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var first_name: String = ""
    @State private var last_name: String = ""
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    Button{
                        
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .padding(5)
                    .cornerRadius(100)
                    .foregroundColor(.secondary.opacity(0.3))
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(.secondary.opacity(0.3), lineWidth: 2)
                    )
                    
                    VStack {
                        Text("Hello Again!")
                            .fontWeight(.bold)
                        Text("Welcome back you've been missed!")
                            .font(.system(size: 12))
                            .padding(.top, 0.1)
                    }
                    .padding(.bottom, 5)
                    
                    HStack {
                        TextFieldView(name: "First Name", text: first_name)
                        TextFieldView(name: "Last Name", text: last_name)
                    }
                    
                    VStack {
                        TextFieldView(name: "Email", text: email)
                    }
                    
                    VStack {
                        TextFieldView(name: "Password", text: password)
                        Button("Forget password"){
                            print("foreget password")
                        }
                        .font(.system(size: 12))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(.black)
                    }
                    
                    VStack {
                        ButtonView(button_text: "Signup", screen: "", bgcolor: .pink, fgcolor: .white, lw: 0)
                    }
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        Text("Already have an account?")
                        Button("Login"){
                            print("open login")
                        }
                    }
                    .padding(.top, 10)
                    .font(.system(size: 13))
                    
                    
                    HStack {
                        DividerView()
                        Text("or continue with")
                            .font(.system(size: 13))
                            .foregroundColor(.secondary)
                        DividerView()
                    }
                    .padding(.top, 20)
                    
                    HStack {
                        SocialImageView(image_name: "apple-logo")
                        SocialImageView(image_name: "google-logo")
                        SocialImageView(image_name: "facebook-logo")
                    }
                    .padding(.top, 20)
                }
                .padding(30)
                
            }
        }
        
        Spacer()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
