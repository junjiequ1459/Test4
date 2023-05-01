function isValidSudoku(board) {
  for (let i = 0; i < 9; i++) {
    const row = [];
    const column = [];
    const subBox = [];

    for (let j = 0; j < 9; j++) {
      // check row
      if (board[i][j] !== "." && row.includes(board[i][j])) {
        return false;
      }
      row.push(board[i][j]);

      // check column
      if (board[j][i] !== "." && column.includes(board[j][i])) {
        return false;
      }
      column.push(board[j][i]);

      // check sub-box
      const rowIndex = 3 * Math.floor(i / 3) + Math.floor(j / 3);
      const colIndex = 3 * (i % 3) + (j % 3);
      if (board[rowIndex][colIndex] !== "." && subBox.includes(board[rowIndex][colIndex])) {
        return false;
      }
      subBox.push(board[rowIndex][colIndex]);
    }
  }
  return true;
}
