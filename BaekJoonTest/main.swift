//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 10951
import Foundation

var resultArr: Array<Int> = []

while true {
    guard let readInput = readLine() else { break }
    let inputArr = readInput.components(separatedBy: " ")
    guard let firstNum = Int(inputArr[0]) else { break }
    guard let secondNum = Int(inputArr[1]) else { break }
    resultArr.append(firstNum + secondNum)
}

for i in resultArr {
    print(i)
}

