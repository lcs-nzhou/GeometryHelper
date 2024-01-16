//
//  ConeView.swift
//  GeometryHelper
//
//  Created by Shuyu Zhou on 2024-01-16.
//

import SwiftUI

struct ConeView: View {
    //MARK: Stored properties
    @State var currentCone = cone(radius: 10.0, height: 20.0)
    
    //MARK: Computed properties
    var body: some View {
        VStack(alignment: .leading){
            Image("ConeImage")
                .resizable()
                .frame(maxHeight: 300)
            Text("Radius")
                .padding(.leading)
                .bold()
            HStack {
                Text("0")
                    .padding(.leading)
                Slider(value: $currentCone.radius, in: 0...100)
                Text("100")
                    .padding(.trailing)
            }
            Text("Height")
                .bold()
                .padding(.leading)
            HStack {
                Text("0")
                    .padding(.leading)
                Slider(value: $currentCone.height, in: 0...100)
                Text("100")
                    .padding(.trailing)
            }
            .padding(.bottom)
            
            Text("Radius")
                .padding(.leading)
                .bold()
            Text("\(currentCone.radius)")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Height")
                .padding(.leading)
                .bold()
            Text("\(currentCone.height)")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Slant")
                .padding(.leading)
                .bold()
            Text("\(currentCone.slant)")
                .padding(.bottom)
                .padding(.leading)
                
            Text("Surface Area")
                .padding(.leading)
                .bold()
            Text("\(currentCone.surfaceArea)")
                .padding(.leading)
                .padding(.bottom)
            
            Text("Volume")
                .padding(.leading)
                .bold()
            Text("\(currentCone.volume)")
                .padding(.leading)
            
            Spacer()
        }
        
    }
}

#Preview {
    ConeView()
}
