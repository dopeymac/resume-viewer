package app.resume.model;

import java.io.Serializable;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Resume implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6060335415413685174L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private Long id;
	
	@Column
	private String firstName;
	
	@Column
	private String lastName;
	
	@Column
	private String firstCompany;
	
	@Column
	private Date startDate;
	
	@Column
	private String jobDescription;
	
	
	public Resume() {
		
	}

	public Resume(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
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

	public String getFirstCompany() {
		return firstCompany;
	}

	public void setFirstCompany(String firstCompany) {
		this.firstCompany = firstCompany;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	
	public String getCandidate() {
		return this.firstName + " " + this.lastName;
	}
	
	public String getFormattedStartDate() {
		Format formatter = new SimpleDateFormat("MM/dd/yyyy");
		return formatter.format(this.startDate);
	}

}
