//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 4344
import Foundation

let testCount = Int(readLine()!)!

for _ in 1...testCount {
    let scoreArr = readLine()!.split(separator: " ").map { Int(String($0))! }
    var sumScore = 0
    var avgOverCount = 0
    for i in scoreArr[1...] {
        sumScore += i
    }
    let avgScore = Double(sumScore) / Double(scoreArr[0])
    
    for i in scoreArr[1...] {
        if Double(i) > avgScore { avgOverCount += 1 }
    }
    
    print( String(format: "%.3f", Double(avgOverCount) / Double(scoreArr.count - 1) * 100) + "%" )
}
