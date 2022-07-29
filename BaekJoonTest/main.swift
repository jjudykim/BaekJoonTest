//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

// 10818
import Foundation

let num = Int(readLine()!)!
var numArr = readLine()!.split(separator: " ").map{Int($0)!}

numArr.sort()

print("\(numArr[0]) \(numArr[numArr.count - 1])")
