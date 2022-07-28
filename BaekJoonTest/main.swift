//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 1110
import Foundation

var cycle = 0

var num = Int(readLine()!)!
let numOfGoal = num

while true {
    cycle += 1
    let firstNum = num/10
    let secondNum = num%10
    let sumOfNum = firstNum + secondNum
    let newNum = secondNum * 10 + sumOfNum % 10
    num = newNum
    if newNum == numOfGoal { break }
}

print(cycle)
