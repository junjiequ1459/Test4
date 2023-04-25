/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isIsomorphic = function(s, t) {

    let obj1 = {}
    let obj2 = {}

    for(let i in s){
        if(obj1[s[i]] && obj1[s[i]]!== t[i] || obj2[t[i]] && obj2[t[i]] !== s[i] ){
            return false
        }else{
            obj1[s[i]] = t[i]
            obj2[t[i]] = s[i]
        }
    }

    return true
    
};