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
var alphabetArr = Array(repeating: 0, count: 26)
for i in inputWord.utf16 {
    alphabetArr[Int(i - 65)] += 1
}

let maxNum = alphabetArr.max()!
if alphabetArr.firstIndex(of: maxNum)! == alphabetArr.lastIndex(of: maxNum)! {
    print(Character(UnicodeScalar(alphabetArr.firstIndex(of: maxNum)! + 65)!))
} else {
    print("?")
}
