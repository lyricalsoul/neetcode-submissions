class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 { return false }
        
        let pairs: [Character: Character] = [")": "(", "}": "{", "]": "["]
        var stack = [Character]()
        
        for char in s {
            if let matchingOpen = pairs[char] {
                if stack.popLast() != matchingOpen {
                    return false
                }
            } else {
                stack.append(char)
            }
        }
        
        return stack.isEmpty
    }
}
