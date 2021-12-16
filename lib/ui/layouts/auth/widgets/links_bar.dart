import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LinkText> _linkTextList = [
            LinkText(
              'About',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Help Center',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Term of Service',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Privacy Policy',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Cookie Policy',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Ads Info',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Blog',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Status',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Careers',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Brand Resources',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Advertisign',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
            LinkText(
              'Marketing',
              color: Colors.grey.shade700,
              decoration: TextDecoration.underline,
            ),
          ];
    return Container(
        color: Colors.black,
        child: Wrap(
          children: _linkTextList,
        ));
  }
}
