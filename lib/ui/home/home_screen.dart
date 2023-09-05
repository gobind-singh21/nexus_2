import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus_2/ui/auth/login.dart';
import 'package:nexus_2/ui/home/bloc/auth_bloc.dart';
import 'package:nexus_2/ui/home/bloc/home_bloc.dart';
// import 'package:nexus_2/ui/home/widgets/app_bar/app_bar_actions.dart';
import 'package:nexus_2/ui/home/widgets/app_bar/app_bar_actions_outlined.dart';
import 'package:nexus_2/ui/home/widgets/app_bar/bloc/app_bar_bloc.dart';
// import 'package:nexus_2/ui/home/widgets/button/button_filled.dart';
// import 'package:nexus_2/ui/home/widgets/button/button_outlined.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeBloc homeBloc = HomeBloc();
  final AppBarBloc appBarBloc = AppBarBloc();
  final AuthBloc authBloc = AuthBloc();

  Widget buildLoadingHomeScreen() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildErrorHomeScreen() {
    return const Scaffold(
      body: Center(
        child: Text("Error Occured"),
      ),
    );
  }

  Widget buildLoadedHomeScreen(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.height);
    homeBloc.add(HomeInitialEvent());
    appBarBloc.add(AppBarInitialEvent());
    authBloc.add(HomeAuthButtonInitialEvent());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          // BlocConsumer<AppBarBloc, AppBarState>(
          //   bloc: appBarBloc,
          //   listener: (context, state) {},
          //   builder: (context, state) {
          //     if (state.runtimeType == HomeAppBarHomeOutlinedState) {
          //       return InkWell(
          //         highlightColor: Colors.transparent,
          //         splashColor: Colors.transparent,
          //         onTap: () {},
          //         onHover: (value) {
          //           if (!value) {
          //             // print("Home hover removed");
          //             appBarBloc.add(HomeAppBarHomeHoverRemovedEvent());
          //           }
          //         },
          //         child: const AppBarActionOutlined(label: 'Home'),
          //       );
          //     } else {
          //       return InkWell(
          //         highlightColor: Colors.transparent,
          //         splashColor: Colors.transparent,
          //         onTap: () {},
          //         onHover: (value) {
          //           if (value) {
          //             // print("Home hover");
          //             appBarBloc.add(HomeAppBarHomeHoverEvent());
          //           }
          //         },
          //         child: const AppBarAction(label: 'Home'),
          //       );
          //     }
          //   },
          // ),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            onHover: (value) {
              if (!value) {
                // print("Home hover removed");
                appBarBloc.add(HomeAppBarHomeHoverRemovedEvent());
              }
            },
            child: const AppBarActionOutlined(label: 'Home'),
          ),
          // BlocConsumer<AppBarBloc, AppBarState>(
          //   bloc: appBarBloc,
          //   listener: (context, state) {},
          //   builder: (context, state) {
          //     if (state.runtimeType == HomeAppBarEventOutlinedState) {
          //       return InkWell(
          //         highlightColor: Colors.transparent,
          //         splashColor: Colors.transparent,
          //         onTap: () {},
          //         onHover: (value) {
          //           if (!value) {
          //             appBarBloc.add(HomeAppBarEventHoverRemovedEvent());
          //           }
          //         },
          //         child: const AppBarActionOutlined(label: 'Event'),
          //       );
          //     } else {
          //       return InkWell(
          //         highlightColor: Colors.transparent,
          //         splashColor: Colors.transparent,
          //         onTap: () {},
          //         onHover: (value) {
          //           if (value) {
          //             appBarBloc.add(HomeAppBarEventHoverEvent());
          //           }
          //         },
          //         child: const AppBarAction(label: 'Event'),
          //       );
          //     }
          //   },
          // ),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            onHover: (value) {
              if (!value) {
                appBarBloc.add(HomeAppBarEventHoverRemovedEvent());
              }
            },
            child: const AppBarActionOutlined(label: 'Event'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background/background_image.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to Nexus",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 30,
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                            Text(
                              "Elevating Education Through Innovation.",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 60,
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4.5,
                      right: MediaQuery.of(context).size.width / 50,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 30,
                        horizontal: MediaQuery.of(context).size.width / 30,
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 10,
                      ),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width / 100,
                        ),
                        color: const Color.fromARGB(50, 157, 157, 157),
                        // border: Border.all(
                        //   color: Colors.white,
                        //   width: 1,
                        // ),
                      ),
                      child: const Login(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    homeBloc.add(HomeInitialEvent());
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state.runtimeType == HomeLoadingState) {
          return buildLoadingHomeScreen();
        } else if (state.runtimeType == HomeLoadedState) {
          return buildLoadedHomeScreen(context);
        } else {
          return buildErrorHomeScreen();
        }
      },
    );
  }
}
