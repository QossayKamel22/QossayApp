import 'package:flutter/material.dart';

class ProductDetailsDialog extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  ProductDetailsDialog({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title,style: TextStyle( fontWeight: FontWeight.bold,),),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageUrl.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Icon(
                            Icons.image,
                            color: Colors.orange,
                            size: 120,
                          ),
                        );
                      },
                    ),
                  )
                : Container(
                    height: 150.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
            SizedBox(height: 16.0),

            Text(
              'Neque porro quisquam est qui dolorem ipsum quia',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '\$$price',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close',style: TextStyle(color: Colors.red),),
        ),
      ],
    );
  }
}
