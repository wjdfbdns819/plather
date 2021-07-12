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
public class ScoreDTO {

	private Long sc_seq; // 글번호
	private String sc_stnum; // 학번
	private String sc_stname; // 이름
	private String sc_stdept; // 전공
	private String sc_stgrade;
	private String sc_sbcode; // 과목코드
	private String sc_sbname; // 과목이름
	
	private int sc_score;
}
