package cl.awakelab.springmvcjpa.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "capacitations")
public class Capacitation {

	@Id
	@Column(name="id_capacitation")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String clientRut;
	private String day;
	private String time;
	private String location;
	private int duration;
	private int attendeesCount;

	public Capacitation() {

	}

	public Capacitation(String clientRut, String day, String time, String location, int duration, int attendeesCount) {
		this.clientRut = clientRut;
		this.day = day;
		this.time = time;
		this.location = location;
		this.duration = duration;
		this.attendeesCount = attendeesCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClientRut() {
		return clientRut;
	}

	public void setClientRut(String clientRut) {
		this.clientRut = clientRut;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getAttendeesCount() {
		return attendeesCount;
	}

	public void setAttendeesCount(int attendeesCount) {
		this.attendeesCount = attendeesCount;
	}

	@Override
	public String toString() {
		return "Capacitation " + "id: " + id + ", clientRut: " + clientRut + ", day: " + day + ", time: '" + time + '\''
				+ ", location: '" + location + '\'' + ", duration: " + duration + ", attendeesCount: " + attendeesCount;
	}
}
