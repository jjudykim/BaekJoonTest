//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//
// 5622
// 숫자 1을 걸려면 총 2초가 필요하다.
// 1보다 큰 수를 거는데 걸리는 시간은 이보다 더 걸리며, 한 칸 옆에 있는 숫자를 걸기 위해선 1초씩 더 걸린다.
// 상근이의 할머니는 전화 번호를 각 숫자에 해당하는 문자로 외운다.
// 즉, 어떤 단어를 걸 때, 각 알파벳에 해당하는 숫자를 걸면 된다. 예를 들어, UNUCIC는 868242와 같다.


import Foundation

let inputStr = Array(readLine()!)
var countTime = 0


for i in inputStr {
    var temp = 0
    switch i {
    case "A", "B", "C" :
        temp = 2
    case "D", "E", "F" :
        temp = 3
    case "G", "H", "I" :
        temp = 4
    case "J", "K", "L" :
        temp = 5
    case "M", "N", "O" :
        temp = 6
    case "P", "Q", "R", "S" :
        temp = 7
    case "T", "U", "V" :
        temp = 8
    case "W", "X", "Y", "Z" :
        temp = 9
    default:
        break
    }
    countTime += 2 + temp - 1
}

print(countTime)
