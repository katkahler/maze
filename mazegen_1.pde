int cellSize; //the width/length of the cell
int gridLength = 5; //squares per column
int gridWidth = 5; //squares per row
Cell[][] grid = new Cell[gridLength][gridWidth]; //interdimensional array of cells

void setup() {
  size(500, 500);
  cellSize = min(width/gridWidth, height/gridLength); //sets cell size based on screen size and grid size

  //creating the grid
  for (int x = 0; x < gridWidth; x++) { //makes gridWidth columns
    pushMatrix();
    for (int y = 0; y < gridLength; y++) { //makes one column of gridLength squares
      grid[x][y] = new Cell(); //makes room for the cell
      grid[x][y].singleCell(); //draws the single square
      translate(0, cellSize);
    }
    popMatrix();
    translate(cellSize, 0);
  }
  //grid[0][0] = new Cell();
  //grid[0][0].singleCell();
}
