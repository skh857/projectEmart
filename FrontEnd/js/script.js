let idInput = document.querySelector("#user_id");
let pwInput = document.querySelector("#user_pw1");
let pwChecking = document.querySelector("#user_pw2");
let nameCheck = document.querySelector("#user_name");

const check = true;
const container = document.querySelector('.headerHidden');
container.classList.add('titleEvent');

function on() {
    container.classList.remove('titleEvent');
}

function off() {
	container.classList.add('titleEvent');
}

function checkId(){
	if (check && (idInput.value == null || idInput.value.length < 4 || idInput.value.length > 15)) {
        alert("아이디는 4~15자리의 문자나 숫자로 입력해주세요.");
        idInput.select();
        check = false;
    }
}

function checkPw1(){
	if (check && pwInput.value.length < 8) {
        alert("비밀번호는 8자리 이상 입력해야합니다.");
        pwInput.value="";
        check = false;
    }
}

function checkPw2() {
    if (check && pwInput.value != pwChecking.value){
        alert("비밀번호가 일치하지 않습니다.");
        pwChecking.value="";
        check = false;
    }
}

function checkName() {
    if (check && nameCheck.value == null){
        alert("이름을 입력하세요");
        nameCheck.value="";
        check = false;
    }
}

function checkAll() {
    checkId();
    checkPw1();
    checkPw2();
    checkName();
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