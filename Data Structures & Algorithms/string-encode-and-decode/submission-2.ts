class Solution {
    // this is a horrible question...
    /**
     * @param {string[]} strs
     * @returns {string}
     */
    encode(strs: string[]): string {
        return strs.map(a => `${a.length}\u200B${a}`).join('')
    }

    /**
     * @param {string} str
     * @returns {string[]}
     */
    decode(str: string): string[] {
        let outs = []
        let i = 0
        while (i < str.length) {
            let j = i
            while (str[j] !== '\u200B') j++
            const len = parseInt(str.slice(i, j))
            outs.push(str.slice(j + 1, j + 1 + len))
            i = j + 1 + len
        }
        return outs
    }
}
