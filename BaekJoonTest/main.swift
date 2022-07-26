//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2438
// 문제 제대로 읽기
import Foundation

let num = Int(readLine()!)!

for i in 1...num{
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}
