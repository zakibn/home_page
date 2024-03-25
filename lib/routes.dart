import 'package:get/get.dart';

import 'core/constant/routes.dart';
import 'view/screen/homescreen.dart';
import 'view/widget/items/items.dart';

List<GetPage<dynamic>>? routes = [

  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()), 
  GetPage(name: AppRoute.items, page: () => const Items()), 

];
