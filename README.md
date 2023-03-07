# LeetCodePractice

### [441 - Arranging Coins] (https://github.com/alangprs/LeetCodePractice/tree/feat/441_arranging_coins)

暴力解，一行一行減，直到硬幣不足填滿當前格子

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
    
