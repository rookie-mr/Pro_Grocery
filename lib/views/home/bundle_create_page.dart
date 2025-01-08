import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/constants.dart';
import 'components/bundle_create_bottom_action_bar.dart';
import 'components/bundle_create_food_categories.dart';
import 'components/product_grid_view.dart';

class BundleCreatePage extends StatelessWidget {
  const BundleCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Create My Pack'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: SearchBar(
              hintText: 'Search',
              trailing: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.search),
                )
              ],
            ),
          ),
          const FoodCategories(),
          const SizedBox(height: AppDefaults.padding / 2),
          const ProductGridView(),
          const BottomActionBar(),
        ],
      ),
    );
  }
}
