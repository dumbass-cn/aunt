import 'package:flutter/material.dart';

class Favor extends StatefulWidget {
	@override
	_FavorState createState() {
		return _FavorState();
	}
}

class _FavorState extends State<Favor> {
	bool _isFavorited = true;
	int _favoriteCount = 41;

	void _toggleFavorite() {
		
		setState(() {
			if (_isFavorited) {
				_isFavorited = false;
				_favoriteCount -= 1;
				return;
			}
			_isFavorited = true;
			_favoriteCount += 1;
		});
	}

	@override
	Widget build(BuildContext context) => Row(
		mainAxisSize: MainAxisSize.min,
		children: <Widget>[
			Container(
				padding: EdgeInsets.all(0),
				child: IconButton(
					icon: Icon(_isFavorited ? Icons.star : Icons.star_border),
					color: Colors.red[500],
					onPressed: _toggleFavorite
				),
			),
			SizedBox(
				width: 18,
				child: Container(child: Text("$_favoriteCount"),),)
		],
	);
}