import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color bgcolor, borderColor;
  final double width, height, size;
  final int index;

  const IconContainer(
      {Key? key,
      required this.height,
      required this.bgcolor,
      this.borderColor = Colors.transparent,
      required this.width,
      required this.size,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<IconData> _icons = [
      Icons.event_note,
      Icons.add_location,
      Icons.medical_services,
      Icons.cast_for_education_outlined,
      Icons.construction,
      Icons.flight,
    ];

    return Container(
      width: this.width,
      height: this.height,
      child: Icon(
        _icons[index], size: this.size, color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: this.bgcolor,
        shape: BoxShape.circle,
        border: this.borderColor == Colors.transparent ?
            Border.all(width: 5, color: Colors.transparent) :
        Border.all(width: 5, color: this.borderColor),

      ),
    );
  }
}
