import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myhome/core/app_export.dart';
import 'package:myhome/core/utils/size_utils.dart';
import 'package:myhome/presentation/login2.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/theme/custom_text_style.dart';


const List<String> list = <String>['Студент', 'Работник', 'Гость'];
class Register2 extends StatefulWidget {
  Register2({Key? key})
      : super(
    key: key,
  );


  @override
  State<Register2> createState() => _registerState();
}

class _registerState extends State<Register2> {
  List<String> titles=[
    '',
    '',
    '',
  ];

  TextEditingController weburlController = TextEditingController();

  TextEditingController passwordController = TextEditingController();


  String dropdownValue = list.first;

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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                    "Регистрация",
                    style: CustomTextStyles.headlineSmallBold,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20,),
                  CustomInputField(
                    title: "Код студента",
                    obscureText: false,
                  ),
                  // SizedBox(height: 10,),
                  // Container(
                  //   height: 60,
                  //   width: 360,
                  //   decoration: BoxDecoration(
                  //       color: Color(0x99000000),
                  //       borderRadius: BorderRadius.circular(10)
                  //   ),
                  //   child: DropdownButton<String>(
                  //     // focusColor: Colors.red,
                  //     value: dropdownValue,
                  //     elevation: 1,
                  //     style: const TextStyle(
                  //       color: Colors.white,
                  //       fontFamily: "SF Pro Text",
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.w200,
                  //     ),
                  //     borderRadius: BorderRadius.circular(10),
                  //     dropdownColor: Color(0xFD000000),
                  //     padding: EdgeInsets.all(10),
                  //     onChanged: (String? value) {
                  //       // This is called when the user selects an item.
                  //       setState(() {
                  //         dropdownValue = value!;
                  //       });
                  //     },
                  //     items: list.map<DropdownMenuItem<String>>((String value) {
                  //       return DropdownMenuItem<String>(
                  //         value: value,
                  //         child: Text(value),
                  //       );
                  //     }).toList(),
                  //   ),
                  // ),
                  SizedBox(height: 10,),
                  CustomInputField(
                    title: "Пароль",
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  CustomInputField(
                    title: "Подтверждение пароля",
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Создавая аккаунт, вы соглашаетесь с ',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: "Условиями пользования",
                          style: TextStyle(
                            color: Color(0xff0a7d95),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Register2()),
                              );
                            },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                        SizedBox(height: 30,),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Войти",
                                style: TextStyle(
                                  color: Color(0xff0a7d95),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Login2()),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),

            ),

          ),
        )
    );
  }
}
class CustomInputField extends StatelessWidget {
  final String title;
  final bool obscureText;

  const CustomInputField({Key? key, required this.title, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 360,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "SF Pro Text",
          fontSize: 14,
          fontWeight: FontWeight.w200,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0x99000000),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.greenAccent,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: title,
          hintStyle: TextStyle(
            color: Color(0x99FFFFFF),
            fontFamily: "SF Pro Text",
            fontSize: 14,
            fontWeight: FontWeight.w200,
          ),
        ),
        textAlign: TextAlign.start,
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscureText,
        textInputAction: TextInputAction.done,
        // maxLength: 100,
      ),
    );
  }
}