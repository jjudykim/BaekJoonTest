//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 1546
import Foundation

// 일단 세준이는 자기 점수 중에 최댓값을 골랐다. 이 값을 M이라고 한다. 그리고 나서 모든 점수를 점수/M*100으로 고쳤다.
// 예를 들어, 세준이의 최고점이 70이고, 수학점수가 50이었으면 수학점수는 50/70*100이 되어 71.43점이 된다.
// 세준이의 성적을 위의 방법대로 새로 계산했을 때, 새로운 평균을 구하는 프로그램을 작성하시오.

let scoreCount = Int(readLine()!)!
let score = readLine()!.split(separator: " ").map { Int(String($0))! }
var changeScoreArr: [Double] = []
let maxScore = Double(score.sorted().last!)
var sumScore = 0.0

for i in score {
    changeScoreArr.append(Double(i) / maxScore * 100.0)
}

for i in changeScoreArr {
    sumScore += i
}

print(sumScore / Double(changeScoreArr.count))
