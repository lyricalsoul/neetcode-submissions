class Solution {
    fun topKFrequent(nums: IntArray, k: Int): IntArray {
        val freqMap = mutableMapOf<Int, Int>()
        for (num in nums) freqMap[num] = freqMap.getOrDefault(num, 0) + 1

        val minHeap = PriorityQueue<Int> { a, b -> freqMap[a]!! - freqMap[b]!! }
        for (key in freqMap.keys) {
            minHeap.offer(key)
            if (minHeap.size > k) minHeap.poll()
        }

        return minHeap.toIntArray()
    }
}
