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
            
            Text("Radius")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.radius)")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Diameter")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.diameter)")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Perimeter")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.perimeter)")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Area")
                .padding(.leading)
                .bold()
            Text("\(currentCircle.area)")
                .padding(.leading)
            
            Spacer()
        }
        
    }
    
}

#Preview {
    CircleView()
}
