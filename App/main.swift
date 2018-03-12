//
//  main.swift
//  App
//
//  Created by Alexey on 12.03.2018.
//  Copyright © 2018 Alexey. All rights reserved.
//

import Foundation

let n = 9
let p = 0.54
let q = 1-p
func fact(_ z: Double) -> Double
    {
        if z == 0
            {
                return 1
            }
        return z * fact(z-1)
    }

var eq: Double
var whole: Double
var deg: Double
var shit: Double
var mass: [Double] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for i in mass
{
    eq = Double(fact(9)/(fact(i)*fact(9-i)))
    deg = Double(truncating: pow(0.54, i) as NSNumber)
    shit = Double(truncating: pow(0.46, 9-i) as NSNumber)
    whole = eq*deg*shit
    print(whole)
}
print("git is lit")
