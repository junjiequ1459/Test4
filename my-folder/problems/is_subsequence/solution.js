/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isSubsequence = function(s, t) {
    let result = 0

    for(let i = 0;i<t.length;i++){
        if(s[result] === t[i]){
            result++
        }
    }

    return result === s.length

};