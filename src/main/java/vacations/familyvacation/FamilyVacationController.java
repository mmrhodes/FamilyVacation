package vacations.familyvacation;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FamilyVacationController {
	@Autowired FamilyVacationDao familyVacationDao;
	@Autowired VacationerDao dao;

	@RequestMapping(value = "/mainMenu")
	public ModelAndView vacationmenu() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mainMenu");
		return modelAndView;
	}

	@RequestMapping(value = "/form")
	public ModelAndView familyvacation() {
		List<Vacationer> allVacationer = dao.getAllVacationer();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("all", allVacationer);
		modelAndView.setViewName("familyvacationForm");
		modelAndView.addObject("familyvacation", new FamilyVacation());
		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processFamilyVacation(FamilyVacation familyvacation) {
		ModelAndView modelAndView = new ModelAndView();
		familyVacationDao.insertFamilyVacation(familyvacation);
		modelAndView.setViewName("familyvacationResult");
		modelAndView.addObject("f", familyvacation);
		return modelAndView;
	}

	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<FamilyVacation> allFamilyVacation = familyVacationDao.getAllFamilyVacation();
		modelAndView.setViewName("viewAllFamilyVacation");
		modelAndView.addObject("all", allFamilyVacation);
		return modelAndView;

	}

	@RequestMapping(value = "/editVacation")
	public ModelAndView editVacation(HttpServletRequest request) {
		List<Vacationer> allVacationer = dao.getAllVacationer();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("all", allVacationer);
		int id = Integer.parseInt(request.getParameter("id"));
		FamilyVacation result = familyVacationDao.searchForVacationById(id);
		modelAndView.setViewName("vacationToEdit");
		modelAndView.addObject("vacation", new FamilyVacation());
		modelAndView.addObject("id", result.getId());
		modelAndView.addObject("location", result.getLocation());
		modelAndView.addObject("event", result.getEvent());
		modelAndView.addObject("vacationdates", result.getVacationdates());
		modelAndView.addObject("cost", result.getCost());
		System.out.println(allVacationer.toString());
		return modelAndView;
	}
	
	@RequestMapping(value = "/updateFamilyVacation")
	public ModelAndView updateFamilyVacation(FamilyVacation familyvacation, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		familyVacationDao.updateFamilyVacation(familyvacation);
		modelAndView.setViewName("viewAllFamilyVacation");
		return modelAndView;
	}
	
	@RequestMapping(value = "/plotVacation")
	public ModelAndView plotVacation()
}
