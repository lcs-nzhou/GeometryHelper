//
//  Cone.swift
//  GeometryHelper
//
//  Created by Shuyu Zhou on 2024-01-16.
//

import Foundation

struct cone {
    //MARK: stored properties
    var radius : Double
    var height : Double
    
    //MARK: computed properties
    var slant : Double {
        return (radius * radius + height * height) .squareRoot()
    }
    var surfaceArea : Double {
        return radius * radius * Double.pi + Double.pi * radius * slant
    }
    var volume : Double {
        return 1/3 * Double.pi * radius * radius * height
    }
}
