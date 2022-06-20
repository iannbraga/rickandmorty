import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String texto;

  CustomText({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        fontFamily: 'Joan',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
