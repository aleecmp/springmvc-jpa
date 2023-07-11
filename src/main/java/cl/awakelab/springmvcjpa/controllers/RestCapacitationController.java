package cl.awakelab.springmvcjpa.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.awakelab.springmvcjpa.models.Capacitation;
import cl.awakelab.springmvcjpa.services.CapacitationService;

@RestController
public class RestCapacitationController {

	@Autowired
	private CapacitationService capacitationService;

	// http://localhost:8080/springmvcjpa/api/capacitations
	@RequestMapping(value = "/api/capacitations", headers = "Accept=application/json")
	public List<Capacitation> getCapacitations() {
		return capacitationService.getAllCapacitations();
	}

}
