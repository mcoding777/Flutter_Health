import 'package:flutter/material.dart';

class HomeDialog extends StatefulWidget {
  final String title = '제목', descriptions = '설명', text = '버튼';

  const HomeDialog({Key? key}) : super(key: key);

  // const HomeDialog({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  HomeDialogState createState() => HomeDialogState();
}

class HomeDialogState extends State<HomeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: 10.0, top: 10.0 + 10.0, right: 10.0, bottom: 10.0),
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text,
                      style: const TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
