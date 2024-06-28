import 'package:e_commerce/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController controller = Get.put(ApiController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(),
        body: controller.allData.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.allData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      controller.allData[index].thumbnail,
                      fit: BoxFit.cover,
                    ),
                    title: Text(controller.allData[index].title),
                    subtitle: Text(controller.allData[index].description),
                  );
                },
              ),
      ),
    );
  }
}
