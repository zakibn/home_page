import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 6, //controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
           // i : index 
          );
        },
      ),
    );
  }
}




 class Categories extends GetView<HomeControllerImp>{

/*  final int? i; */

  const Categories(/* this.i */ {super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
       onTap: () {
              controller.goToItems(
              /*   controller.goToItems(); */
              /* i!  */ );
            },
      child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.thirdColor,
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 70,
                  width: 70,
                  child: SvgPicture.asset('assets/images/1.png',
                      /*  "${AppLink.imagestCategories}/${controller.categories[index]['categories_image']}", */
                      color: AppColor.secondColor),
                ),
                const Text(
                  " Camera "
      
                  /*   "${
                                      controller.categories[index]['categories_name']}  " */
      
                  ,
                  style: const TextStyle(fontSize: 13, color: AppColor.black),
                )
              ],
            ),
    );
  }
} 