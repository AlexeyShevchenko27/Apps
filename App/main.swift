//
//  main.swift
//  App
//
//  Created by Alexey on 12.03.2018.
//  Copyright © 2018 Alexey. All rights reserved.
//

import Foundation

let n: Double = 9
let p = 0.55
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
var mat: Double
var mass: [Double] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for i in mass
{
    eq = Double(fact(n)/(fact(i)*fact(n-i)))
    deg = Double(truncating: pow(p, i) as NSNumber)
    mat = Double(truncating: pow(q, n-i) as NSNumber)
    whole = eq*deg*mat
    print("P(\(Int(i))) = \(whole)")
}
