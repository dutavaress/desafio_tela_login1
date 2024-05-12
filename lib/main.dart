import 'package:flutter/material.dart';
import 'package:desafio_tela_login1/constants/responsive_utils.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true; // Variável booleana para controlar a visibilidade da senha

  @override
  Widget build(BuildContext context) {
    ResponsiveUltils responsiveUtils = ResponsiveUltils(); // Inicializando a classe de utilidades de responsividade

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(109, 94, 88, 88), 
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFFE0B2), Color(0xFFFF6D00)],
                  ),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: responsiveUtils.getHeightSpacing(context, 60)), // Ajustando o espaçamento de acordo com a altura da tela
                    Text(
                      'LOGO', // Título "Logo"
                      style: TextStyle(
                        fontSize: 50 * responsiveUtils.getTextScale(context), 
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Lobster',
                      ),
                    ),
                    SizedBox(height: responsiveUtils.getHeightSpacing(context, 50)), // Ajustando o espaçamento de acordo com a altura da tela
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: responsiveUtils.getWidthSpacing(context, 25)), // Ajustando o espaçamento horizontal de acordo com a largura da tela
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20 * responsiveUtils.getTextScale(context), // Ajustando o tamanho do texto de acordo com a escala
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: responsiveUtils.getHeightSpacing(context, 30)), // Ajustando o espaçamento de acordo com a altura da tela
                  ],
                ),
              ),
              SizedBox(height: responsiveUtils.getHeightSpacing(context, 50)), // Ajustando o espaçamento de acordo com a altura da tela
              Padding(
                padding: EdgeInsets.all(responsiveUtils.getWidthSpacing(context, 20)), // Ajustando o espaçamento de acordo com a largura da tela
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(96, 158, 158, 158),
                            offset: Offset(4.0, 4.0),
                            blurRadius: 30,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                          prefixIcon: Icon(Icons.email),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: responsiveUtils.getHeightSpacing(context, 12.5),
                            horizontal: responsiveUtils.getWidthSpacing(context, 15.0),
                          ),
                          hintText: 'Email Adress',
                          filled: true,
                          fillColor: const Color.fromARGB(120, 158, 158, 158),
                        ),
                      ),
                    ),
                    SizedBox(height: responsiveUtils.getHeightSpacing(context, 20)), // Ajustando o espaçamento de acordo com a altura da tela
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(96, 158, 158, 158),
                            offset: Offset(4.0, 4.0),
                            blurRadius: 30,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: responsiveUtils.getHeightSpacing(context, 12.5),
                            horizontal: responsiveUtils.getWidthSpacing(context, 15.0),
                          ),
                          hintText: 'Password',
                          filled: true,
                          fillColor: const Color.fromARGB(120, 158, 158, 158),
                        ),
                      ),
                    ),
                    SizedBox(height: responsiveUtils.getHeightSpacing(context, 10)), // Ajustando o espaçamento de acordo com a altura da tela
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15 * responsiveUtils.getTextScale(context), // Ajustando o tamanho do texto de acordo com a escala
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: responsiveUtils.getHeightSpacing(context, 50)), // Ajustando o espaçamento de acordo com a altura da tela
              SizedBox(
                width: responsiveUtils.getWidthSpacing(context, 350), // Ajustando a largura do botão de acordo com a largura da tela
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 17 * responsiveUtils.getTextScale(context), // Ajustando o tamanho do texto de acordo com a escala
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      responsiveUtils.getWidthSpacing(context, 300), // Ajustando o tamanho mínimo do botão de acordo com a largura da tela
                      responsiveUtils.getHeightSpacing(context, 50), // Ajustando o tamanho mínimo do botão de acordo com a altura da tela
                    ),
                    backgroundColor: Color(0xFFFF6D00),
                  ),
                ),
              ),
              SizedBox(height: responsiveUtils.getHeightSpacing(context, 10)), // Ajustando o espaçamento de acordo com a altura da tela
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15 * responsiveUtils.getTextScale(context), // Ajustando o tamanho do texto de acordo com a escala
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Text(
                      ' Register',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 15 * responsiveUtils.getTextScale(context), // Ajustando o tamanho do texto de acordo com a escala
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
