import 'package:avatar_glow/avatar_glow.dart';
import 'package:avatarglow/components/custom_divider.dart';
import 'package:avatarglow/components/custom_logout_list_tile.dart';
import 'package:avatarglow/components/custom_profile_list_tile.dart';
import 'package:avatarglow/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top section with background color and profile
          Container(
            color: AppColors.primaryColor,
            height: MediaQuery.of(context).size.height * 0.43,
          ),

          // Profile Image and Name
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Stack(
                    children: [
                      // Profile image
                      AvatarGlow(
                        startDelay: const Duration(microseconds: 1000),
                        repeat: true,
                        glowRadiusFactor: 0.12,
                        child: Material(
                          elevation: 0.1,
                          shape: const CircleBorder(),
                          color: AppColors.avatarGlowColor,
                          child: Container(
                            height: 140,
                            width: 140,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.secondaryColor,
                            ),
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://images.unsplash.com/photo-1529946179074-87642f6204d7?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                                placeholder: (context, url) {
                                  return Container(
                                    height: 130,
                                    width: 130,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/jpg/profile-placeholder.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                  color: AppColors.primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Edit icon
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 46,
                            width: 46,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.listTileBgColor,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/images/svg/edit-icon.svg",
                                height: 28,
                                width: 28,
                                fit: BoxFit.cover,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Profile name text
                  const Text(
                    "Mary Gwen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: AppColors.listTileBgColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Centered white container
          Positioned(
            top: MediaQuery.of(context).size.height * 0.34,
            left: 20,
            right: 20,
            child: Container(
              height: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.listTileBgColor,
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /// edit profile list tile
                    CustomProfileListTile(
                      profileTitleText: "Edit Profile Name",
                      onTap: () {},
                      profileLeadingIconName: "edit-icon",
                    ),
                    const CustomDivider(),

                    /// list project list tile
                    CustomProfileListTile(
                      profileTitleText: "List Project",
                      onTap: () {},
                      profileLeadingIconName: "list-icon",
                    ),
                    const CustomDivider(),

                    /// change password list tile
                    CustomProfileListTile(
                      profileTitleText: "Change Password",
                      onTap: () {},
                      profileLeadingIconName: "password-icon",
                    ),
                    const CustomDivider(),

                    /// change email list tile
                    CustomProfileListTile(
                      profileTitleText: "Change Email Address",
                      onTap: () {},
                      profileLeadingIconName: "email-icon",
                    ),
                    const CustomDivider(),

                    /// settings list tile
                    CustomProfileListTile(
                      profileTitleText: "Settings",
                      onTap: () {},
                      profileLeadingIconName: "setting-icon",
                    ),
                    const CustomDivider(),

                    /// preferences list tile
                    CustomProfileListTile(
                      profileTitleText: "Preferences",
                      onTap: () {},
                      profileLeadingIconName: "preferences-icon",
                    ),
                    const CustomDivider(),

                    /// logout list tile
                    CustomLogoutListTile(
                      profileTitleText: "Log Out",
                      onTap: () {},
                      profileLeadingIconName: "logout-icon",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
