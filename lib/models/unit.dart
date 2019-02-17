import 'package:flutter/material.dart';
import 'package:khunit/models/option.dart';

class Unit {
  final int id;
  final String name;
  final IconData icon;
  final List<Option> option;

  Unit({
    this.id,
    this.name,
    this.icon,
    this.option,
  });
}
