package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.OfferDAO;
import kr.ac.hansung.model.Offer;

@Service
public class OffersService {
	
	private OfferDAO offerDAO;

	@Autowired
	public void setOfferDAO(OfferDAO offerDAO) {
		this.offerDAO = offerDAO;
	}

	public List<Offer> getCurrent() {

		
		return offerDAO.getOffers();
	}
	
	
	
}
