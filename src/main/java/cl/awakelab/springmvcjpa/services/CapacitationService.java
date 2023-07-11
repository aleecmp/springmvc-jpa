package cl.awakelab.springmvcjpa.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.springmvcjpa.models.Capacitation;
import cl.awakelab.springmvcjpa.repositories.ICapacitationRepository;

@Service
public class CapacitationService {

	@Autowired
	private ICapacitationRepository capacitationRepository;

	public CapacitationService() {

	}

	public List<Capacitation> getAllCapacitations() {
		return capacitationRepository.findAll();
	}

	public Capacitation createCapacitation(Capacitation capacitation) {
		return capacitationRepository.save(capacitation);
	}

}
