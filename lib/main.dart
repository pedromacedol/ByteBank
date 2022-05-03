import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(
      Column(
        children: <Widget>[
          Text(
            'Deliver features faster',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Craft beautiful UIs',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Craft beautiful UIs',
            textDirection: TextDirection.ltr,
          ),
          Column(
            children: <Widget>[
              Text(
                'Craft beautiful UIs',
                textDirection: TextDirection.ltr,
              ),
            ],
          )
        ],
      ),
    );
