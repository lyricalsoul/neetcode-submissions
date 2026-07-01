/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root != nil {
            return max(
                maxDepth(root!.left) + 1,
                maxDepth(root!.right) + 1
            )
        } else {
            return 0
        }
    }
}
