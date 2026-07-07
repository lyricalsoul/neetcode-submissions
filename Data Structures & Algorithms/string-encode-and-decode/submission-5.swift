class Solution {
    func encode(_ strs: [String]) -> String {
        return strs.map { "\($0.count)#\($0)" }.joined(separator: "")
    }

    func decode(_ str: String) -> [String] {
      var result: [String] = []
      var i = str.startIndex

      while i < str.endIndex {
          var j = i
          while str[j] != "#" {
              j = str.index(after: j)
          }

          let length = Int(str[i..<j])!
          let start = str.index(after: j)
          let end = str.index(start, offsetBy: length)

          result.append(String(str[start..<end]))
          i = end
      }

      return result
  }
}