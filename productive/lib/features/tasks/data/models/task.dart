import 'package:flutter/cupertino.dart';

import 'package:productive/features/tasks/data/models/priority.dart';

class TaskModel {
  final int id;
  final String title;
  final String icon;
  final Priority priority;
  final String? note;
  final DateTime startDate;
  final DateTime dueDate;
  final bool isChecked;
  final Color iconColor;
  TaskModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.priority,
    this.note,
    required this.startDate,
    required this.dueDate,
    required this.isChecked,
    required this.iconColor,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    
    return TaskModel(
      id: json['id'],
      title: json['title'],
      icon: json['icon'],
      note: json['note'],
      priority: json['priority'],
      startDate: json['start_date'],
      dueDate: json['due_date'],
      isChecked: json['is_checked'],
      iconColor: json['icon_color'],
    );
  }

  @override
  String toString() {
    return 'TaskModel(id: $id, title: $title, icon: $icon, priority: $priority, note: $note, startDate: $startDate, dueDate: $dueDate, isChecked: $isChecked, iconColor: $iconColor)';
  }

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.icon == icon &&
        other.priority == priority &&
        other.note == note &&
        other.startDate == startDate &&
        other.dueDate == dueDate &&
        other.isChecked == isChecked &&
        other.iconColor == iconColor;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        icon.hashCode ^
        priority.hashCode ^
        note.hashCode ^
        startDate.hashCode ^
        dueDate.hashCode ^
        isChecked.hashCode ^
        iconColor.hashCode;
  }

  TaskModel copyWith({
    int? id,
    String? title,
    String? icon,
    Priority? priority,
    String? note,
    DateTime? startDate,
    DateTime? dueDate,
    bool? isChecked,
    Color? iconColor,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      priority: priority ?? this.priority,
      note: note ?? this.note,
      startDate: startDate ?? this.startDate,
      dueDate: dueDate ?? this.dueDate,
      isChecked: isChecked ?? this.isChecked,
      iconColor: iconColor ?? this.iconColor,
    );
  }
}
