//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2577
import Foundation

var numArr: Array<Int> = []
var sumNum = 0
var strNum = ""

for _ in 1...3 {
    let readNum = Int(readLine()!)!
    numArr.append(readNum)
}

sumNum = numArr[0] * numArr[1] * numArr[2]
strNum = String(sumNum)

for i in 0...9 {
    var count = 0
    for j in strNum {
        if String(i) == String(j) {
            count += 1
        }
    }
    print(count)
}
