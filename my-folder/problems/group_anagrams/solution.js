/**
 * @param {string[]} strs
 * @return {string[][]}
 */
var groupAnagrams = function(strs) {
    let groupObj = {}

    for (let word of strs){
        sorted_word = word.split('').sort().join('')
        if (groupObj[sorted_word]){
            groupObj[sorted_word].push(word)
        }
        else{
            groupObj[sorted_word] = [word]
        }
    }

    return Object.values(groupObj)

    
};