library home;

import 'package:flutter/material.dart';
import 'package:flutter_api_demo/utils/services/api_service.dart';

import '../../models/user_model.dart';

part '../components/item_card.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late List<UserModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUser())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Demo'),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return _ActiveProjectCard(
                    id: _userModel![index].id.toString(),
                    username: _userModel![index].username,
                    email: _userModel![index].email,
                    website: _userModel![index].website);
              },
            ),
    );
  }
}
