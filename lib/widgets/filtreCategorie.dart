import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';

class FiltreCetegorieFood extends StatefulWidget {
  const FiltreCetegorieFood({super.key});

  @override
  State<FiltreCetegorieFood> createState() => _FiltreCetegorieFoodState();
}

class _FiltreCetegorieFoodState extends State<FiltreCetegorieFood> {
  var _selectedTag = 0;

  void changeTag(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTabViewGategorie(
          index: _selectedTag,
          changeTab: changeTag,
        ),
      ],
    );
  }
}

class CustomTabViewGategorie extends StatefulWidget {
  final Function(int) changeTab;
  final int index;
  const CustomTabViewGategorie(
      {super.key, required this.changeTab, required this.index});

  @override
  State<CustomTabViewGategorie> createState() => _CustomTabViewGategorieState();
}

class _CustomTabViewGategorieState extends State<CustomTabViewGategorie> {
  final List<String> _tags = [
    "Tout",
    "Dejeuner",
    "Dinner",
  ];

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        widget.changeTab(index);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 150,
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Config.colors.flouTextColor,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                  color: widget.index == index
                      ? Config.colors.primaryColor
                      : Config.colors.whithColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _tags[index],
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: widget.index == index
                            ? Config.colors.whithColor
                            : Config.colors.primaryColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Row(
      children: _tags
          .asMap()
          .entries
          .map(
            (MapEntry map) => _buildTags(map.key),
          )
          .toList(),
    );
  }
}
