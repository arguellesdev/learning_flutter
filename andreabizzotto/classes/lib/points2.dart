class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  bool operator == (covariant Point other){
    return x == other.x && y == other.y;
  }
    Point operator + (Point other){
    return Point(x + other.x , y + other.y);
    }
  Point operator * (int other){
    return Point(x * other , y * other);
  }
}

void main(){
  print(Point(1, 1) == Point(1, 1));
  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1) * 5);
}


