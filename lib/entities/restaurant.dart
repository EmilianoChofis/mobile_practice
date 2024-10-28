

class Restaurant{
  final String _name;
  final String _descripcion;
  final List<dynamic> _images;
  final int _count;
  final double _rating;

  Restaurant(this._name, this._descripcion, this._images, this._count, this._rating);
  String get name => _name;
  String get description => _descripcion;
  List<dynamic> get images => _images;
  int get count => _count;
  double get rating => _rating / _count;


}