import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget title(){
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(
          fontSize: 24.0,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget inputSection(){

    Widget nameInput(){
      return Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: blackTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(height: 6.0,),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                hintText: 'Your full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )
                ),
              ),
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: blackTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(height: 6.0,),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                hintText: 'Your email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )
                ),
              ),
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput(){
      return Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: blackTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(height: 6.0,),
            TextFormField(
              obscureText: true,
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                hintText: 'Your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )
                ),
              ),
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    Widget hobbyInput(){
      return Container(
        margin: const EdgeInsets.only(bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hobby',
              style: blackTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(height: 6.0,),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                hintText: 'Your hobby',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  )
                ),
              ),
              style: blackTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    Widget submitButton(){
      return SizedBox(
        width: double.maxFinite,
        height: 55.0,
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/bonus');
          }, 
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)
            )
          ),
          child: Text(
            'Get Started',
            style: whiteTextStyle.copyWith(
              fontSize: 18.0,
              fontWeight: medium
            ),
          )
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 30.0
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          nameInput(),
          emailInput(),
          passwordInput(),
          hobbyInput(),
          submitButton(),
        ],
      ),
    );
  }

  Widget tacButton(){
    return Container(
      margin: const EdgeInsets.only(top: 50.0, bottom: 70.0),
      alignment: Alignment.center,
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(
          fontSize: 16.0,
          fontWeight: light,
          decoration: TextDecoration.underline
        ),
      ),
    );
  }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }

}