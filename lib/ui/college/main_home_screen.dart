import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus_2/ui/college/pages/college_page.dart';
import 'package:nexus_2/ui/college/pages/profile_page.dart';
import 'package:nexus_2/ui/college/pages/settings_page.dart';
// import 'package:nexus_2/ui/college/pages/profile_page.dart';
// import 'package:nexus_2/ui/college/pages/settings_page.dart';
import 'package:nexus_2/ui/college/widgets/drawer_item_widget.dart';
// import 'package:nexus_2/ui/college/widgets/home_drawer_widget.dart';
import 'bloc/home_bloc.dart';

class HomeScreen2 extends StatelessWidget {
  HomeScreen2({super.key});
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    homeBloc.add(HomeInitialEvent());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          children: [
            BlocConsumer<HomeBloc, HomeState>(
              bloc: homeBloc,
              listener: (context, state) {},
              builder: (context, state) {
                if (state.runtimeType == HomeCollegePageLoadingState ||
                    state.runtimeType == HomeCollegePageLoadedState) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      // homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.home_outlined,
                      label: 'Home',
                      backgroundColor: Colors.white,
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  );
                } else {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: DrawerItemWidget(
                      iconData: Icons.home_outlined,
                      label: 'Home',
                      backgroundColor: Colors.grey.shade800,
                      labelColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  );
                }
              },
            ),
            BlocConsumer<HomeBloc, HomeState>(
              bloc: homeBloc,
              listener: (context, state) {},
              builder: (context, state) {
                if (state.runtimeType == HomeSettingsPageLoadingState ||
                    state.runtimeType == HomeSettingsPageLoadedState) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      // homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.settings_outlined,
                      label: 'Settings',
                      backgroundColor: Colors.white,
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  );
                } else {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      homeBloc.add(HomeDrawerSettingsClickedEvent());
                    },
                    child: DrawerItemWidget(
                      iconData: Icons.settings_outlined,
                      label: 'Settings',
                      backgroundColor: Colors.grey.shade800,
                      labelColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  );
                }
              },
            ),
            BlocConsumer<HomeBloc, HomeState>(
              bloc: homeBloc,
              listener: (context, state) {},
              builder: (context, state) {
                if (state.runtimeType == HomeProfilePageLoadingState ||
                    state.runtimeType == HomeProfilePageLoadedState) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      // homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.person_outline_rounded,
                      label: 'Profile',
                      backgroundColor: Colors.white,
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  );
                } else {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      homeBloc.add(HomeDrawerProfileClickedEvent());
                    },
                    child: DrawerItemWidget(
                      iconData: Icons.person_outline_rounded,
                      label: 'Person',
                      backgroundColor: Colors.grey.shade800,
                      labelColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background/background_image.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: BlocConsumer<HomeBloc, HomeState>(
              bloc: homeBloc,
              listener: (context, state) {},
              builder: (context, state) {
                switch (state.runtimeType) {
                  case HomeLoadingState:
                  case HomeCollegePageLoadingState:
                  case HomeSettingsPageLoadingState:
                  case HomeProfilePageLoadingState:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );

                  case HomeCollegePageLoadedState:
                    return CollegePage();

                  case HomeSettingsPageLoadedState:
                    return const SettingsPage();

                  case HomeProfilePageLoadedState:
                    return const ProfilePage();

                  default:
                    return const SizedBox();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
