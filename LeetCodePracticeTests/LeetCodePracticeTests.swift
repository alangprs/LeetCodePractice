//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by cm0768 on 2023/3/7.
//

import XCTest
@testable import LeetCodePractice

/// 樹結構
public class TreeNode {
    /// 資料
    public var val: Int
    /// 左邊指針位置
    public var left: TreeNode?
    /// 右邊指針位置
    public var right: TreeNode?

    init() { self.val = 0; self.left = nil; self.right = nil;}
    init(val: Int, left: TreeNode? = nil, right: TreeNode? = nil, last: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}


final class LeetCodePracticeTests: XCTestCase {

    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var result = [[Int]]()

        /// 目前此層所有 node
        var currentLevelNodes = [root]

        // 執行條件：array 不是空的時候
        while currentLevelNodes.isEmpty == false {

            /// 每層內容
            var currentLevelValues = [Int]()
            /// 下一層 node
            var nextLevelNodes = [TreeNode]()

            for node in currentLevelNodes {
                currentLevelValues.append(node.val)

                if let leftNode = node.left {
                    nextLevelNodes.append(leftNode)
                }

                if let rightNode = node.right {
                    nextLevelNodes.append(rightNode)
                }
            }

            result.insert(currentLevelValues, at: 0)
            currentLevelNodes = nextLevelNodes
        }

        return result
    }

    func test_tes() {

        let tree = TreeNode(val: 3, left: TreeNode(val: 9, left: nil, right: nil), right: TreeNode(val: 20, left: TreeNode(val: 15, left: nil, right: nil), right: TreeNode(val: 7)))

        let answer = levelOrderBottom(tree)
        print("will - answer: \(answer)")
    }

}
