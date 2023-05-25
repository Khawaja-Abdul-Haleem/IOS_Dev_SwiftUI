//
//  ButtonColor.swift
//  Caluclator_using_swiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import Foundation
import SwiftUI


func buttonColor(_ cell: String) -> Color {
    if (cell == OperatorsEnum.clear.rawValue || cell == OperatorsEnum.remove.rawValue ) {
        return .red
    }
    
    if (cell == OperatorsEnum.subtraction.rawValue || cell == OperatorsEnum.equal.rawValue || operators.contains(cell)) {
        return .orange
    }
    return .white
}
