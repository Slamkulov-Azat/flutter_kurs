import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final bool centerTitle;
  //final bool automaticallyImplyLeading;
  //final Widget leading;
  final List<Widget> actions;
  final Color textColor;
  final Color backgroundColor;

  CustomAppBar(
    this.title, {
    Key key,
    this.centerTitle = true,
    //this.automaticallyImplyLeading = false,
    //this.leading,
    this.actions, 
    this.textColor, 
    this.backgroundColor ,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      //leading: leading,
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      actions: actions,
      //automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      centerTitle: centerTitle,
    );
  }
}