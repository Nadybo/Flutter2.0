import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/core/utils/size_utils.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/presentation/register2.dart';
import 'package:myhome/theme/custom_text_style.dart';



class Login2 extends StatefulWidget {
  Login2({Key? key})
      : super(
    key: key,
  );

  @override
  State<Login2> createState() => _login2State();
}

class _login2State extends State<Login2> {
  List<String> titles=[
    '',
    '',
    '',
  ];

  TextEditingController weburlController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d2d2f),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          onChanged: (){
            setState(() {

            });
          },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 85.v,
                  width: 104.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 44.v),
                ),
                const SizedBox(height: 50,),
                Text(
                  "Вход",
                  style: CustomTextStyles.headlineSmallBold,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 20,),
                CustomInputField(title: 'Код студента', obscureText: false,),
                SizedBox(height: 10,),
                CustomInputField(title:'Пароль', obscureText: false),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  backgroundColor: Color(0xff1976d1),
                                  fixedSize: Size(160, 50)
                              ),
                              onPressed: (){},
                              child: Text("Vk",
                              style: TextStyle(
                                color: Colors.white
                              ),
                              )
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  backgroundColor: Color(0xffffffff),
                                  fixedSize: Size(160, 50)
                              ),
                              onPressed: (){},
                              child: Text("Gos")
                          ),
                        ],
                      ),
                      SizedBox(height:20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              backgroundColor: Color(0xff39b7a0),
                              fixedSize: Size(340, 50)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MenuScreen()),
                            );
                          },
                          child: const SelectableText("Далее",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "SF Pro Display",
                            ),
                          )
                      ),
                      SizedBox(height: 5,),
                      TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register2()),
                            );
                          },
                          child: Text("Зарегистрироваться",
                          style: TextStyle(
                            color: Color(0xff0a7d95),
                            fontSize:14,
                            fontWeight: FontWeight.w300,
                          ),
                          ),
                      )
                    ],
                  ),
                ),
              ],
            ),
        ),
      )
    );
  }
}