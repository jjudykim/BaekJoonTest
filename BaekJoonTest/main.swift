//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 2439
import Foundation

let num = Int(readLine()!)!

for i in 1...num{
    if(num - i != 0) {
        for _ in 1...num - i {
            print(" ", terminator: "")
        }
    }
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}
