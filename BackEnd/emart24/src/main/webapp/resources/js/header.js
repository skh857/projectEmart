const container = document.querySelector('.headerHidden');
container.classList.add('titleEvent');

function on() {
    container.classList.remove('titleEvent');
}

function off() {
	container.classList.add('titleEvent');
}
