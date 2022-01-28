import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
          color: Color(0xFF0079D0), width: 1.5));
      const linkTextStyle = TextStyle(
          fontSize: 16,
          color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.fill,
              )
            ),
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: SingleChildScrollView(
              child: Column(children:  [
                const SizedBox(height: 60,),
                const SizedBox(
                  width:110,
                  height: 84,
                  child: Image(image: AssetImage('assets/dart-logo.png'),),),
                const SizedBox(height: 20,),
                const Text('Введите логин в виде 10 цифр номера телефона',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),
                textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон',
                  ),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
                const SizedBox(height: 28,),
                SizedBox(width: 154, height: 42,child:
                  ElevatedButton(onPressed: () {},
                    child: const Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                  ),)),
                const SizedBox(height: 62,),
                InkWell(child: const Text('Регистрация',
                    style: linkTextStyle),
                  onTap: () {},),
                const SizedBox(height: 20,),
                InkWell(child: const Text('Забыли пароль?',
                    style: linkTextStyle),
                  onTap: () {},),
              ],),
            ),
          )
      ),
    );
  }
}
