package kz.bitlab.academy.entity;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Task {
    private Long id;
    private String name;
    private String description;
    private LocalDate deadlineDate;
    private boolean isDone = false;

    public Task() {
    }

    public Task(String name, String description, LocalDate deadlineDate) {
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
    }

    public Task(Long id, String name, String description, LocalDate deadlineDate) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getDeadlineDate() {
        return deadlineDate;
    }

    public String getFormattedDeadlineDate() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        return getDeadlineDate().format(formatter);
    }

    public void setDeadlineDate(LocalDate deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public boolean getDone() {
        return isDone;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setDone(boolean done) {
        this.isDone = done;
    }
}
