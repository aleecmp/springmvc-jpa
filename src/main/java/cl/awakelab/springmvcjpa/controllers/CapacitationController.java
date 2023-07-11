package cl.awakelab.springmvcjpa.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.awakelab.springmvcjpa.models.Capacitation;
import cl.awakelab.springmvcjpa.services.CapacitationService;

@Controller
public class CapacitationController {

	private static final Logger logger = LoggerFactory.getLogger(CapacitationController.class);

	@Autowired
	private CapacitationService capacitationService;

	@RequestMapping(path = "/list-capacitations", method = RequestMethod.GET)
	public String getAllCapacitations(Model model) {
		logger.info("Getting all capacitations");
		List<Capacitation> capacitations = capacitationService.getAllCapacitations();
		model.addAttribute("capacitations", capacitations);
		return "list-capacitations";
	}

	@RequestMapping(path = "/create-capacitation", method = RequestMethod.GET)
	public String showCreateForm(Model model) {
		logger.info("Showing create form for capacitation");
		model.addAttribute("capacitation", new Capacitation());
		return "create-capacitation";
	}

	@RequestMapping(path = "/create-capacitation", method = RequestMethod.POST)
	public String createCapacitation(@ModelAttribute("capacitation") Capacitation capacitacion) {
		logger.info("Creating capacitation: {}", capacitacion);
		capacitationService.createCapacitation(capacitacion);

		return "redirect:/list-capacitations";
	}
}
