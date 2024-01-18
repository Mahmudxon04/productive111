import 'dart:ui';

import 'package:productive/features/tasks/data/models/priority.dart';
import 'package:productive/features/tasks/data/repository/mock_data.dart';
import 'package:productive/features/tasks/data/models/task.dart';

class TaskRepository {
  Future<List<TaskModel>> getTasks()async {
    Future.delayed(const Duration(seconds: 3));
    
    
    return (data['tasks']as List).map((e) => TaskModel.fromJson(e)).toList();

  }

  Future<TaskModel> createTask({
    required String icon,
    required String title,
    required DateTime startDate,
    required DateTime dueDate,
    required String? note,
    required Priority priority,
    required Color iconColor
  }) async {
    
    await Future.delayed(const Duration(seconds: 3),);

    if (title.isEmpty || title.length < 3) {
      throw Exception('Title is invalid');
    }
    final newTask = TaskModel(
      id: (data['tasks'] as List).lastOrNull['id'] + 1 ?? 0,
      icon: icon,
      title: title,
      priority: priority,
      note: note,
      startDate: startDate,
      dueDate: dueDate,
      isChecked: false,
      iconColor: iconColor,
        
      
    );

    data['tasks'].add(
      {
        "id": newTask.id,
        "title": newTask.title,
        "icon": newTask.icon,
        "priority": newTask.priority,
        "note": newTask.note,
        "start_date": newTask.startDate,
        "due_date": newTask.dueDate,
        "is_checked": newTask.isChecked,
        "icon_color": newTask.iconColor
      },
      
    );
    
    return newTask;
  }

  
}