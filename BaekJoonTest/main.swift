//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 8958
import Foundation

// "OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.
// OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.
// 첫째 줄에 테스트 케이스의 개수가 주어진다.
// 각 테스트 케이스는 한 줄로 이루어져 있고, 길이가 0보다 크고 80보다 작은 문자열이 주어진다. 문자열은 O와 X만으로 이루어져 있다.

let testCount = Int(readLine()!)!
var strArr: [String] = []

for _ in 1...testCount {
    strArr.append(readLine()!)
}

for i in strArr {
    var isPreviousCorrect = false
    var score = 0
    var currentScore = 0
    for j in i {
        guard j == "O" else {
            isPreviousCorrect = false
            continue
        }
        
        if isPreviousCorrect { currentScore += 1}
        else { currentScore = 1 }
        isPreviousCorrect = true
        score += currentScore
    }
    print(score)
}
