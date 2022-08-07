//
//  main.swift
//  BaekJoonTest
//
//  Created by jjudy on 2022/07/22.
//

import Foundation

// 1037
// 양수 A가 N의 진짜 약수가 되려면, N이 A의 배수이고, A가 1과 N이 아니어야 한다. 어떤 수 N의 진짜 약수가 모두 주어질 때, N을 구하는 프로그램을 작성하시오.
// 첫째 줄에 N의 진짜 약수의 개수가 주어진다. 이 개수는 50보다 작거나 같은 자연수이다.
// 둘째 줄에는 N의 진짜 약수가 주어진다. 1,000,000보다 작거나 같고, 2보다 크거나 같은 자연수이고, 중복되지 않는다.
func mine() {
    let countOfNum = Int(readLine()!)!
    var numArr = readLine()!.split(separator: " ").map { Int(String($0))! }
    var result = 0

    numArr.sort()

    if numArr.count % 2 == 0 {
        result = numArr[0] * numArr[numArr.count - 1]
    } else {
        let index = (numArr.count - 1) / 2
        result = numArr[index] * numArr[index]
    }

    print(result)
}

func anotherWay() {
    let _: Int = Int(readLine()!)!
    let num: [Int] = readLine()!.split{ $0 == " " }.map{ Int($0)! }
    print(num.min()! * num.max()!)     // 맞네.. sort 할 필요 없이 가장 큰 값과 가장 작은 값을 곱해주면 됐구나;;
}

// mine()
anotherWay()




