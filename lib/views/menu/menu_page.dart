import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/category_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/tGChxbZ.png',
            label: 'Vegetables',
            backgroundColor: AppColors.primary,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/yOFxoIP.png',
            label: 'Meat And Fish',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/GPsRaFC.png',
            label: 'Medicine',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/mGRqfnc.png',
            label: 'Baby Care',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/fwyz4oC.png',
            label: 'Office Supplies',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/DNr8a6R.png',
            label: 'Beauty',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/O2ZX5nR.png',
            label: 'Gym Equipment',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/wJBopjL.png',
            label: 'Gardening Tools',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/P4yJA9t.png',
            label: 'Pet Care',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/sxGf76e.png',
            label: 'Eye Wears',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/BPvKeXl.png',
            label: 'Pack',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'http://zhanggp.top/grocery/images/m65fusg.png',
            label: 'Others',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
        ],
      ),
    );
  }
}
