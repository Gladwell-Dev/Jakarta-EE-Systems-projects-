package com.apd.internship.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Internship {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;

    @Temporal(TemporalType.DATE)
    private Date deadline;

    // Getters and setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public Date getDeadline() { return deadline; }
    public void setDeadline(Date deadline) { this.deadline = deadline; }
}