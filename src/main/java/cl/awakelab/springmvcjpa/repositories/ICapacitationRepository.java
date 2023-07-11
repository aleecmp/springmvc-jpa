package cl.awakelab.springmvcjpa.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.awakelab.springmvcjpa.models.Capacitation;

public interface ICapacitationRepository extends JpaRepository<Capacitation, Integer> {

}
