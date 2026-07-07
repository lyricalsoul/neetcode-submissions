class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        let sorted = Array(Set(nums)).sorted()
        print(sorted)
        var curr = 1
        var largest = 0

        for i in 1..<sorted.count {
            if sorted[i - 1] + 1 == sorted[i] {
                curr += 1
            } else {
                largest = max(curr, largest)
                curr = 1
            }
        }

        return max(curr, largest)
    }
}
