//
//  TextView.swift
//  GeometryHelper
//
//  Created by Shuyu Zhou on 2024-01-29.
//

import SwiftUI

struct TextView: View {
    let name : String
    let number : Double
    var body: some View {
        Text(name)
            .padding(.leading)
            .bold()
        Text("\(number)")
            .padding(.leading)
            .padding(.bottom)
    }
}

#Preview {
    TextView(name: "cone", number: 3)
}
