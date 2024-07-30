import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Responsive_Layout/desktopScaffold.dart';
import '../coustom_widgets/widgets_costum.dart';

class Contact_screen extends StatefulWidget {
  const Contact_screen({super.key});

  @override
  State<Contact_screen> createState() => _Contact_screenState();
}

Color submit_Color = Colors.black.withOpacity(0.2);

class _Contact_screenState extends State<Contact_screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController msgController = TextEditingController();

  void saveMessages() {
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String subject = subjectController.text.trim();
    String msg = msgController.text.trim();

    Map<String, dynamic> newMessage = {
      'Name': name,
      'Email': email,
      'Subject': subject,
      "Messages": msg
    };

    if (email != '' && name != "" && subject != "" && msg != "") {
      FirebaseFirestore.instance
          .collection('Messages')
          .doc(name)
          .set(newMessage);
      emailController.clear();
      nameController.clear();
      subjectController.clear();
      msgController.clear();
      _showNotification();
    } else {
      _errorNotification();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "Contact us",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.green),
        ),
      ),
      backgroundColor: Colors.grey.shade800,
      body: Container(
        decoration: const BoxDecoration(),
        child: Center(
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Container(
                    width: 400,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Let's Collaborate",
                        style: textTheme.subHeaderStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 5),
                        child: Text(
                          "Share your ideas or project details below, and let's turn your vision into reality!",
                          style: textTheme.textStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        text1: "Email Address",
                        expand: false,
                        height: 60,
                        controller: emailController,
                      ),
                      CustomTextField(
                        text1: 'Full Name',
                        expand: false,
                        height: 60,
                        controller: nameController,
                      ),
                      CustomTextField(
                        text1: 'Subject',
                        expand: false,
                        height: 60,
                        controller: subjectController,
                      ),
                      CustomTextField(
                        text1: 'Your Message',
                        expand: true,
                        maxLines: null,
                        height: 150,
                        controller: msgController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          saveMessages();
                        },
                        child: MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              submit_Color = Colors.amberAccent.withOpacity(1);
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              submit_Color = Colors.black.withOpacity(0.2);
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: const Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  fontFamily: 'prata',
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                                boxShadow: [
                                  BoxShadow(
                                      color: submit_Color,
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3))
                                ]),
                          ),
                        ),
                      ),
                    ])),
                Container(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get in Touch",
                          style: textTheme.subHeaderStyle,
                        ),
                        Text(
                          "Want to discuss a project or just chat about coding? "
                          "Reach out to me through any of the channels below."
                          " Whether you're a fan of phone calls, social media,"
                          " or good old-fashioned emails, I'm here and eager to"
                          " connect with fellow developers like you!",
                          style: textTheme.textStyle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Contact Info:",
                          style:
                              textTheme.subHeaderStyle!.copyWith(fontSize: 25),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "📞 Phone:+923136033747",
                          style: textTheme.textStyle,
                        ),
                        Text(
                          "📧 Email: developerflutter470@gmail.com",
                          style: textTheme.textStyle!.copyWith(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Connect Online",
                          style:
                              textTheme.subHeaderStyle!.copyWith(fontSize: 25),
                        ),
                        InkWell(
                          onTap: () => launch(
                              'https://www.linkedin.com/in/ali-aqdas-9a2ba8299/'),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/link.png"),
                            ),
                            title: const Text("Linkedin"),
                            subtitle: const Text("Ali Aqdas"),
                          ),
                        ),
                        InkWell(
                          onTap: () =>
                              launch('https://www.instagram.com/ali_aqdas1/'),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Image.asset('assets/images/instagram.png'),
                            ),
                            title: const Text("Instagram"),
                            subtitle: const Text("Ali Aqdas"),
                          ),
                        ),
                        InkWell(
                          onTap: () => launch('https://github.com/aliaqdas747'),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Image.asset('assets/images/git.png'),
                            ),
                            title: const Text("Github"),
                            subtitle: const Text("aliaqdas747"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showNotification() {
  Get.snackbar(
    'Notification',
    'Your message has been successfully sent to developer',
    backgroundColor: Colors.white,
    snackPosition: SnackPosition.TOP,
    duration: const Duration(seconds: 3),
  );
}

void _errorNotification() {
  Get.snackbar(
    'Notification',
    'Oops! It looks like you missed a spot. Please fill in all fields',
    backgroundColor: Colors.white,
    snackPosition: SnackPosition.TOP,
    duration: const Duration(seconds: 3),
  );
}
