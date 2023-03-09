//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func fizzBuzz(_ n: Int) -> [String] {
        var answer = [String]()

        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                answer.append("FizzBuzz")
            } else if i % 3 == 0 {
                answer.append("Fizz")
            } else if i % 5 == 0 {
                answer.append("Buzz")
            } else {
                answer.append("\(i)")
            }
        }

        return answer
    }

    func test_tes() {
        let answer = fizzBuzz(30)
        print("will - answer: \(answer)")
    }

}
