//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2525
import Foundation

let currentTimeLine = readLine()!
let currentTimeArr = currentTimeLine.components(separatedBy: " ")
let currentH = Int(currentTimeArr[0])!
let currentM = Int(currentTimeArr[1])!

let needTime = Int(readLine()!)!

var changeH = currentH
var changeM = currentM
if currentM + needTime >= 60 {
    changeH += (currentM + needTime) / 60
    changeM = (currentM + needTime) % 60
    } else {
    changeM += needTime
}
changeH %= 24

print("\(changeH) \(changeM)")
