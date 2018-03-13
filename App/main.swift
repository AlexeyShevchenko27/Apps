//
//  main.swift
//  App
//
//  Created by Alexey on 12.03.2018.
//  Copyright © 2018 Alexey. All rights reserved.
//

import Foundation
print("Enter N = ", terminator: ""); let n: Double = Double(readLine()!)!
print("Enter p = ", terminator: ""); let p: Double = Double(readLine()!)!
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

for i in 0...Int(n)
{
    eq = Double(fact(n)/(fact(Double(i))*fact(n-Double(i))))
    deg = pow(p, Double(i))
    mat = pow(q, n-Double(i))
    whole = eq*deg*mat
    print("P(\(Int(i))) = \(whole)")
}
