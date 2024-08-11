import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ticket_app_flutter/controllers/hotel_details_controller.dart';

import '../core/res/styles/app_styles.dart';

class HotelDetails extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelDetails({super.key, required this.hotel});

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotel["place"]),
              background: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    "assests/images/${hotel["image"]}",
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          hotel["place"],
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    blurRadius: 10.0,
                                    // color: Colors.red,
                                    color: AppStyles.primaryColor,
                                    offset: const Offset(8.0, 2.0))
                              ]),
                        )),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpandedTextWidget(
                  text:
                      "jdhajdgh kdj dfjghakjdfh akdhpf akd nd;kfd jfakjdf ajdf ajkfhdl ajdhfpajdh fpasd fajdhpf jadh gadhf faskdjhfak jdgh;kldgfjfihpdjgha hdspjkhg pjghapsdjhpajdhpfkjap dfj paodhf hkhdahdfiad faidhpf adhahkf[a dfa[sdifh adsfahodf[ asdhfa dfh[aidsf af]]]] jdhajdgh kdj dfjghakjdfh akdhpf akd nd;kfd jfakjdf ajdf ajkfhdl ajdhfpajdh fpasd fajdhpf jadh gadhf faskdjhfak jdgh;kldgfjfihpdjgha hdspjkhg pjghapsdjhpajdhpfkjap dfj paodhf hkhdahdfiad faidhpf adhahkf[a dfa[sdifh adsfahodf[ asdhfa dfh[aidsf af]]]]jdhajdgh kdj dfjghakjdfh akdhpf akd nd;kfd jfakjdf ajdf ajkfhdl ajdhfpajdh fpasd fajdhpf jadh gadhf faskdjhfak jdgh;kldgfjfihpdjgha hdspjkhg pjghapsdjhpajdhpfkjap dfj paodhf hkhdahdfiad faidhpf adhahkf[a dfa[sdifh adsfahodf[ asdhfa dfh[aidsf af]]]]jdhajdgh kdj dfjghakjdfh akdhpf akd nd;kfd jfakjdf ajdf ajkfhdl ajdhfpajdh fpasd fajdhpf jadh gadhf faskdjhfak jdgh;kldgfjfihpdjgha hdspjkhg pjghapsdjhpajdhpfkjap dfj paodhf hkhdahdfiad faidhpf adhahkf[a dfa[sdifh adsfahodf[ asdhfa dfh[aidsf af]]]]jdhajdgh kdj dfjghakjdfh akdhpf akd nd;kfd jfakjdf ajdf ajkfhdl ajdhfpajdh fpasd fajdhpf jadh gadhf faskdjhfak jdgh;kldgfjfihpdjgha hdspjkhg pjghapsdjhpajdhpfkjap dfj paodhf hkhdahdfiad faidhpf adhahkf[a dfa[sdifh adsfahodf[ asdhfa dfh[aidsf af]]]]jdhajdgh kdj dfjghakjdfh akdhpf akd nd;kfd jfakjdf ajdf ajkfhdl ajdhfpajdh fpasd fajdhpf jadh gadhf faskdjhfak jdgh;kldgfjfihpdjgha hdspjkhg pjghapsdjhpajdhpfkjap dfj paodhf hkhdahdfiad faidhpf adhahkf[a dfa[sdifh adsfahodf[ asdhfa dfh[aidsf af]]]]"),
            ),
            const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // itemCount: hotel["images"].length,
                  itemCount: 3,
                  itemBuilder: (context, imagesIndex) {
                    return Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        margin: const EdgeInsets.all(16),
                        child: Image.asset(
                            "assests/images/${hotel["images"][imagesIndex]}"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatelessWidget {
  final String text;
  // ignore: non_constant_identifier_names
  final HotelDetailsController controller = Get.put(HotelDetailsController());
  ExpandedTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      Text _textResult = Text(
        text,
        maxLines: controller.isExpanded.value ? null : 3,
        overflow: controller.isExpanded.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textResult,
          GestureDetector(
            onTap: controller.changeState,
            child: Text(
              controller.isExpanded.value ? "less" : " more",
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,
              ),
            ),
          ),
        ],
      );
    });
  }
}
