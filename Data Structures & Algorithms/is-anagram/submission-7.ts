class Solution {
    /**
     * @param {string} s
     * @param {string} t
     * @return {boolean}
     */
    isAnagram(s: string, t: string): boolean {
        if (s.length != t.length) return false

        var arr = []
        for (let sCh = 0; sCh < s.length; sCh++) {
            
            const code = s.charCodeAt(sCh)
            if (t.indexOf(s[sCh]) == -1) return false
            arr[code] = (arr[code] || 0) + 1
        }

        for (let tCh = 0; tCh < t.length; tCh++) {
            const code = t.charCodeAt(tCh)
            //if (!arr[code]) { return false }
            arr[code] = (arr[code] || 0) - 1
        }

        for (let i = 0; i < arr.length; i++) {
            if (arr[i] > 0) { return false }
        }

        return true
    }
}
