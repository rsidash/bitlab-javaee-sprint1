package kz.bitlab.academy.db;

import kz.bitlab.academy.entity.Task;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static final List<Task> taskList = new ArrayList<>();
    private static long id = 1L;

    public static void addTask(Task task) {
        task.setId(id++);
        taskList.add(task);
    }

    public static List<Task> findAll() {
        return taskList;
    }

    public static void update(Long id, Task entity) {
        for (Task task : taskList) {
            if (id.equals(task.getId())) {
                task.setName(entity.getName());
                task.setDescription(entity.getDescription());
                task.setDeadlineDate(entity.getDeadlineDate());
                task.setDone(entity.isDone());
                break;
            }
        }
    }

    public static Task findById(Long id) {
        for (Task task : taskList) {
            if (id.equals(task.getId())) {
                return task;
            }
        }

        throw new RuntimeException("Task not found with id: " + id);
    }

    public static void deleteTask(Long id) {
        Task task = findById(id);
        taskList.remove(task);
    }
}
