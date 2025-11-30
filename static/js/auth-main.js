const loginAccessRegister = document.getElementById("loginAccessRegister"),
  buttonRegister = document.getElementById("loginButtonRegister"),
  buttonAccess = document.getElementById("loginButtonAccess");

buttonRegister.addEventListener("click", () => {
  loginAccessRegister.classList.add("active");
});

buttonAccess.addEventListener("click", () => {
  loginAccessRegister.classList.remove("active");
});
