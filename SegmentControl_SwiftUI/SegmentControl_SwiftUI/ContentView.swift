//
//  ContentView.swift
//  SegmentControl_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 26/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var segmentChoice = 0
    var body: some View {
        VStack {
            Picker("", selection: $segmentChoice) {
                Text("Seg_One").tag(0)
                Text("Seg_Two").tag(1)
                Text("Seg_Three").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.orange)
            if segmentChoice == 0 {
                SegmentOne()
            }
            if segmentChoice == 1 {
                SegmentTwo()
            }
            if segmentChoice == 2 {
                SegmentThree()
            }
         
        }
        .padding()
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SegmentOne: View {
    @State var segmentChoice = 0
    var body: some View {
        ZStack {
            Color.green
        }
        
    }
}

struct SegmentTwo: View {
    @State var segmentChoice = 0
    var body: some View {
        ZStack {
            Color.pink
        }
        
    }
}

struct SegmentThree: View {
    @State var segmentChoice = 0
    var body: some View {
        ZStack {
            Color.blue
        }
        
    }
}

