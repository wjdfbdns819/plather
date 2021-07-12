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
public class ScoreVO {

	private Long sc_seq;	//BIGINT	AUTO_INCREMENT	PRIMARY KEY,
	private String sc_stnum;	//CHAR(8)	NOT NULL,	
	private String sc_sbcode; //CHAR(4)	NOT NULL,	
	private int sc_score;	//INT	NOT NULL
}
