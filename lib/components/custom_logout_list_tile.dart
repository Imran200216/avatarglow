import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLogoutListTile extends StatelessWidget {
  final String profileTitleText;
  final VoidCallback onTap;
  final String profileLeadingIconName;

  const CustomLogoutListTile({
    super.key,
    required this.profileTitleText,
    required this.onTap,
    required this.profileLeadingIconName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 3.0, horizontal: 16.0),
      // Adjust vertical padding here
      leading: SvgPicture.asset(
        "assets/images/svg/$profileLeadingIconName.svg",
        height: 28,
        width: 28,
        fit: BoxFit.cover,
        color: Colors.red,
      ),
      title: Text(profileTitleText),
      titleTextStyle: GoogleFonts.montserrat(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: Colors.red,
      ),
      trailing: const Icon(
        size: 26,
        Icons.arrow_forward_rounded,
        color: Colors.red,
      ),
    );
  }
}
