import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget bonusCard(){
      return Container(
        width: 300.0,
        height: 211.0,
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/img/img_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50.0,
              offset: const Offset(0.0, 10.0),
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14.0,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Dany Pratama',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20.0,
                          fontWeight: medium,
                          overflow: TextOverflow.ellipsis
                        ),
                      )
                    ],
                  )
                ),
                Container(
                  width: 24.0,
                  height: 24.0,
                  margin: const EdgeInsets.only(right: 6.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/icon_plane.png'),
                    )
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(height: 41.0,),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26.0,
                fontWeight: medium,
                overflow: TextOverflow.ellipsis
              ),
            )
          ],
        ),
      );
    }

    Widget bonusTitle(){
      return Container(
        margin: const EdgeInsets.only(top: 80.0),
        child: Text(
          'Big Bonus',
          style: blackTextStyle.copyWith(
            fontSize: 32.0,
            fontWeight: semibold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget bonusSubtitle(){
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16.0,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton(){
      return Container(
        width: 220.0,
        height: 55.0,
        margin: const EdgeInsets.only(top: 50.0),
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
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontSize: 18.0,
              fontWeight: medium
            ),
          )
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bonusTitle(),
            bonusSubtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }

}