package vacations.familyvacation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class VacationerController {
	@Autowired VacationerDao dao;
	@Autowired FamilyVacationDao familyVacationDao;
	

	@RequestMapping(value="/personForm")
	public ModelAndView vacationer() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("personForm");
		modelAndView.addObject("vacationer", new Vacationer());
		return modelAndView;	
}


	@RequestMapping(value = "/personResult")
	public ModelAndView processVacationer(Vacationer vacationer) {
		ModelAndView modelAndView = new ModelAndView();
		dao.insertVacationer(vacationer);
		modelAndView.setViewName("personForm");
		modelAndView.addObject("v", vacationer);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllPeople")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Vacationer> allVacationer = dao.getAllVacationer();
		modelAndView.setViewName("viewAllVacationer");
		modelAndView.addObject("all", allVacationer);
		return modelAndView;

	}
	
	@RequestMapping(value = "/goOnVacation")
	public ModelAndView viewAllVacations () {
	ModelAndView modelAndView = new ModelAndView();
	// modelAndView.addObject("id", result.getId());
	List<FamilyVacation> allFamilyVacation = familyVacationDao.getAllFamilyVacation();
	modelAndView.setViewName("goOnVacation");
	modelAndView.addObject("all", allFamilyVacation);
	return modelAndView;
	}
}
