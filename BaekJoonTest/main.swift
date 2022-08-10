//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//
// 2908
// 예를 들어, 734와 893을 칠판에 적었다면, 상수는 이 수를 437과 398로 읽는다. 따라서, 상수는 두 수중 큰 수인 437을 큰 수라고 말할 것이다.
// 두 수가 주어졌을 때, 상수의 대답을 출력하는 프로그램을 작성하시오.

import Foundation

let str = readLine()!.components(separatedBy: " ")
var num1 = Array(str[0])
var num2 = Array(str[1])

num1.swapAt(0, 2)
num2.swapAt(0, 2)

let numInt1 = Int(String(num1))!
let numInt2 = Int(String(num2))!

numInt1 > numInt2 ? print(numInt1) : print(numInt2)


// 1등 코드
var input = readLine()!.split(separator: " ").map { String($0.reversed()) }   // 역순으로 매핑
print(input.max()!)   // 가장 큰 값 출력
