//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 3052
import Foundation

var numArr: Array<Int> = []

for _ in 1...10 {
    let readNum = Int(readLine()!)!
    guard !(numArr.contains(readNum % 42)) else { continue }
    numArr.append(readNum % 42)
}

print(numArr.count)
