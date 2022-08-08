//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

import Foundation

// 25304
// 구매한 물건의 가격과 개수로 계산한 총 금액이 영수증에 적힌 총 금액과 일치하는지 검사해보자.
// 첫째 줄에는 영수증에 적힌 총 금액 X가 주어진다.
// 둘째 줄에는 영수증에 적힌 구매한 물건의 종류의 수 N이 주어진다.
// 이후 N개의 줄에는 각 물건의 가격 a와 개수 b가 공백을 사이에 두고 주어진다.

func mine() {
    let total = Int(readLine()!)!
    let count = Int(readLine()!)!
    var listTotal = 0
    
    for _ in 1...count {
        let list = readLine()!.split{ $0 == " " }.map{ Int($0)! }
        listTotal += (list[0] * list[1])
    }
    
    total == listTotal ? print("Yes") : print("No")
}

mine()




