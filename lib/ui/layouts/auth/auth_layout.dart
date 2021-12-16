import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_background.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        //Desktop
        _DesktopBody(
          child: child,
        )
        //Mobile
        //LinksBar
      ],
    ));
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;
  const _DesktopBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Row(
        children: [
          //TweeterBackground
          const CustomBackground(),

          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomTitle(),
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: child)
              ],
            ),
          )
        ],
      ),
    );
  }
}
