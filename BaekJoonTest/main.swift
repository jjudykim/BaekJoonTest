//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2480
import Foundation

let line = readLine()!
let diceArr = line.components(separatedBy: " ")
let diceA = Int(diceArr[0])!
let diceB = Int(diceArr[1])!
let diceC = Int(diceArr[2])!

var score = 0
var maxDice = 0
//같은 눈이 3개가 나오면 10,000원+(같은 눈)×1,000원의 상금을 받게 된다.
//같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)×100원의 상금을 받게 된다.
//모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)×100원의 상금을 받게 된다.

if (diceA == diceB) && (diceB == diceC) {
    score = 10000 + (diceA * 1000)
} else if (diceA == diceB) || (diceA == diceC) {
    score = 1000 + (diceA * 100)
} else if (diceB == diceC) {
    score = 1000 + (diceB * 100)
} else {
    maxDice = diceA >= diceB ? diceA : diceB
    maxDice = diceC >= maxDice ? diceC : maxDice
    score = maxDice * 100
}

print(score)
