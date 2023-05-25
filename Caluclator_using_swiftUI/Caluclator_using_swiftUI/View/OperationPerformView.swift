//
//  OperationPerformView.swift
//  Caluclator_using_swiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import SwiftUI


struct OperationPerformView: View {
    @State var inputValues = ""
    @State var outputValues = ""
    @State var showAlert = false
     
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text(inputValues)
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .heavy))
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                
                HStack {
                    Spacer()
                    Text(outputValues)
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.system(size: 50, weight: .heavy))
                }
                
                ForEach(grid, id: \.self) {
                    row in
                    HStack {
                        ForEach(row, id: \.self) {
                            cell in
                            Button(action: {buttonPressed(cell: cell)}, label: {
                                Text(cell)
                                    .foregroundColor(buttonColor(cell))
                                    .font(.system(size: 40, weight: .heavy))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                            })
                        }
                    }
                }
            }.background(Color.black.ignoresSafeArea())
                .alert(isPresented: $showAlert) {
                    Alert(title: Text(invalidInputText), message: Text(inputValues), dismissButton: .default(Text(okayText)))
                }
        }
    }



func addOperator(_ cell: String) {
    if !inputValues.isEmpty {
        let last = String(inputValues.last!)
        if operators.contains(last) || last == OperatorsEnum.subtraction.rawValue {
            inputValues.removeLast()
        }
        inputValues += cell
    }
}

func addMinus() {
    if inputValues.isEmpty || inputValues.last! != "-" {
        inputValues += OperatorsEnum.subtraction.rawValue
    }
}


func buttonPressed(cell: String) {
    switch cell {
    case OperatorsEnum.clear.rawValue:
        inputValues = ""
        outputValues = ""
    case OperatorsEnum.remove.rawValue:
        inputValues = String(inputValues.dropLast())
    case OperatorsEnum.equal.rawValue:
        outputValues = calculateResult()
    case OperatorsEnum.subtraction.rawValue:
        addMinus()
    case OperatorsEnum.multiply.rawValue, OperatorsEnum.divide.rawValue, OperatorsEnum.reminder.rawValue, OperatorsEnum.addition.rawValue:
        addOperator(cell)
    default:
        inputValues += cell
    }
}



func calculateResult() -> String {
    if validInput() {
        var input = inputValues.replacingOccurrences(of: OperatorsEnum.reminder.rawValue, with: "*0.01")
        input = inputValues.replacingOccurrences(of: OperatorsEnum.multiply.rawValue, with: "*")
        let expression = NSExpression(format: input)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        return formatResult(val: result)
    }
    
    return  ""
    
}
func validInput() -> Bool {
    if inputValues.isEmpty {
        return false
    }
    let last = String(inputValues.last!)
    if (operators.contains(last) || last == OperatorsEnum.subtraction.rawValue) {
        if last != OperatorsEnum.reminder.rawValue || inputValues.count == 1 {
            return false
        }
    }
    return true
}
func formatResult(val: Double) -> String {
    if val.truncatingRemainder(dividingBy: 1) == 0 {
        return String(format: "%.0f", val)
    }
    return String(format: "%.2f", val)
}
}

struct OperationPerformView_Previews: PreviewProvider {
    static var previews: some View {
        OperationPerformView()
    }
}
