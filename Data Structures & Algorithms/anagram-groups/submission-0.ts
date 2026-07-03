class Solution {
    /**
     * @param {string[]} strs
     * @return {string[][]}
     */
    groupAnagrams(strs: string[]): string[][] {
       const map: Record<string, string[]> = Object.create(null)

        for (let i = 0; i < strs.length; i++) {
            const word = strs[i]
            
            const skey = word.split('').sort().join('')

            if (!map[skey]) {
                map[skey] = []
            }
            map[skey].push(word)
        }

        return Object.values(map)
    }
}
