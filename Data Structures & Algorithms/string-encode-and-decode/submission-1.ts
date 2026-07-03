class Solution {
    // this is a horrible question...
    /**
     * @param {string[]} strs
     * @returns {string}
     */
    encode(strs: string[]): string {
        return strs.length == 0 ? '\u201b' : strs.join('\u200b')
    }

    /**
     * @param {string} str
     * @returns {string[]}
     */
    decode(str: string): string[] {
        if (str == '\u201b') return []
        return str.split('\u200b')
    }
}
