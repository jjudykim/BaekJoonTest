//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 1157
// 알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오.
// 단, 대문자와 소문자를 구분하지 않는다.
// 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.
import Foundation

let inputWord = readLine()!.uppercased()
var alphabetArr: [Character] = []
var alphabetCount: [Int] = []

for i in inputWord {
    if !alphabetArr.contains(i) {
        alphabetArr.append(i)
        alphabetCount.append(0)
    }
    for j in alphabetArr {
        if i == j {
            let index = alphabetArr.distance(from: alphabetArr.startIndex, to: alphabetArr.firstIndex(of: i)!)
            alphabetCount[index] += 1
        }
    }
}

let maxNum = alphabetCount.max()!

if alphabetCount.firstIndex(of: maxNum) != alphabetCount.lastIndex(of: maxNum) {
    print("?")
} else {
    let maxNumIndex = alphabetCount.distance(from: alphabetCount.startIndex, to: alphabetCount.firstIndex(of: maxNum)!)
    print(alphabetArr[maxNumIndex])
}

