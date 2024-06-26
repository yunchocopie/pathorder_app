import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/my/Review/widgets/review_body.dart';
import 'package:pathorder_app/ui/widgets/custom_back_app_bar.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(title: '내 리뷰'),
      backgroundColor: Colors.white,
      body: ReviewBody(),
    );
  }
}
