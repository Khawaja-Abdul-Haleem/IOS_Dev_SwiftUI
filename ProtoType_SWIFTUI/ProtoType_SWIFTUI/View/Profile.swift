//
//  Profile.swift
//  ProtoType_SWIFTUI
//
//  Created by Khawaja Abdul Haleem on 31/05/2023.
//

import SwiftUI

struct Profile: View {
    let profileLinkNames: [String] = ["Saved Articles", "Followers", "Following"]

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ForEach(profileLinkNames, id: \.self) { profileLinkName in
                    ProfileLink(profileLinkName: profileLinkName)
                }
                Spacer()
            }
            .navigationBarTitle("Khawaja Abdul Haleem")
            .navigationBarItems(
                leading:
                Text("Premium Member")
                    .font(.body)
                    .foregroundColor(Color(.systemGray)),
                trailing: // Add trailing view
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle()))
        }
    }
}


struct ProfileLink: View {
    let profileLinkName: String // Add parameter for profileLinkName

    var body: some View {
        NavigationLink(destination: Text("")) {
            VStack(spacing: 0) {
                HStack {
                    Text(profileLinkName)
                        .font(.body)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(.systemGray3))
                        .font(.system(size: 20))
                }
                .contentShape(Rectangle()) // Defining the shape of the HStack
                .padding(EdgeInsets(top: 17, leading: 21, bottom: 17, trailing: 21))
                Divider()
            }
           
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
