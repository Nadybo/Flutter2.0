import 'package:flutter/material.dart';
import 'package:myhome/core/utils/image_constant.dart';
import 'package:myhome/core/utils/size_utils.dart';
import 'package:myhome/theme/custom_text_style.dart';
import 'package:myhome/widgets/appbarDrawer.dart';

import '../theme/theme_helper.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title:
              Text(
                'Заявки',
                style: CustomTextStyles.titleSmallWhiteA700,
              ),
          backgroundColor:  appTheme.blueGray800,// Изменяем цвет AppBar
          iconTheme: IconThemeData(color: Colors.white),// Изменяем цвет AppBar
        ),
        drawer: MyDrawer(),
        body: Container(
            height: 733.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 32.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup24),
                    fit: BoxFit.cover)),
            child: Stack(alignment: Alignment.topCenter, children: [

            ]
            )
        )
    );
  }
}
