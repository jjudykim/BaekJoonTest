//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 10950
import Foundation

let num = Int(readLine()!)!
var nums: [(Int, Int)] = []

for i in 1...num {
    let readNum = readLine()!
    let readNumArr = readNum.components(separatedBy: " ")
    let firstNum = Int(readNumArr[0])!
    let secondNum = Int(readNumArr[1])!
    nums.append((firstNum, secondNum))
}

for i in nums {
    print(i.0 + i.1)
}
