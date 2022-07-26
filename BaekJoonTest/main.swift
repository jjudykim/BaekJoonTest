//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 11022
import Foundation

var num = Int(readLine()!)!
var numArray: Array<(Int, Int)> = []

for _ in 1...num {
    let readArray = readLine()!.components(separatedBy: " ")
    let firstNum = Int(readArray[0])!
    let secondNum = Int(readArray[1])!
    numArray.append((firstNum, secondNum))
}

for i in 0...numArray.count-1{
    print("Case #\(i+1): \(numArray[i].0) + \(numArray[i].1) = \(numArray[i].0 + numArray[i].1)")
}
