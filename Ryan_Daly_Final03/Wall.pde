public class Wall
{
  public int minX, minY, widthX, widthY;
  
  public Wall(int x1, int y1, int x2, int y2)
  {
    minX = x1;
    minY = y1;
    widthX = x2;
    widthY = y2;
  }
  
  public void render()
  {
    rect(minX, minY, widthX, widthY);
  }
}
