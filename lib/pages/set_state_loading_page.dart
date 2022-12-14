import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:function_trace20220914/ui_components/rounded_flat_text_button.dart';

class SetStateLoadingPage extends StatefulWidget {
  const SetStateLoadingPage({Key? key}) : super(key: key);

  @override
  State<SetStateLoadingPage> createState() => _SetStateLoadingPageState();
}

class _SetStateLoadingPageState extends State<SetStateLoadingPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            children: [
              const Spacer(),
              if (_isLoading)
                const CupertinoActivityIndicator(
                  radius: 24.0,
                ),
              const Spacer(),
              RoundedFlatTextButton(
                onPressed: () {
                  setState(() {
                    _isLoading = !_isLoading;
                  });
                },
                child: const Text('ローディング'),
              ),
              const SizedBox(height: 16.0),
              RoundedFlatTextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('戻る'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
