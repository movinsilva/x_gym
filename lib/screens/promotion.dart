import 'package:flutter/material.dart';
import 'package:x_gym/widgets/global/default_background.dart';
import 'package:x_gym/widgets/screens/promotions/promotion_list_tile.dart';

class PromotionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var promotions = [Promotion("20% OFF for Credit Cards", "till 30th september", "https://cdn.dribbble.com/users/3428605/screenshots/9960271/gym_banner_fitness_banner_1x.jpg"), Promotion("ZUMBA Fitness", " first trail day free", "https://cdn.dribbble.com/users/3428605/screenshots/9960271/gym_banner_fitness_banner_1x.jpg"), Promotion("25% OFF for all memberships", "till 10 th January",
        "https://cdn.dribbble.com/users/3428605/screenshots/9960271/gym_banner_fitness_banner_1x.jpg")];

    return DefaultScaffold(
      title: "Promotions",
      interior: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => PromotionListTile(
              title: promotions[index].title,
              expiery: promotions[index].expiery,
              imageUrl: promotions[index].imageUrl,
            ),
            itemCount: promotions.length,
          ),
        ),
      ),
    );
  }
}

class Promotion {
  final title;
  final expiery;
  final imageUrl;

  Promotion(this.title, this.expiery, this.imageUrl);
}
