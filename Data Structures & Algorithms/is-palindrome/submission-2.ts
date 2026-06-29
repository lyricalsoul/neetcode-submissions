class Solution {
    /**
     * @param {string} s
     * @return {boolean}
     */
    isPalindrome(s: string): boolean {
        const cleanString = s.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
      
        for (let i = 0; i < Math.floor(cleanString.length/2); i++) {
            if (cleanString[i] !== cleanString[cleanString.length - 1 - i]) return false
        }

        return true
    }
}
