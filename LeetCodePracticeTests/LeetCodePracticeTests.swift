//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func isPalindrome(_ s: String) -> Bool {
        // 轉成小寫、去除標點符號、空格
        // 轉成小寫、去除標點符號、空格
        let unsignedList = s.components(separatedBy: CharacterSet.alphanumerics.inverted)
        let unsignedStr = unsignedList.joined().lowercased()

        let answerElement = unsignedStr.reversed()
        let strElement = answerElement.map{String($0)}
        let answer = strElement.joined()

        if answer == unsignedStr {
            // true
            return true
        } else if answer == " " {
            // true
            return true
        } else {
            // false
            return false
        }
    }

    func test_tes() {
        let answer = isPalindrome("A man, a plan, a canal: Panama")
        print("will - answer: \(answer)")
    }

}
