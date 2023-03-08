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

        var minPrice = Int.max
        var maxProfit = 0

        for price in price {
            if price < minPrice {
                minPrice = price
            } else if price - minPrice > maxProfit {
                maxProfit = price - minPrice
            }
        }

        return maxProfit
    }

    func test_tes() {

        let answer = maxProfit([7,1,5,3,6,4])
        print("will - answer: \(answer)")
    }

}
