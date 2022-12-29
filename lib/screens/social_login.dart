import 'package:assgn_realestate_ui/custom/button.dart';
import 'package:flutter/material.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';

class Social_login extends StatelessWidget {
  const Social_login({super.key});

  @override
  Widget build(BuildContext context) {
     double widtha=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
         leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,color: Colors.black,), iconSize:(30),
         ),
      ),
      body: Padding(
         padding:  EdgeInsets.symmetric(horizontal:widtha*0.05),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
             children: [
              Container(
                width:widtha,
                child: Center(child: Image.asset("assets/images/1_screen1.png",fit: BoxFit.cover, width: 250,)),
              ),
              Text("LOGIN TO YOUR ACCOUNT", style: TextStyle(
                fontSize: 25
              ),),
              Container(
                width: widtha,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                                  InkWell(
                onTap: (){},
                child: Container(
                  width: widtha,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/facebook.png"),width: 25,height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Continue with facebook"),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                 borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  width: widtha,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/google.png"),width: 25,height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Continue with google"),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                 borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  width: widtha,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/images/apple.png"),width: 25,height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Continue with apple"),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                 borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                  ],
                ),
              ),
              Divider(),
              button1(text: "Sign in with password",),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account ?  "),
              Text("Sign up",style: TextStyle(color: Color(themecolor)),)
            ],
           ),

             ],
      ),
       ),
      
    backgroundColor: Colors.white,
    );
  }
}