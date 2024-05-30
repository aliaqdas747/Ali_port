
import 'package:flutter/material.dart';
import '../Responsive_Layout/desktopScaffold.dart';
import '../coustom_widgets/widgets_costum.dart';

class Contact_screen extends StatefulWidget {

  const Contact_screen({super.key});

  @override

  State<Contact_screen> createState() => _Contact_screenState();
}
Color submit_Color =  Colors.black.withOpacity(0.2);
class _Contact_screenState extends State<Contact_screen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's get Connected",style: textTheme.subHeaderStyle,),
        backgroundColor: Colors.amber,
      ),

      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/b2.png'),
            fit:BoxFit.cover
          )
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,

              children: [

                Container(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Get in Touch",style: textTheme.subHeaderStyle,),
                        Text("Want to discuss a project or just chat about coding? "
                            "Reach out to me through any of the channels below."
                            " Whether you're a fan of phone calls, social media,"
                            " or good old-fashioned emails, I'm here and eager to"
                            " connect with fellow developers like you!",style: textTheme.textStyle,),
                        SizedBox(height: 10,),
                        Text("Contact Info:",style: textTheme.subHeaderStyle!.copyWith(fontSize: 25),),
                        SizedBox(height: 10,),
                        Text("📞 Phone:+923136033747",style: textTheme.textStyle,),
                        Text("📧 Email: developerflutter470@gmail.com",style: textTheme.textStyle!.copyWith(fontSize: 20),),
                      SizedBox(height: 20,),
                        Text("Connect Online",style: textTheme.subHeaderStyle!.copyWith(fontSize: 25),),

                        ListTile(
                         leading: CircleAvatar(
                           backgroundImage: AssetImage("assets/images/link.png"),),
                          title: Text("Linkedin"),
                          subtitle: Text("Ali Aqdas"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset('assets/images/instagram.png'),
                           ),
                          title: Text("Instagram"),
                          subtitle: Text("Ali Aqdas"),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset('assets/images/git.png'),
                          ),
                          title: Text("Github"),
                          subtitle: Text("aliaqdas747"),
                        ),
                          ],
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                   borderRadius: BorderRadius.circular(50)
                  ),
                  ),
                Container(
                  width: 400,

                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child:Column(
                    children:[
                      SizedBox(height: 20,),
                      Text("Let's Collaborate",style: textTheme.subHeaderStyle,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5),
                        child: Text("Share your ideas or project details below, and let's turn your vision into reality!",style: textTheme.textStyle,),
                      ),
                      SizedBox(height: 20,),
                      CustomTextField(text1: "Enter Your Email", expand: false, height: 60,  ),
                      CustomTextField(text1: 'Enter Your Name', expand: false, height: 60, ),
                      CustomTextField(text1: 'Enter Subject', expand: false, height: 60 ,),

                       CustomTextField(text1: 'Message', expand: true, maxLines: null, height: 150,)
                    ,SizedBox(height: 20,),
                      MouseRegion(
                        onEnter: (_){
                          setState(() {
                            submit_Color=  Colors.amberAccent.withOpacity(1);
                          });

                        },
                        onExit: (_){
                          setState(() {
                            submit_Color=   Colors.black.withOpacity(0.2);
                          });
                        },

                        child: Container(

                          margin: EdgeInsets.all(10),
                          child: const Center(child:  Text('Submit',
                            style:  TextStyle(
                              fontFamily: 'prata',
                              fontSize: 15,
                              color: Colors.black,


                              fontWeight: FontWeight.w900,
                            ),),),
                          height: 50,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber,
                            boxShadow: [
                              BoxShadow(
                                  color:submit_Color,
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3)
                              )
                            ]
                        ),),
                      ),
                    ]
                  )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
