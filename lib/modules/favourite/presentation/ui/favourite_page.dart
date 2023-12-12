import 'package:flutter/material.dart';
import 'package:milli/modules/favourite/presentation/ui/widgets/favourite_item.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('object');
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Избранные',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(child: FavouriteProductItem())
        ],
      ),
    );
  }
}
