//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 11720
import Foundation

let caseCount = Int(readLine()!)!
let numArr = Array(readLine()!).map { Int(String($0))! }
var sum = 0

for i in numArr {
    sum += i
}

print(sum)
