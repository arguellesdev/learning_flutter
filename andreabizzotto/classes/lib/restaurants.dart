class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get numRatings => ratings.length; /* this is not used in a large values
  because it is expensive to get all the data*/

  double avRating() {
    if (ratings.isEmpty) {
      return 0;
    } else {
      return ratings.reduce((value, element) => value + element) /
          ratings.length;
    }
  }
}
void main() {
}