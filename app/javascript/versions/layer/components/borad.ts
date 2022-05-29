export class Board {
  public rows: Row[]
  constructor() {
    this.rows = [...Array(9).keys()].map(i => new Row(i))
  }
}
export class Row {
  public cells: Cell[]
  public rowIndex: number
  constructor(rowIndex: number) {
    this.rowIndex = rowIndex
    this.cells = [...Array(16).keys()].map(i => new Cell(i, rowIndex))
  }
}
export class Cell {
  public x: number
  public y: number
  constructor(cellIndex: number, rowIndex: number) {
    this.x = cellIndex
    this.y = rowIndex
  }
}