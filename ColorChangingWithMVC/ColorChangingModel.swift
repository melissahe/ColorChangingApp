//
//  ColorChangingModel.swift
//  ColorChangingWithMVC
//
//  Created by C4Q on 10/17/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation
import UIKit

struct NamedColor { //created to store color and name, so we don't have to remember multiple pieces of info at one time
    let color: UIColor
    let name: String
    init(color: UIColor, name: String) {
        self.color = color
        self.name = name
    }
}

class ColorChangingModel {
    //public API - public code the controller can see
    func getNextColor() -> NamedColor {
        currentIndex += 1
        if currentIndex > colorArr.count - 1 {
            currentIndex = 0
        }
        let currentColor = colorArr[currentIndex]
        return currentColor //returns a color and name
    }
    
    func getRandomColor() -> NamedColor {
        let randomColorIndex = Int(arc4random_uniform(UInt32(colorArr.count)))
        let randomColor = colorArr[randomColorIndex]
        return randomColor //returns a color and name
    }
    
    //Private implementation - private code the controller can't see because it doesn't need to actually use these properties
    private var colorArr: [NamedColor] = [ //private restricts what comes up with "."
        NamedColor(color: .red, name: "Red"),
        NamedColor(color: .white, name: "White"),
        NamedColor(color: .blue, name: "Blue"),
        NamedColor(color: .green, name: "Green"),
        NamedColor(color: .black, name: "Black")
    ]
    
    private var currentIndex = 0 //keeps track of the index; private keeps the controller from seeing the currentIndex; we only want the controller to see the value it needs
}
