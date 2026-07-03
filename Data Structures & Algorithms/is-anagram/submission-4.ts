class Solution {
    /**
     * @param {string} s
     * @param {string} t
     * @return {boolean}
     */
    isAnagram(s: string, t: string): boolean {
        if (s.length != t.length) return false

        var map = {}
        for (const sCh of s) {
            //if (t.indexOf(sCh) == -1) return false
            map[sCh] = (map[sCh] || 0) + 1
        }

        for (const tCh of t) {
            if (!map[tCh]) return false
            map[tCh] = (map[tCh] || 0) - 1
        }

        return true
    }
}
