//
//  EventsModel.swift
//  Horizontal_ScrollView_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import Foundation
import SwiftUI

struct EventsModel: Identifiable {
    let id: Int
    let name: String
    let emoji: String
    let color: Color
}

let events = [
    EventsModel(id: 0, name: "Birthday", emoji: "🥳", color: Color.red),
    EventsModel(id: 1, name: "Wedding", emoji: "👰", color: Color.blue),
    EventsModel(id: 2, name: "Party", emoji: "🎉", color: Color.green),
    EventsModel(id: 3, name: "Christmas", emoji: "🎄", color: Color.purple),
]
