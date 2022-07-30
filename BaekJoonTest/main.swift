//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2562
import Foundation

var numArr: Array<Int> = []
var maxNum = 0
var maxIndex = 0

for _ in 1...9 {
    let readNum = Int(readLine()!)!
    numArr.append(readNum)
}

for i in 0...numArr.count-1 {
    guard numArr[i] > maxNum else { continue }
    maxNum = numArr[i]
    maxIndex = i+1
}

print("\(maxNum) \(maxIndex)")
