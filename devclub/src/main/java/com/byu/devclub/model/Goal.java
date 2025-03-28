package com.byu.devclub.model;

import jakarta.persistence.*;

import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "goals")
public class Goal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "description")
    private String description;

    @Column(name = "name")
    private String name;

    @Column(name = "due_date")
    private Date dueDate;

    @Column(name = "completion_status")
    private boolean completionStatus;

    @ManyToOne()
    private User user;
}
