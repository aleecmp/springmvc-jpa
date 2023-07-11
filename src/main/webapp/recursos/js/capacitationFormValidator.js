// ingreso y validacion de datos para crear capacitaciones
$(document).ready(function() {

	const form = $('#form-capacitation');
	const clientRut = $("#clientRut");
	const day = $("#day");

	// restricción de input #day
	const currentDate = new Date().toISOString().split('T')[0];
	day.attr('min', currentDate);

	const time = $("#time");
	const location = $("#location");
	const duration = $("#duration");
	const attendeesCount = $("#attendeesCount");

	function validateForm() {
		const clientRutValue = clientRut.val();
		const dayValue = day.val();
		const timeValue = time.val();
		const locationValue = location.val();
		const durationValue = duration.val();
		const attendeesCountValue = attendeesCount.val();

		const errors = {};

		const setValid = (element) => {
			element.removeClass('is-invalid');
			element.addClass('is-valid');
		};

		const setInvalid = (element) => {
			element.removeClass('is-valid');
			element.addClass('is-invalid');
		};

		/**
		 * input clientRut validation
		 */
		if (clientRutValue.length == 0) {
			errors['clientRut'] = 'Este campo es obligatorio';
			setInvalid(clientRut);
		} else if (!validateRut(clientRutValue)) {
			errors['clientRut'] = 'El formato del rut es inválido';
			setInvalid(clientRut);
		} else {
			setValid(clientRut);
		}

		/**
		 * input day validation
		 */
		if (dayValue.length == 0) {
			errors['day'] = 'Este campo es obligatorio';
			setInvalid(day);
		} else {
			setValid(day);
		}

		/**
		 * input time validation
		 */
		if (timeValue.length === 0) {
			errors['time'] = 'Este campo es obligatorio';
			setInvalid(time);
		} else {
			const [inputHour, inputMinutes] = timeValue.split(':').map(Number);
			if (inputHour < 8 || inputHour > 22 || (inputHour === 22 && inputMinutes !== 0)) {
				errors['time'] = 'Ingrese una time válida entre las 8:00 y las 22:00';
				setInvalid(time);
			} else {
				setValid(time);
			}
		}

		/**
		 * input location validation
		 */
		if (locationValue.length == 0) {
			errors['location'] = 'Este campo es obligatorio';
			setInvalid(location);
		} else {
			setValid(location);
		}

		/**
		 * input duration validation
		 */
		if (durationValue.length == 0) {
			errors['duration'] = 'Este campo es obligatorio';
			setInvalid(duration);
		} else {
			setValid(duration);
		}

		/**
		 * input cantidad asistentes validation
		 */
		if (attendeesCountValue.length == 0) {
			errors['attendeesCount'] = 'Este campo es obligatorio';
			setInvalid(attendeesCount);
		} else {
			setValid(attendeesCount);
		}

		$.each(errors, function(fieldName, errorMsg) {
			const helpElem = $(`#${fieldName}Help`);
			if (errorMsg) {
				helpElem.text(errorMsg);
				setInvalid(helpElem.parent().find(`#${fieldName}`));
			} else {
				helpElem.text('');
			}
		});

		return Object.values(errors).every((errorMsg) => !errorMsg);
	}

	clientRut.on('input', () => {
		const helpElem = $('#clientRutHelp');
		const clientRutValue = clientRut.val();

		if (clientRutValue.length === 0) {
			helpElem.text('');
			clientRut.removeClass('is-invalid is-valid');
		} else if (!validateRut(clientRutValue)) {
			helpElem.text('El formato del rut es inválido');
			clientRut.removeClass('is-valid');
			clientRut.addClass('is-invalid');
		} else {
			helpElem.text('');
			clientRut.removeClass('is-invalid');
			clientRut.addClass('is-valid');
		}
	});

	day.on('input', () => {
		const helpElem = $('#dayHelp');
		helpElem.text('');
		day.removeClass('is-invalid');
	});

	time.on('input', () => {
		const helpElem = $('#timeHelp');
		helpElem.text('');
		time.removeClass('is-invalid');
	});

	location.on('input', () => {
		const helpElem = $('#locationHelp');
		helpElem.text('');
		location.removeClass('is-invalid');
	});

	duration.on('input', () => {
		const helpElem = $('#durationHelp');
		helpElem.text('');
		duration.removeClass('is-invalid');
	});

	attendeesCount.on('input', () => {
		const helpElem = $('#attendeesCountHelp');
		helpElem.text('');
		attendeesCount.removeClass('is-invalid');
	});

	form.on('submit', (event) => {
		event.preventDefault();
		if (!validateForm()) {
		} else {
			createCapacitacion();
		}
	});

	function validateRut(rut) {
		// validación básica para rut chileno (formato XX.XXX.XXX-Y)
		const rutRegex = /^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9kK]{1}$/;
		return rutRegex.test(rut);
	}

	function createCapacitacion() {
		const form = document.getElementById('form-capacitation');
		form.submit();

	}
});