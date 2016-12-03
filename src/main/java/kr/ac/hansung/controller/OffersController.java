package kr.ac.hansung.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.model.Offer;
import kr.ac.hansung.service.OffersService;

@Controller
public class OffersController {

	private OffersService offersService;

	@Autowired
	public void setOffersService(OffersService offersService) {
		this.offersService = offersService;
	}

	// 학기별 이수 학점 조회
	@RequestMapping(value = "/checkbyterm", method = { RequestMethod.GET })
	public String checkingByTerm(Model model, @RequestParam(value = "term") int term) {

		List<Offer>[] offers = new List[8];
		int[] credits = new int[8];
		int[] years = new int[8];
		int[] terms = new int[8];
		int i = 0;
		// int term = (int) rq.getAttribute("term");
		for (int y = 2011; y <= 2016; y++) {
			for (int t = 1; t <= 2; t++) {
				// if(y == 2016 && t == 2) break;
				// 해당년도 해당학기에 들은 과목들
				offers[i] = offersService.getCBT(Integer.toString(y), Integer.toString(t));
				years[i] = y;
				terms[i] = t;
				System.out.println(offers[i].toString());
				Iterator<Offer> it = offers[i].iterator();
				while (it.hasNext()) {
					credits[i] += it.next().getCredit(); // 해당학기 과목들의 학점합계
					// System.out.println(credits[i]);
				}
				System.out.println(credits[i]);
				if (credits[i] > 0)
					i++;
			}
		}
		model.addAttribute("years", years);
		model.addAttribute("terms", terms);
		model.addAttribute("credits", credits);
		model.addAttribute("offers", offers);
		model.addAttribute("term", term);
		return "checkbyterm";
	}

	// 이수 구분별 학점 조회
	@RequestMapping("/checkbyclassification")
	public String checkingByClassification(Model model) {
		int[] classifications = new int[8];
		String[] text = { "교필", "핵교A", "핵교B", "일교", "전지", "전기", "전선" };

		for (int i = 0; i < 7; i++) {
			classifications[i] = offersService.getCBC(text[i]);
			classifications[7] += classifications[i];
		}

		model.addAttribute("classifications", classifications);
		return "checkbyclassification";
	}

	@RequestMapping(value = "/courseregister", method = { RequestMethod.GET })
	public String courseRegister(Model model, HttpServletRequest rq) {
		return "courseregister";
	}

	@RequestMapping(value = "/registed", method = RequestMethod.GET)
	public String registed(Model model, HttpServletRequest rq) {
		List<Offer> offers = new ArrayList<Offer>();
		if (rq.getParameter("isCheck").toString().equals("1")) {
			offers = offersService.getCBT("2017", "1");
		} else {

			int i = 1;
			System.out.println(rq.getParameter("subject" + Integer.toString(i)).toString()
					+ rq.getParameter("code" + Integer.toString(i)).toString()
					+ rq.getParameter("classification" + Integer.toString(i)).toString()
					+ rq.getParameter("credit" + Integer.toString(i)).toString());

			while (rq.getParameter("subject" + Integer.toString(i)) != null) {
				try {
					offers.add(new Offer(0, "1", "2017", rq.getParameter("code" + Integer.toString(i)).toString(),
							rq.getParameter("subject" + Integer.toString(i)).toString(),
							rq.getParameter("classification" + Integer.toString(i)).toString(),
							Integer.parseInt(rq.getParameter("credit" + Integer.toString(i)))));

					System.out.println(rq.getParameter("subject" + Integer.toString(i)).toString()
							+ rq.getParameter("code" + Integer.toString(i)).toString()
							+ rq.getParameter("classification" + Integer.toString(i)).toString()
							+ rq.getParameter("credit" + Integer.toString(i)).toString());
				} catch (Exception e) {
					return "registfail";
				}
				i++;
			}
			offersService.deleteBY("2017");

			for (Iterator<Offer> it = offers.iterator(); it.hasNext();)
				offersService.insert(it.next());
		}
		model.addAttribute("offers", offers);

		return "registed";
	}

	@RequestMapping("/createoffer")
	public String createOffer(Model model) {
		return "createoffer";
	}
}
