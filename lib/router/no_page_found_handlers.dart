import 'package:fluro/fluro.dart';

import 'package:admin_dashboard/ui/views/no_page_page_found_view.dart';


class NoPageFoundHandler{

  static Handler noPageFound = Handler(
    handlerFunc: (context, params){
      return const NoPageFoundView();
    }
  );

}