class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var chars = [Character:Int]()

        for var ch in s {
            chars[ch] = chars[ch] != nil ? chars[ch]! + 1: 1
        }

        for var chs in t {
            guard let val = chars[chs] else {
                return false
            }
            chars[chs] = val - 1
        }

        for var (_, val) in chars {
            if val > 0 {
                return false
            }
        }
        return true
    }
}
