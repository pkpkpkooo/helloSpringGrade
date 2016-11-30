package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kr.ac.hansung.model.Offer;

public class OfferMapper implements RowMapper<Offer>{

	public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Offer offer = new Offer();
		offer.setId(rs.getInt("id"));
		offer.setYear(rs.getString("year"));
		offer.setSubject(rs.getString("subject"));
		offer.setCode(rs.getString("code"));
		offer.setTerm(rs.getString("term"));
		offer.setClassification(rs.getString("classification"));
		offer.setCredit(rs.getInt("credit"));
		return offer;
	}

}
