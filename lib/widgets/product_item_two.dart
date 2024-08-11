import 'package:flutter/material.dart';
import 'package:qossay_s_application1/widgets/product_detelis_dialog.dart';


class ProductItemWithButtons extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  ProductItemWithButtons({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  void _showProductDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ProductDetailsDialog(
          imageUrl: imageUrl,
          title: title,
          price: price,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showProductDetailsDialog(context),
      child: Container(
        width: 180.0,
        color: Colors.white,
        child: Card(
          elevation: 4.0,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageUrl.isNotEmpty
                  ? ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                child: SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Icon(Icons.image, color: Colors.orange, size: 120),
                      );
                    },
                  ),
                ),
              )
                  : Container(
                height: 150.0,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Neque porro quisquam est qui dolorem ipsum quia',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          color: Colors.black,
                          onPressed: () {},
                          iconSize: 20.0,
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark),
                          color: Colors.black,
                          onPressed: () {},
                          iconSize: 20.0,
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.add_shopping_cart),
                      color: Colors.black,
                      onPressed: () {},
                      iconSize: 20.0,
                      padding: EdgeInsets.all(0),
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
