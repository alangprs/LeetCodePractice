//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func finalValueAfterOperations(_ operations: [String]) -> Int {

        let addition01 = "X++"
        let addition02 = "++X"
        let subtraction01 = "--X"
        let subtraction02 = "X--"
        // 初始值
        var n = 0
        // 條件
        for operation in operations {
            if operation == addition01 || operation == addition02 {
                n += 1
            } else if operation == subtraction01 || operation == subtraction02 {
                n -= 1
            }
        }

        return n
    }

    func test_tes() {
        let answer = finalValueAfterOperations(["++X","++X","X++"])
        print("will - answer: \(answer)")
    }

}

