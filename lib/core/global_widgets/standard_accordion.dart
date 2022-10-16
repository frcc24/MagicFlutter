import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StandardAccordion extends StatefulWidget {
  final Widget title;
  final List<Widget> content;

  const StandardAccordion({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  State<StandardAccordion> createState() => _StandardAccordionState();
}

class _StandardAccordionState extends State<StandardAccordion> {
  bool isAccordionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 0.5),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 2,
              spreadRadius: 0,
              color: Colors.black12,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            child: ExpansionTile(
              maintainState: true,
              title: Container(
                width: Get.size.width - 130,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: widget.title,
              ),
              trailing: AnimatedRotation(
                turns: isAccordionExpanded ? .5 : 0,
                duration: const Duration(milliseconds: 200),
                child: Transform.scale(
                  scale: 1.5,
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black87,
                  ),
                ),
              ),
              tilePadding: const EdgeInsets.symmetric(horizontal: 16),
              childrenPadding:
                  const EdgeInsets.only(bottom: 16, left: 16, right: 24),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  isAccordionExpanded = isExpanded;
                });
              },
              children: widget.content,
            ),
          ),
        ),
      ),
    );
  }
}
