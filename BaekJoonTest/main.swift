//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2675
// 문자열 S를 입력받은 후에, 각 문자를 R번 반복해 새 문자열 P를 만든 후 출력하는 프로그램을 작성하시오.
// 즉, 첫 번째 문자를 R번 반복하고, 두 번째 문자를 R번 반복하는 식으로 P를 만들면 된다.
// S에는 QR Code "alphanumeric" 문자만 들어있다.
// QR Code "alphanumeric" 문자는 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\$%*+-./: 이다.
import Foundation

let caseCount = Int(readLine()!)!

for _ in 1...caseCount {
    let inputArr = readLine()!.components(separatedBy: " ")
    let repeatNum = Int(inputArr[0])!
    let strArr = Array(inputArr[1])
    for i in strArr {
        for _ in 1...repeatNum { print(i, terminator: "") }
    }
    print()
}


