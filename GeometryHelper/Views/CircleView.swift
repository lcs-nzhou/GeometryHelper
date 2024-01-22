//
//  SwiftUIView.swift
//  GeometryHelper
//
//  Created by Shuyu Zhou on 2024-01-15.
//

import SwiftUI

struct CircleView: View {
    //MARK: Stored properties
    @State var currentCircle = Circle(radius: 10.0)
    
    //MARK: Computed properties
    var body: some View {
        VStack(alignment: .leading){
            Image("CircleImage")
                .resizable()
                .frame(maxHeight: 300)
            HStack {
                Text("0")
                    .padding(.leading)
                Slider(value: $currentCircle.radius, in: 0...100)
                Text("100")
                    .padding(.trailing)
            }
            .padding(.bottom)
            
            Text("Radius")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.radius.roundedTo(precision: 1).formatted())")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Diameter")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.diameter.roundedTo(precision: 1).formatted())")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Perimeter")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.perimeter.roundedTo(precision: 1).formatted())")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Area")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.area.roundedTo(precision: 1).formatted())")
                .padding(.leading)
            
            Spacer()
        }
        
    }
}


extension Double {
    
    // UInt is an unsigned integer, which means a negative precision value
    // cannot be provided (that would not be logical, so it should not be allowed)
    func roundedTo(precision: UInt) -> Double {

        // Establish the multiplier (10, 100, 1000, etc based on precision value provided)
        let multiplier = pow(10, Double(precision))
        
        // Move decimal place to the right (by multiplying).
        // Round to nearest whole number.
        // Then move decimal place back to the left.
        let roundedValue = (self * multiplier).rounded() / multiplier
        
        // Return the rounded value
        return roundedValue
    }
}



#Preview {
    CircleView()
}
