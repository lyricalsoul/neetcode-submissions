class Solution {
    /**
     * @param {number[]} nums
     * @param {number} target
     * @return {number[]}
     */
    twoSum(nums: number[], target: number): number[] {
        const seen = Object.create(null)
        for (let i = 0; i < nums.length; i++) {
            const cur = nums[i]
            const tgt = target - nums[i]
            //console.log(cur, tgt, seen[tgt])
            if (seen[tgt] >= 0) return [seen[tgt], i]
            seen[cur] = i
        }
    }
}
