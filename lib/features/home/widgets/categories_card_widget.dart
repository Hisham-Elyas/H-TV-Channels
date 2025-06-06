import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../data/models/category_model.dart';

class CategoriesCardWidget extends StatelessWidget {
  const CategoriesCardWidget(
      {super.key, required this.category, required this.onTap});
  final void Function() onTap;
  final CategoryWithChannels category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.r),
      onTap: onTap,
      child: Card(
        shadowColor: ColorsManager.lightSecondary,
        margin: EdgeInsets.all(10.r),
        elevation: 6,
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Skeleton.shade(child: Icon(Icons.live_tv_outlined, size: 60.dm)),
              verticalSpace(8),
              FittedBox(
                child: Text(
                  category.categoryName,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
