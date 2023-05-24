//
//  SignInScreenView.swift
//  WelcomeScreeWithLoginButtons
//
//  Created by Khawaja Abdul Haleem on 24/05/2023.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = ""
    var body: some View {
        ZStack {
            Color(bgColor).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                VStack {
                    Text(SignIn)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    SocialLoginButtonView(image: Image(appleIcon), title: Text(appleDescription))
                    
                    SocialLoginButtonView(image: Image(googleIcon), title: Text(googleDescription).foregroundColor(Color(primaryColor))).padding(.vertical)
                    
                    
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    TextField("Work email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: .black.opacity(0.08), radius: 60, x: 0, y: 16)
                        .padding(.vertical)
                    
                    PrimaryButton(Title: emailSignupText)
                    
                }
                Spacer()
                Divider()
                Spacer()
                
                Text("You are completely Safe.")
                Text("Read our terms and condtions.")
                    .foregroundColor(Color(primaryColor))
                Spacer()
            }
            .padding()
        }
    }
}


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}


struct SocialLoginButtonView: View {
    var image: Image
    var title: Text
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            title
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white)
        .shadow(color: .black.opacity(0.08), radius: 60, x: 0, y: 16)
    }
}

