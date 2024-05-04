import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
      title: 'Pelé',
      subTitle: 'Pelé@gmail.com',
      image: AppImages.avatar1,
    ),
    UserInfoModel(
      title: 'Maradona',
      subTitle: 'Maradona@gmail.com',
      image: AppImages.avatar2,
    ),
    UserInfoModel(
      title: 'Ronaldo',
      subTitle: 'ronaldo@gmail.com',
      image: AppImages.avatar1,
    ),
    UserInfoModel(
      title: 'Messi',
      subTitle: 'messi@gmail.com',
      image: AppImages.avatar2,
    ),
    UserInfoModel(
      title: 'Ronaldinho',
      subTitle: 'ronaldinho@gmail.com',
      image: AppImages.avatar1,
    ),
    UserInfoModel(
      title: 'Zidane',
      subTitle: 'zidane@gmail.com',
      image: AppImages.avatar2,
    ),
    UserInfoModel(
      title: 'J Cruyff',
      subTitle: 'JCruyff@gmail.com',
      image: AppImages.avatar1,
    ),
    UserInfoModel(
      title: 'Iniesta',
      subTitle: 'iniesta@gmail.com',
      image: AppImages.avatar2,
    ),
    UserInfoModel(
      title: 'Salah',
      subTitle: 'salah@gmail.com',
      image: AppImages.avatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
