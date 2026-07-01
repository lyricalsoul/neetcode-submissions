class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()
        for var num in nums {
            if seen.contains(num) {
                return true
            }
            seen.insert(num)
        }
        return false
    }
}
