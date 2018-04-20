package vacations.familyvacation;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WhoWentController {
	@Autowired WhoWentDao whoWentDao;
	
	@RequestMapping(value = "/plotVacation")
	public ModelAndView plotVacation(WhoWent plotToAdd) {
			ModelAndView modelAndView = new ModelAndView();
			whoWentDao.insertPlannedVacation(plotToAdd);
			modelAndView.addObject("w", plotToAdd);
			modelAndView.setViewName("viewAllVacationer");
			return modelAndView;
			}
}
