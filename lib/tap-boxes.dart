import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
    @override
    _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {

    bool _isActive = true;

    String _getTitle() => _isActive ? "Active" : "Inactive";

    Color _getColor() => _isActive ? Colors.red[800] : Colors.yellow[200];

    _onTapped() => setState(() {
        _isActive = !_isActive;
    });

    @override
    Widget build(BuildContext context) => GestureDetector(
        onTap: _onTapped,
        child: Container(
            child: Center(child: Text(_getTitle(), style: TextStyle(
                fontSize: 40.0, color: Colors.cyan[300]
            ),),),
            decoration: BoxDecoration(color: _getColor())
        ),
    );
}

class TapBoxBParent extends StatefulWidget {
    @override
    _TapBoxBState createState() => _TapBoxBState();
}

class _TapBoxBState extends State<TapBoxBParent> {

    bool _isActive = true;

    _onTapped(bool newValue) => setState(() {
        _isActive = newValue;
    });

    @override
    Widget build(BuildContext context) => Container(
        child: _TapBoxB(
            isActive: _isActive,
            onTapped: _onTapped,
        ),
    );
}

class _TapBoxB extends StatelessWidget {

    _TapBoxB( {Key key, this.isActive: false, @required this.onTapped} ) : super(key: key);

    final bool isActive;
    
    final ValueChanged<bool> onTapped;

    String _getTitle() => isActive ? "Active" : "Inactive";

    Color _getColor() => isActive ? Colors.red[800] : Colors.yellow[200];

    _onTapped() => onTapped(!isActive);

   @override
    Widget build(BuildContext context) => GestureDetector(
        onTap: _onTapped,
        child: Container(
            child: Center(child: Text(_getTitle(), style: TextStyle(
                fontSize: 40.0, color: Colors.cyan[300]
            ),),),
            decoration: BoxDecoration(color: _getColor())
        ),
    );
}