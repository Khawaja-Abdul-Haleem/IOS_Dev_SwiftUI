//
//  LoginScree.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import Foundation
import SwiftUI

struct ImageViewTop: View {
    var body: some View {
        HStack {
            Image(universityMainLogo)
        }
    }
}

struct FieldViewMiddle: View {
    var body: some View {
        HStack {
            VStack{
                TextField("Hellow", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                TextField("Hellow", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ButtonViewBottom: View {
    var body: some View {
        HStack {
            Button("Login") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}
