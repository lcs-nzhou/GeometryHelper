//
//  SwiftUIView.swift
//  GeometryHelper
//
//  Created by Shuyu Zhou on 2024-01-15.
//

import SwiftUI

struct CircleView: View {
    //MARK: Stored properties
    @State var radius = 10.0
    
    //MARK: Computed properties
    var body: some View {
        Text("\(radius)")
            .font(.largeTitle)
    }
}

#Preview {
    CircleView()
}
