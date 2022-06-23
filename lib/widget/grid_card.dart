import 'package:flutter/material.dart';
import 'package:clone_state_management/Screen/detail_product.dart';

class GridCard extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  GridCard(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border_rounded),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            DetailProductScreen.routeName,
            arguments: id,
          );
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
