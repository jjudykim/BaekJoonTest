//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 10952
import Foundation

var resultArr: Array<Int> = []

while true {
    let inputArr = readLine()!.components(separatedBy: " ")
    let firstNum = Int(inputArr[0])!
    let secondNum = Int(inputArr[1])!
    if firstNum == 0 && secondNum == 0 { break }
    
    resultArr.append(firstNum + secondNum)
}

for i in resultArr {
    print(i)
}

