package kr.ac.hansung.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Offer;

@Repository
public class OfferDAO {
	private JdbcTemplate jdbcTemplateObject;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	
	public int getRowCount(){
		String sqlStatement = "select count(*) from grade";
		return jdbcTemplateObject.queryForObject(sqlStatement, Integer.class);
	}
	
	//querying and returning a single object
	public Offer getOffer(String name){
		String sqlStatement = "select * from grade where name=?";
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[] { name }, new OfferMapper());
	}

	// querying and returning a multiple object
	public List<Offer> getOffers() {
		String sqlStatement = "select * from grade";
		return jdbcTemplateObject.query(sqlStatement, new OfferMapper());
	}
	
	public boolean insert(Offer offer){
		
		String year = offer.getYear();
		String term = offer.getTerm();
		String code = offer.getCode();
		String subject = offer.getSubject();
		String classification = offer.getClassification();
		int credit = offer.getCredit();
		
		String sqlStatement = "insert into grade (year,term,code,subject,classification,credit) values(?,?,?,?,?,?)";
		return (jdbcTemplateObject.update(sqlStatement, new Object[]{year,term,code,subject,classification,credit}) == 1);
	}
	
	public boolean update(Offer offer){
		
		int id = offer.getId();
		String year = offer.getYear();
		String term = offer.getTerm();
		String code = offer.getCode();
		String subject = offer.getSubject();
		String classification = offer.getClassification();
		int credit = offer.getCredit();
		
		String sqlStatement = "update grade set year=?,term=?,code=?,subject=?,classification=?,credit=? where id=?";
		return (jdbcTemplateObject.update(sqlStatement, new Object[]{year,term,code,subject,classification,credit,id}) == 1);
	}
	
	public boolean delete(int id){
		
		String sqlStatement = "delete from grade where id=?";
		return (jdbcTemplateObject.update(sqlStatement, new Object[]{id}) == 1);
	}
}
