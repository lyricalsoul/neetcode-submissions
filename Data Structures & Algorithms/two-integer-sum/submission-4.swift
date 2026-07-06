class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seenValues = [Int:Int]()

        var i = 0
        for var n in nums {
            let missing = target - n
            if let idx = seenValues[missing] {
                return [idx, i]
            }
            seenValues[n] = i
            i += 1
        }

        fatalError("Shouldn't have happened!")
    }
}
