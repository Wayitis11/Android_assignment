import 'package:rental/Helpers/Colors.dart';
import 'package:rental/Widgets/CustomText.dart';
import 'package:rental/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 173, 194),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Builder(builder: (context) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Rental',
                              fontSize: 40,
                              color: Color.fromARGB(255, 11, 11, 11),
                            ),
                            SizedBox(height: 100.0),
                          ],
                        ),
                        CustomText(
                          text: 'A Rental Solution',
                          fontSize: 20,
                          color: Color.fromARGB(153, 11, 11, 11),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Image.network(
                            'https://img.freepik.com/free-vector/house-rent-abstract-concept-vector-illustration-booking-house-online-best-rental-property-real-estate-service-accommodation-marketplace-rental-listing-monthly-rent-abstract-metaphor_335657-1954.jpg?w=996&t=st=1663306529~exp=1663307129~hmac=de0474f5a3f8687176faff433bf40ad015477c7d7a68266b70019783bd2203e3',
                            height: 230,
                            width: 230), // <-- SEE HERE
                      ],
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      ElevatedButton(
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 33, 92, 143),
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushNamed('signUpPage')),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Already have an account?',
                            fontSize: 12,
                            color: Color.fromARGB(255, 33, 92, 143),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        child: Text('Log In'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 33, 92, 143),
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.normal),
                        ),
                        onPressed: () =>
                            Navigator.of(context).pushNamed('signInPage'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
