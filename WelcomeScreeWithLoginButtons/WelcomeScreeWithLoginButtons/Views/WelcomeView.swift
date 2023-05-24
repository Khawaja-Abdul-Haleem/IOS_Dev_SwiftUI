//
//  WelcomeView.swift
//  WelcomeScreeWithLoginButtons
//
//  Created by Khawaja Abdul Haleem on 24/05/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(bgColor).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image(onBoardImage)
                    Spacer()
                    PrimaryButton(Title: getStartedTitle)
                    
                    NavigationLink(destination: SignInScreenView().navigationBarHidden(true), label: {
                        LoginButton()
                    })
                    .navigationBarHidden(true)
                    HStack {
                        Text(newAroundTitle)
                            .foregroundColor(Color(TitleTextColor))
                        Text(SignIn)
                            .foregroundColor(Color(primaryColor))
                    }
                }.padding()
            }
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct LoginButton: View {
    var body: some View {
        
        Text(loginButtonTitle)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color(primaryColor))
            .padding()
            .frame(maxWidth: .infinity)
            .background(.white)
            .shadow(color: .black.opacity(0.08), radius: 60, x: 0, y: 16)
            .padding(.vertical)
            .cornerRadius(50)
        
    }
}


struct PrimaryButton: View {
    var Title: String
    var body: some View {
        
        Text(Title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(primaryColor))
            .cornerRadius(50)
        
        
        
    }
}
