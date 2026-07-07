class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let filtered = Array(s.filter { $0.isLetter || $0.isNumber }.lowercased())

        for i in 0..<(filtered.count/2) {
            guard filtered[i] == filtered[filtered.count - i - 1] else { return false }
        }
        return true
    }
}
