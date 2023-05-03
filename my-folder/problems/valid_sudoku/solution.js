function isValidSudoku(board) {

    for(let i = 0;i<board.length;i++){
        let row = []
        let column = []

        for(j=0;j<board.length;j++){
            if (board[i][j] !== "." && row.includes(board[i][j])){
                return false
            }
            if (board[j][i] !== "." && column.includes(board[j][i])){
                return false
            }
            row.push(board[i][j])
            column.push(board[j][i])


        }
    }
    for (let i = 0; i < 9; i += 3) {
    for (let j = 0; j < 9; j += 3) {
      let subBoxSet = new Set();
      for (let row = i; row < i + 3; row++) {
        for (let col = j; col < j + 3; col++) {
          if (board[row][col] !== '.') {
            if (subBoxSet.has(board[row][col])) {
              return false;
            } else {
              subBoxSet.add(board[row][col]);
            }
          }
        }
      }
    }
  }
  return true

}
