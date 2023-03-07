//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func arrangeCoins(_ n: Int) -> Int {
        /// 行數
        var row = 1
        /// 每行硬幣數量
        var rowCoin = n - 1

        while rowCoin >= row + 1 {
            row += 1
            rowCoin -= row
        }

        if n == 0 {
            return 0
        } else {
            return row
        }
    }

    func test_tes() {
        let answer = arrangeCoins(11)
        print("will - answer: \(answer)")
    }

    func isPalindrome(_ s: String) -> Bool {
        // 轉成小寫、去除標點符號、空格
        // 轉成小寫、去除標點符號、空格
        let unsignedList = s.components(separatedBy: CharacterSet.alphanumerics.inverted)
        let unsignedStr = unsignedList.joined().lowercased()

        let answerElement = unsignedStr.reversed()
        let strElement = answerElement.map{String($0)}
        let answer = strElement.joined()

        if answer == unsignedStr {
            return true
        } else if answer == " " {
            return true
        } else {
            return false
        }
    }

}
