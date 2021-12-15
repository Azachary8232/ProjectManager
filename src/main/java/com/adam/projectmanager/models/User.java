package com.adam.projectmanager.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="users")
public class User {

	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="A first name is required!")
    @Size(min=1, max=30, message="First Name must be between 1 and 30 characters")
    private String firstName;
    
    @NotEmpty(message="A last name is required!")
    @Size(min=1, max=30, message="Last Name must be between 1 and 30 characters")
    private String lastName;
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @NotEmpty(message="Password is required!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
    private String password;
    
    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
    private String confirm;
    
    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Project> projects;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
	    name = "users_projects", 
	    joinColumns = @JoinColumn(name = "user_id"), 
	    inverseJoinColumns = @JoinColumn(name = "project_id")
    	)
    private List<Project> project;
	

  
    public User() {
		
	}

	public User(
			@NotEmpty(message = "A first name is required!") @Size(min = 1, max = 30, message = "First Name must be between 1 and 30 characters") String firstName,
			@NotEmpty(message = "A last name is required!") @Size(min = 1, max = 30, message = "Last Name must be between 1 and 30 characters") String lastName,
			@NotEmpty(message = "Email is required!") @Email(message = "Please enter a valid email!") String email,
			List<Project> projects, List<Project> project) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.projects = projects;
		this.project = project;
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirm() {
		return confirm;
	}


	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	public List<Project> getProject() {
		return project;
	}

	public void setProject(List<Project> project) {
		this.project = project;
	}
    
    
    
    
    
}
