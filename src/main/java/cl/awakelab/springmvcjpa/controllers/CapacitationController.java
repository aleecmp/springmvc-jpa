package cl.awakelab.springmvcjpa.controllers;

import java.util.List;

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

	@Autowired
	private CapacitationService capacitationService;

	@RequestMapping(path = "/list-capacitations", method = RequestMethod.GET)
	public String getAllCapacitations(Model model) {
		List<Capacitation> capacitations = capacitationService.getAllCapacitations();
		model.addAttribute("capacitations", capacitations);
		return "list-capacitations";
	}

	@RequestMapping(path = "/create-capacitation", method = RequestMethod.GET)
	public String showCreateForm(Model model) {
		model.addAttribute("capacitation", new Capacitation());
		return "create-capacitation";
	}

	@RequestMapping(path = "/create-capacitation", method = RequestMethod.POST)
	public String createCapacitation(@ModelAttribute("capacitation") Capacitation capacitacion) {
		capacitationService.createCapacitation(capacitacion);

		return "redirect:/list-capacitations";
	}
}
