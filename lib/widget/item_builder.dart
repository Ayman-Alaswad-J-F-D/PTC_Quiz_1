import 'package:flutter/material.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    Key? key,
    required this.label,
    required this.onTap,
    this.widget = const SizedBox(),
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    const _style = TextStyle(color: Colors.orange, fontSize: 16);
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(6.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(label, style: _style),
              ),
              Flexible(
                child: widget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
