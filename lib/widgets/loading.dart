import 'package:flutter/material.dart';

class IsLoading extends StatefulWidget {
  final bool isLoding;

  const IsLoading({Key key, this.isLoding}) : super(key: key);
  _IsLoadingState createState() => _IsLoadingState();
}

class _IsLoadingState extends State<IsLoading> {
  @override
  Widget build(BuildContext context) {
    return (() {
      if (widget.isLoding == true) {
        return Stack(
          children: [
            Opacity(
              opacity: 0.6,
              child: ModalBarrier(
                dismissible: true,
                color: Colors.grey,
              ),
            ),
            Center(
              child: CircularProgressIndicator(),
            ),
          ],
        );
      } else {
        return Container();
      }
    })();
  }
}
