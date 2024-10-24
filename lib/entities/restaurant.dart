

class Restaurant{
  final String _name;
  final String _description;
  final List<String> _images;
  final int _count;
  final double _rating;

  Restaurant(this._name, this._description, this._images, this._count, this._rating);
  String get name => _name;
  String get description => _description;
  List<String> get images => _images;
  int get count => _count;
  double get rating => _rating;
}