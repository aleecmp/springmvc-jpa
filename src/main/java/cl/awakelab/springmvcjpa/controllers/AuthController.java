package cl.awakelab.springmvcjpa.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthController {

	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);

	@RequestMapping(value = "/login")
	public ModelAndView login() {
		logger.info("Login page requested");
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/error")
	public ModelAndView errorLogin() {
		return new ModelAndView("login", "error", "true");
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			SecurityContextHolder.getContext().setAuthentication(null);
		}

		return new ModelAndView("redirect:/login?logout");
	}

}
