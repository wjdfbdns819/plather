package com.callor.score.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class SubjectVO {
	
	private String sb_code;	//CHAR(4)	PRIMARY KEY,
	private String sb_name;	//VARCHAR(20)	NOT NULL,	
	private String sb_prof;	//VARCHAR(20)		
}
