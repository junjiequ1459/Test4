/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} list1
 * @param {ListNode} list2
 * @return {ListNode}
 */

function mergeTwoLists(l1, l2) {
    let dummyHead = new ListNode(0)
    let ResultNode = dummyHead

    while(l1 && l2){
        if(l1.val < l2.val){
            ResultNode.next = l1
            l1 = l1.next
        }
        else{
            ResultNode.next = l2
            l2 = l2.next
        }
        ResultNode = ResultNode.next 
    }

    if(l1){
        ResultNode.next = l1
    }else{
        ResultNode.next = l2
    }

    return dummyHead.next

}