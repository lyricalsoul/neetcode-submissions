class Solution {
    /**
     * @param {string} s
     * @return {boolean}
     */
    isPalindrome(s: string): boolean {
        const cleanString = s.replaceAll(/[^a-zA-Z0-9]/g, '').toLowerCase()
      
        for (let i = 0; i < Math.floor(cleanString.length/2); i++) {
            if (cleanString[i] !== cleanString[cleanString.length - 1 - i]) return false
        }

        return true
    }
}
