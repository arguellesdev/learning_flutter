import 'package:equatable/equatable.dart';

class Point extends Equatable {
  Point(this.x, this.y);

  final int x;
  final int y;

  @override
  List<Object> get props => [x, y];

  @override
  bool get stringify => true;

    Point operator + (Point other) {
      return Point(x + other.x , y + other.y);
    }

    Point operator * (int other) {
      return Point(x * other, y * other);
    }
}

void main(){
  print(Point(0, 0) == Point(0, 0));
  print(Point(0, 12) == Point(1, 1));
  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1) * 5);
}


