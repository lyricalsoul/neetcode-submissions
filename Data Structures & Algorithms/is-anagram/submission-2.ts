class Solution {
    /**
     * @param {string} s
     * @param {string} t
     * @return {boolean}
     */
    isAnagram(s: string, t: string): boolean {
        if (s.length != t.length) return false
        
        for (const sCh of s) {
            if (t.indexOf(sCh) == -1) return false
            t = t.replace(sCh, '')
            s = s.replace(sCh, '')
        }
        return t == s
    }
}
