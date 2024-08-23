import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/dialogs/product_details_dialog.dart';


class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  ProductItem({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageUrl.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 120.0,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: Center(
                          child: Icon(
                            Icons.image,
                            color: Colors.orange,
                            size: 120,
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(
                  height: 120.0,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(
                      Icons.image,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '\$$price',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
