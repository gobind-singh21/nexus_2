import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus_2/ui/college/bloc/home_bloc.dart';
import 'package:nexus_2/ui/college/widgets/home_drawer_header_widget.dart';

import 'drawer_item_widget.dart';

class HomeDrawerWidget extends StatelessWidget {
  final HomeBloc homeBloc;
  const HomeDrawerWidget({super.key, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeCollegePageLoadingState:
          case HomeCollegePageLoadedState:
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: [
                  // const HomeDrawerHeader(),
                  // const Divider(
                  //   thickness: 1.0,
                  //   color: Colors.grey,
                  // ),
                  InkWell(
                    onTap: () {
                      // homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.home_outlined,
                      label: "Home",
                      backgroundColor: Colors.blue,
                      labelColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  InkWell(
                    onTap: () {
                      homeBloc.add(HomeDrawerSettingsClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.settings_outlined,
                      label: "Settings",
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  InkWell(
                    onTap: () {
                      homeBloc.add(HomeDrawerProfileClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.person_outline_outlined,
                      label: "Profile",
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                ],
              ),
            );

          case HomeSettingsPageLoadingState:
          case HomeSettingsPageLoadedState:
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: [
                  const HomeDrawerHeader(),
                  const Divider(
                    thickness: 1.0,
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: () {
                      homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.home_outlined,
                      label: "Home",
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  InkWell(
                    onTap: () {
                      // homeBloc.add(HomeDrawerSettingsClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.settings_outlined,
                      label: "Settings",
                      backgroundColor: Colors.blue,
                      labelColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  InkWell(
                    onTap: () {
                      homeBloc.add(HomeDrawerProfileClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.person_outline_outlined,
                      label: "Profile",
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                ],
              ),
            );

          case HomeProfilePageLoadingState:
          case HomeProfilePageLoadedState:
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 4,
              child: Column(
                children: [
                  const HomeDrawerHeader(),
                  const Divider(
                    thickness: 1.0,
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: () {
                      homeBloc.add(HomeDrawerHomeClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.home_outlined,
                      label: "Home",
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  InkWell(
                    onTap: () {
                      homeBloc.add(HomeDrawerSettingsClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.settings_outlined,
                      label: "Settings",
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      labelColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  InkWell(
                    onTap: () {
                      // homeBloc.add(HomeDrawerProfileClickedEvent());
                    },
                    child: const DrawerItemWidget(
                      iconData: Icons.person_outline_outlined,
                      label: "Profile",
                      backgroundColor: Colors.blue,
                      labelColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                ],
              ),
            );

          default:
            return Container();
        }
      },
    );
  }
}
