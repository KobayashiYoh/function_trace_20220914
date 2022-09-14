import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:function_trace20220914/providers/loading_notifier.dart';
import 'package:function_trace20220914/ui_components/rounded_flat_text_button.dart';

class RiverpodLoadingPage extends ConsumerWidget {
  const RiverpodLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isLoading = ref.watch(loadingProvider);
    final notifier = ref.watch(loadingProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            children: [
              const Spacer(),
              if (isLoading)
                const CupertinoActivityIndicator(
                  radius: 24.0,
                ),
              const Spacer(),
              RoundedFlatTextButton(
                onPressed: notifier.switchLoading,
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
