
int side=10;

int[][] matrix = new int[50][50];


void setup(){
  size(500,500);
  for(int y = 0;y<matrix.length;y++){
    for(int x = 0;x<matrix[y].length;x++){
      matrix[y][x]=0;
    }
  }
}

void draw(){
  for(int y=0;y<matrix.length;y++){
    for(int x=0;x<matrix[y].length;x++){
      if(matrix[y][x]==0){
        fill(255);
        rect(x*side,y*side,side,side);
      }else if(matrix[y][x]==1){
        fill(255,0,0);
        rect(x*side,y*side,side,side);
      }
    }
  }
}

void mouseDragged(){
  float drgX=mouseX;
  float drgY=mouseY;
  drgX=floor(drgX/side);
  drgY=floor(drgY/side);
  matrix[(int)drgY][(int)drgX]=1;
}
