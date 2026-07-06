class Solution {
    fun maxProfit(prices: IntArray): Int {
        var minPrice = 101
        var profit = 0

        for (price in prices) {
            if (price < minPrice) {
                minPrice = price
            }
            else if (price - minPrice > profit) {
                profit = price - minPrice
            }
        }

        return profit
    }
}