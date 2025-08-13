import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool showBackButton;
  final VoidCallback? onBack;
  final bool centerTitle;
  final Color? foregroundColor;

  const AppBarCustom({
    super.key,
    required this.title,
    required this.backgroundColor,
    this.showBackButton = true,
    this.onBack,
    this.centerTitle = true,
    this.foregroundColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor ?? Colors.white,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: onBack ?? () => Navigator.of(context).pop(),
            )
          : null,
    );
  }
}
