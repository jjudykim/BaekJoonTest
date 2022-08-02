//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 10809
import Foundation

let readStr = readLine()!

for i in Character("a").asciiValue! ... Character("z").asciiValue! {
    if readStr.contains(Character(UnicodeScalar(i))) {
        let index = readStr.distance(from: readStr.startIndex, to: readStr.index(of: Character(UnicodeScalar(i)))!)
        print(index, terminator: " ")
    } else {
        print("-1", terminator: " ")
    }
}
