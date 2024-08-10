import 'package:get/get.dart';
import '../../../data/model/user_model.dart';
import '../../../data/provider/api_service.dart';

class UserListController extends GetxController {
  var isLoading = true.obs;
  var userList = <User>[].obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var users = await ApiService().fetchUsers();
      if (users.isNotEmpty) {
        userList.assignAll(users);
      }
    } finally {
      isLoading(false);
    }
  }
}
