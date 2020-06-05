import 'package:flutter/material.dart';

class CircularImageView extends StatelessWidget {
  double circular;
  String url;
  CircularImageView({Key key, this.circular = 10, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(this.circular),
          child: Image.network(
            this.url,
            fit: BoxFit.cover,
          ),
        ));
  }
}
