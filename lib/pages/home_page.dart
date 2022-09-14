import 'package:flutter/material.dart';
import 'package:function_trace20220914/pages/riverpod_loading_page.dart';
import 'package:function_trace20220914/pages/set_state_loading_page.dart';
import 'package:function_trace20220914/ui_components/rounded_flat_text_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 80.0),
              const Expanded(
                child: Text(
                  '機能トレース',
                  style: TextStyle(fontSize: 48.0),
                ),
              ),
              RoundedFlatTextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SetStateLoadingPage(),
                    ),
                  );
                },
                child: const Text('ローディング機能（setState）'),
              ),
              const SizedBox(height: 16.0),
              RoundedFlatTextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const RiverpodLoadingPage(),
                    ),
                  );
                },
                child: const Text('ローディング機能（Riverpod）'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
