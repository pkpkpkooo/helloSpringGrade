package kr.ac.hansung.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@AllArgsConstructor
public class Offer {
	

	private int id;
	private String term;
	private String year;
	private String code;
	private String subject;
	private String classification;
	private int credit;
	
	public Offer(){
		
	}

}
