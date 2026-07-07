class Solution {
  func isValidSudoku(_ board: [[Character]]) -> Bool {
    guard isValid(rows: board) else { return false }
    guard isValid(columns: board) else { return false }
    guard isValid(subGroups: board) else { return false }
    return true
  }

  func isValid(rows: [[Character]]) -> Bool {
    for row in rows {
      var map = Set<Character>()
      for ch in row {
        if ch == "." {
          continue
        }
        if map.contains(ch) {
          return false
        }
        map.insert(ch)
      }
    }
    return true
  }

  func isValid(columns: [[Character]]) -> Bool {
    for j in 0..<columns.count {
      var map = Set<Character>()
      for i in 0..<columns.count {
        var ch = columns[i][j]
        if ch == "." {
          continue
        }
        if map.contains(ch) {
          return false
        }
        map.insert(ch)
      }
    }
    return true
  }

  func isValid(subGroups: [[Character]]) -> Bool {
    for boxRow in stride(from: 0, to: 9, by: 3) {
      for boxCol in stride(from: 0, to: 9, by: 3) {
        var seen = Set<Character>()
        for row in boxRow..<boxRow + 3 {
          for col in boxCol..<boxCol + 3 {
            let ch = subGroups[row][col]

            if ch == "." { continue }
            if seen.contains(ch) {
              return false
            }
            seen.insert(ch)
          }
        }
      }
    }

    return true
  }
}