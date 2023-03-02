import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/match_button_widget.dart';
import 'package:sarang_app/src/theme_manager/asset_image_icon_manager.dart';

import '../../../theme_manager/font_manager.dart';
import '../../../theme_manager/style_manager.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 420.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            '${AssetImageIconManager.assetPath}/people_love4_image.png'))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MatchButtonWidget(
                        dimension: 24.0,
                        iconPath: 'icon_arrow_left.png',
                        onTap: () {}),
                    Text(
                      'Lover Profile\nDetail',
                      textAlign: TextAlign.center,
                      style: getWhiteTextstyle(
                          fontSize: 20.0,
                          fontWeight: FontWeightManager.semiBold),
                    ),
                    MatchButtonWidget(
                        dimension: 24.0,
                        iconPath: 'icon_close_circle.png',
                        onTap: () {})
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nanda',
                  style: getWhiteTextstyle(
                      fontSize: 28.0, fontWeight: FontWeightManager.semiBold),
                ),
                Text(
                  '20, UI/UX Designer',
                  style: getBlackTextstyle(),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'I love solving problem in terms of finance,\nbusiness, and any case. With you, we will\nsolve all world problems.',
                  style: getWhiteTextstyle(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
