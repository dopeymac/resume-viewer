package app.resume.model;

import java.io.Serializable;

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
	
	public Resume() {
		
	}

}
