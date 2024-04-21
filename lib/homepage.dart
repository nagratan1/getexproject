import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class MyWidget extends StatelessWidget {

  const MyWidget({super.key});

 
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(MYConmtroller());
    



    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: const Text('getx demo app'),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(()=> Text(' mylist  ${controller.productlist}')),
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(()=>
              Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              controller.decrement();

            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: (){
              controller.incremnet();

            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }





}