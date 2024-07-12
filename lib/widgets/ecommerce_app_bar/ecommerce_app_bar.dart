import 'package:ecommerce_assignment/utils/app_export.dart';

class EcommerceAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool? centerTitle;
  final bool? automaticallyImplyLeading;
  final Widget? leading;

  const EcommerceAppBar(
      {super.key,
      required this.title,
      this.centerTitle,
      this.automaticallyImplyLeading,
      this.leading});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whitecolor,
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.blackcolor.withOpacity(0.2),
      elevation: 3.0,
      leading: leading,
      title: title,
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading ?? false,
    );
  }
}
