package vacations.familyvacation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FamilyVacationController {
	@Autowired FamilyVacationDao dao;
	
	@RequestMapping(value="/form")
	public ModelAndView familyvacation() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("familyvacationForm");
		modelAndView.addObject("familyvacation", new FamilyVacation());
		return modelAndView;
		
	
		
}

	@RequestMapping(value = "/result")
	public ModelAndView processFamilyVacation(FamilyVacation familyvacation) {
		ModelAndView modelAndView = new ModelAndView();
		dao.insertFamilyVacation(familyvacation);
		modelAndView.setViewName("familyvacationResult");
		modelAndView.addObject("f", familyvacation);
		return modelAndView;
	}

	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<FamilyVacation> allFamilyVacation = dao.getAllFamilyVacation();
		modelAndView.setViewName("viewAllFamilyVacation");
		modelAndView.addObject("all", allFamilyVacation);
		return modelAndView;

	}

	@Bean
	public FamilyVacationDao dao() {
		FamilyVacationDao bean = new FamilyVacationDao();
	 	return bean;
	 }
}
