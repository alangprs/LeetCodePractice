//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func maxProfit(_ price: [Int]) -> Int {
        
        /// 計算後金額
        var bigNumber = Int()
        
        for i in 0 ..< price.count {
            for j in (i+1) ..< price.count {
                
                let sum = price[i] - price[j]
                
                if sum < i,
                   sum < bigNumber {
                    bigNumber = sum
                }
                
            }
        }
        
        // 返回正整數
        return abs(bigNumber)
    }

    func test_tes() {
        let answer = maxProfit([7,6,4,3,1])
        print("will - answer: \(answer)")
    }

}
