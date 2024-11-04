

class Restaurant{
  final String _name;
  final String _descripcion;
  final List<dynamic> _images;
  final int _count;
  final double _rating;
  final double _latitude;
  final double _longitude;

  Restaurant(this._name, this._descripcion, this._images, this._count, this._rating, this._latitude, this._longitude);
  String get name => _name;
  String get description => _descripcion;
  List<dynamic> get images => _images;
  int get count => _count;
  double get rating => _rating / _count;
  double get latitude => _latitude;
  double get longitude => _longitude;


}