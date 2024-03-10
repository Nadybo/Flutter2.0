import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/widgets/appbarDrawer.dart';

// ignore_for_file: must_be_immutable
class ServicesScreen extends StatelessWidget {
  ServicesScreen({Key? key}) : super(key: key);

  TextEditingController pestControlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            resizeToAvoidBottomInset: false,
             appBar: AppBar(
               title:
                   Text(
                     'Сервисы',
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
