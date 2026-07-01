class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        if nums.count < 2 { return false }
        
        var sortedNums = nums
        sortedNums.sort()
        
        for i in 0..<sortedNums.count - 1 {
            if sortedNums[i] == sortedNums[i + 1] {
                return true
            }
        }

        return false
    }
}
