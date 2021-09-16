import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'text_widget.dart';

class BuildFloatingSearchBar extends StatefulWidget {
  final String hint;

  const BuildFloatingSearchBar({Key? key, required this.hint})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingSearchBarState();
  }
}

class _FloatingSearchBarState extends State<BuildFloatingSearchBar> {
  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      hint: widget.hint,
      hintStyle: GoogleFonts.getFont("Lato",
        color: Color(0xff707070),
        fontSize: 14,
        fontWeight: FontWeight.w400,),
      borderRadius: BorderRadius.circular(10),
      elevation: 0,
      backgroundColor: Color(0xffF1F1F1),
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      isScrollControlled: true,
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.search_outlined,color: Colors.purple,),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
          color: Colors.purple,
        ),
      ],
      builder: (BuildContext context, Animation<double> transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              children:[

              ],
            ),
          ),
        );
      },
    );
  }
}
