package vacations.familyvacation;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FamilyVacationController {
	@RequestMapping(value = "/form")
	public ModelAndView familyvacation() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("familyvacationForm");
		modelAndView.addObject("familyvacation", new FamilyVacation());
		
		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processFamilyVacation(FamilyVacation familyvacation) {
		System.out.println("In ProcessFamilyVacation");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertFamilyVacation(familyvacation);
		System.out.println("Value in getLocation" + familyvacation.getLocation());
		modelAndView.setViewName("familyvacationResult");
		modelAndView.addObject("F", familyvacation);
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
