const container = document.querySelector('.headerHidden');
container.classList.add('titleEvent');

function on() {
    container.classList.remove('titleEvent');
}

function off() {
	container.classList.add('titleEvent');
}

const iOn1 = document.querySelector(".iOn");
const iOff1 = document.querySelector(".iOff");

iOn1.addEventListener("mouseover", function() {
    iOn1.style.display = "none";
    iOff1.style.display = "inline";
});

iOff1.addEventListener("mouseleave", function() {
    iOn1.style.display = "inline";
    iOff1.style.display = "none";
});

