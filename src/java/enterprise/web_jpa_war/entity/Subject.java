/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


/**
 *
 * @author nora
 */
@Entity
@Table(name = "SUBJECT")
public class Subject {
    
    @Id
    @Column(name = "ID")
    private String id;
    
    @Column(name = "NAME")
    private String name;
    
    @Column(name="DESCRIPTION")
    private String description;
    
    @ManyToMany(mappedBy = "enrolledSubjects")
    private Set<Student> enrolledStudents = new HashSet<>();
    
    public Subject(){
        
    }

    public Subject(String id, String name, String description) {
        this.id = id;
        this.name = name;
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public Set<Student> getEnrolledStudents() {
        return enrolledStudents;
    }

    public void setEnrolledStudents(Set<Student> enrolledStudents) {
        this.enrolledStudents = enrolledStudents;
    }

    
    
}
