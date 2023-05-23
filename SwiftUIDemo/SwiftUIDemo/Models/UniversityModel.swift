//
//  UniversityModel.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import Foundation

struct UniversityModelItems: Identifiable {
    var id: Int
    var name: String
    var address: String
    var phone: String
    var logo: String
}

struct UniversityModel {
    var university:[UniversityModelItems] = [
        UniversityModelItems(id: 1, name: "Arid University", address: "MurreeRoad Rwp", phone: "051 xxxxx", logo: universityMainLogo),
        UniversityModelItems(id: 2, name: "Bahria University", address: "Islamabad", phone: "051 xxxxx", logo: universityMainLogo),
        UniversityModelItems(id: 3, name: "Comsats University", address: "Lahore", phone: "051 xxxxx", logo: universityMainLogo),
        UniversityModelItems(id: 4, name: "FAST", address: "Lahore", phone: "051 xxxxx", logo: universityMainLogo),
        UniversityModelItems(id: 5, name: "LUMS", address: "Lahore", phone: "051 xxxxx", logo: universityMainLogo),
    ]
}
