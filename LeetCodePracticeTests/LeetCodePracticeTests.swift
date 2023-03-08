//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

final class LeetCodePracticeTests: XCTestCase {

    func dayOfYear(_ date: String) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let calendar = Calendar.current

        // 取得 題目的年份
        guard let yearDate = dateFormatter.date(from: date) else {
            return 0
        }

        let year = calendar.component(.year, from: yearDate)

        let normDate = dateFormatter.date(from: "\(year)-01-1")

        let inputDate = dateFormatter.date(from: date)

        guard let date01 = normDate,
              let date02 = inputDate,
              let components = calendar.dateComponents([.day], from: date01, to: date02).day else {

            return 0
        }

        return components + 1

    }

    func test_tes() {
        let answer = dayOfYear("2019-01-09")
        print("will - answer: \(answer)")
    }

}
