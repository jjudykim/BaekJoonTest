//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//
// 2941
// ljes=njak은 크로아티아 알파벳 6개(lj, e, š, nj, a, k)로 이루어져 있다.
// 단어가 주어졌을 때, 몇 개의 크로아티아 알파벳으로 이루어져 있는지 출력한다.


import Foundation

let inputStr = readLine()!
let alphabetArr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var countArr: Array<Int> = []

var count = 0
var dzCount = 0

for t in alphabetArr {
    if t == "dz=" {
        dzCount += inputStr.components(separatedBy: t).count - 1
    }
    else if t != "z=" {
        count += inputStr.components(separatedBy: t).count - 1
    } else {
        count += inputStr.replacingOccurrences(of: "dz=", with: "").components(separatedBy: t).count - 1
    }
}
print(inputStr.count - (count * 2 + dzCount * 3) + count + dzCount)
