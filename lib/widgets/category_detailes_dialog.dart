import 'package:flutter/material.dart';

class CategoryDetailsDialog extends StatelessWidget {
  final String imageUrl;
  final String title;


  CategoryDetailsDialog({
    required this.imageUrl,
    required this.title,

  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
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


          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close', style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
