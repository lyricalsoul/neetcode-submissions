class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagrams = [Int:[String]]()

        for var str in strs {
            var stStr = str.sorted().hashValue
            if anagrams[stStr] != nil {
                anagrams[stStr]!.append(str)
            } else {
                anagrams[stStr] = [str]
            }
        }

        return anagrams.map { $0.value }
    }
}
