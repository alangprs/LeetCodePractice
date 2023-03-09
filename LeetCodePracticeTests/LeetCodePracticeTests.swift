//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func singleNumber(_ nums: [Int]) -> Int {

        var answer = Set<Int>()

        for num in nums {
            if !answer.insert(num).0 {
                answer.remove(num)
            }
        }

        return answer.first!
    }

    func test_tes() {
        let answer = singleNumber([2,2,1])
        print("will - answer: \(answer)")
    }

}
