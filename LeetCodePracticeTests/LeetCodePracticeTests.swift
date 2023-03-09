//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func maxProfit(_ prices: [Int]) -> Int {

        // 目前利益
        var sum = 0

        if prices.count == 0 {
            return 0
        }

        for i in 1 ..< prices.count {
            if prices[i] > prices[i-1] {
                sum += prices[i] - prices[i-1]
            }
        }

        return sum
    }

    func test_tes() {
        let answer = maxProfit([7,1,5,3,6,4,10])
        print("will - answer: \(answer)")
    }

}
