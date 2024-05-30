import 'dart:developer';

import 'package:flutter/material.dart';

import '../question3/cache_helper.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  Map? user;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // showLoading();
      user = CacheHelper.getUserCached(widget.id.toString());
      // back();
      log('user: $user');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    const _style = TextStyle(color: Colors.black, fontSize: 16);
    final data = user;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              "Id: ${data?['id']}",
              style: _style,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "${data?['first_name']}",
                  style: _style,
                ),
                Text(
                  "${data?['last_name']}",
                  style: _style,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "${data?['image']}",
              style: _style,
            ),
          ],
        ),
      ),
    );
  }

  void showLoading() {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void back() => Navigator.pop(context);
}
