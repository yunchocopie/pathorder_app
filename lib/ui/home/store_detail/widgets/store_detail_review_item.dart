import 'package:flutter/material.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/ui/home/store_detail/data/store_detail_review_data.dart';

class StoreDetailReviewItem extends StatelessWidget {
  StoreDetailReviewData reviewList;

  StoreDetailReviewItem({required this.reviewList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.network(
                  "${baseUrl + reviewList.usersImgFilePath}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${reviewList.nickname}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '${reviewList.createdAt}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          '${reviewList.content}',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 15),
        reviewList.reviewsImgFilePath != null
            ? SizedBox(
                height: 300,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    "${baseUrl + reviewList.reviewsImgFilePath}",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : SizedBox(height: 0),
        SizedBox(height: 20),
      ],
    );
  }
}
