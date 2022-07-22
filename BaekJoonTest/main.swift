//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2884
import Foundation

let line = readLine()!
let timeArr = line.components(separatedBy: " ")
let hour = Int(timeArr[0])!
let min = Int(timeArr[1])!

var changeH = hour
var changeM = min
    
if min - 45 < 0 {
    if changeH == 0 {
        changeH = 23
    } else {
        changeH -= 1
    }
    changeM = 60 + (changeM - 45)
} else {
    changeM -= 45
}

print(changeH, terminator: " ")
print(changeM)


