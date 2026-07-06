class Solution {
    fun lengthOfLongestSubstring(s: String): Int {
        var longest = 0
        val current = mutableSetOf<Char>()
        var left = 0

        for (right in 0 until s.length) {
            while (current.contains(s[right])) {
                current.remove(s[left])
                left++
            }

            current.add(s[right])

            if (current.size > longest) {
                longest = current.size
            }
        }

        return longest
    }
}
