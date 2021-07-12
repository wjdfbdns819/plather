package com.jhm.plather.model;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {

    private String m_id; //VARCHAR(50) NOT NULL, 
    private String m_pw; //VARCHAR(50) NOT NULL, 
    private String m_nickname; //VARCHAR(50) NOT NULL, 
    private String m_birth; //INT, 
    private String m_name; //VARCHAR(50), 
    private String m_gender; //VARCHAR(10), 
    private int m_profile; //INT
    private int m_level; //INT DEFAULT 0
    
}
