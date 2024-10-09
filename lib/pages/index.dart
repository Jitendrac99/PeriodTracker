import 'package:flutter/material.dart';
import 'package:periods/pages/profile.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const profile()),
                  );
                },
                child: Container(
                  height: 120,
                  width: 40,
                  child: Center(child: Icon(Icons.keyboard_backspace,color: Colors.white,)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(236, 153, 153, 10),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              child: Container(
                height: 760,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 500,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/smell.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("What is Periods?"),
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              child: Text("Periods are the regular shedding of the uterine lining that occurs in people with a uterus, typically happening once a month. This process is part of the menstrual cycle, which prepares the body for potential pregnancy.")),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 360,
                        child: Stack(
                          children: [
                            Positioned(
                              top:60,
                              left: 110,
                              child: Container(
                                height: 220,
                                width: 220,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(236, 153, 153, 10)),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 40,
                              child: Container(
                                height: 260,
                                width: 190,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/canada.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              child: Text("Periods, or menstruation, are a natural and essential part of a girl's life. They signify the beginning of reproductive health and play a crucial role in the menstrual cycle, which prepares the body for potential pregnancy. Menstruation typically begins between the ages of 9 and 16, with most girls getting their first period around age 12. This first period, known as menarche, marks the onset of puberty and is influenced by factors like genetics, nutrition, and overall health.")),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 360,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 80,
                              top: 40,
                              child: Container(
                                height: 260,
                                width: 190,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/cramp.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              child: Text("Many girls experience menstrual cramps, or dysmenorrhea, during their periods. These cramps are caused by the contraction of the uterine muscles as the body sheds the uterine lining. While cramps can be uncomfortable, they are a normal part of the menstrual process. To manage cramps, you can try applying heat with a heating pad or hot water bottle on your lower abdomen. Staying active with light exercise, such as walking or yoga, can also help relieve pain. Hydration and proper nutrition play a role in easing symptoms, so drinking plenty of water and eating a balanced diet rich in fruits, vegetables, and whole grains is beneficial. Over-the-counter pain relief medications like ibuprofen can help alleviate severe cramps if needed.")),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 360,
                        child: Stack(
                          children: [
                            Positioned(
                              top:60,
                              left: 110,
                              child: Container(
                                height: 220,
                                width: 220,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(236, 153, 153, 10)),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 40,
                              child: Container(
                                height: 260,
                                width: 190,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/eat.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              child: Text("Adopting healthy habits can significantly improve your menstrual experience and overall well-being. Regular exercise boosts mood and energy levels, and can help regulate your cycle. Eating a variety of nutritious foods supports hormonal balance and reduces bloating and fatigue. Staying hydrated helps reduce bloating and flushes out toxins. Getting adequate sleep is essential for managing stress and maintaining hormonal health. Stress management practices like meditation, deep breathing, and engaging in hobbies can also reduce stress and its impact on your cycle.")),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 360,
                        child: Stack(
                          children: [
                            Positioned(
                              top:50,
                              left: 80,
                              child: Container(
                                height: 240,
                                width: 240,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(236, 153, 153, 10)),
                              ),
                            ),
                            Positioned(
                              left: 90,
                              top: 40,
                              child: Container(
                                height: 260,
                                width: 190,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/selflove.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              child: Text("Understanding and embracing your menstrual cycle is empowering. It's a natural process that reflects your body's health and reproductive capability. Tracking your periods can help you predict future cycles, manage symptoms, monitor health, and plan for pregnancy or contraception. Knowing when to expect your period helps in planning and reducing surprises. By tracking symptoms, you can find patterns and better manage discomfort. Irregularities in your cycle can signal health issues, so tracking helps you stay informed and proactive about your health. Whether you're trying to conceive or avoid pregnancy, understanding your cycle is crucial.")),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 360,
                        child: Stack(
                          children: [
                            Positioned(
                              top:50,
                              left: 80,
                              child: Container(
                                height: 240,
                                width: 240,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(236, 153, 153, 10)),
                              ),
                            ),
                            Positioned(
                              left: 90,
                              top: 80,
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/bath.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              child: Text("It's essential to consult a healthcare provider if you experience very heavy bleeding that requires changing your pad or tampon every hour, severe pain that isn't relieved by over-the-counter medication, irregular cycles with periods that are more than 35 days apart or unusually close together, missed periods for more than three consecutive months without pregnancy, or any other symptoms that seem unusual or troubling. By understanding your menstrual cycle and adopting healthy habits, you can make informed decisions about your reproductive health. Our Period Tracker App is here to support you every step of the way, offering insights, reminders, and personalized tips to help you manage your cycle with confidence and ease.")),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      )

                    ],
                  ),
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
