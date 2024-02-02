import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Tugas14/controller/appcontroller.dart';

class GetDataScreenStateManagement extends StatelessWidget {
  const GetDataScreenStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management Getx"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(child: Obx(() {
            return controller.postLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.getPosts.length,
                    itemBuilder: (context, index) {
                      var item = controller.getPosts[index];
                      return Card(
                        child: ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.body),
                          leading: Text(item.id.toString()),
                        ),
                      );
                    },
                  );
          }))
        ],
      ),
    );
  }
}
