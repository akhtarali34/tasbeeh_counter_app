import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count =0;
  counter(){
    setState(() {
      count++;
    });
  }

  reset(){
    setState(() {

      count =0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Text(count.toString(),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(

                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                ),
              ),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(.5),
                        offset: const Offset(0, 5),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
            ),

            Transform.translate(
              offset: const Offset(0, -40),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(.5),
                          offset: const Offset(0, 5),
                          spreadRadius: 5,
                          blurRadius: 5)
                    ]),
                child: Column(
                  children: [
                    SizedBox(height: 8,),
                    ElevatedButton(onPressed: (){
                      counter();
                    },
                        style: ElevatedButton.styleFrom(
                          maximumSize: Size(80, 80)
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),
                        )),
                    const SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      reset();
                    },
                         style: ElevatedButton.styleFrom(
                           foregroundColor: Colors.red
                         ),
                        child: Text("Reset"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
