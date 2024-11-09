import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottommNavigationBarIndex = StateNotifierProvider<BottomNavigationBarNotifier, int>((ref){
  return BottomNavigationBarNotifier();
});

class BottomNavigationBarNotifier extends StateNotifier<int> {

  BottomNavigationBarNotifier() : super(0);

  void set(int val) {
    state = val;
  }
}