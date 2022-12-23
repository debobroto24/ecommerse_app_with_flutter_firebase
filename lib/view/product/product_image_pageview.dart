import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shoesmela/util/colors.dart';
import 'package:shoesmela/util/dimension.dart';

class ProductImagePageView extends StatefulWidget {
  const ProductImagePageView({super.key});

  @override
  State<ProductImagePageView> createState() => _ProductImagePageViewState();
}

class _ProductImagePageViewState extends State<ProductImagePageView> {
  double _currentPageValue = 0.0;
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      _currentPageValue = pageController.page!;
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: Dimension.pageViewImageHeight,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildPageViewItem(context, index);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            color: Colors.black87, // Inactive color
            activeColor: AppClours.buttonBackground2,
          ),
        )
      ],
    );
  }

  Widget _buildPageViewItem(context, index) {
    return Container(
      width: Dimension.pageViewImageWidth,
      height: Dimension.pageViewImageHeight,
      padding:
          EdgeInsets.only(left: Dimension.width30, right: Dimension.width30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimension.radius20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimension.radius10),
        child: Image.asset('images/product1.png', fit: BoxFit.cover),
      ),
    );
  }
}
