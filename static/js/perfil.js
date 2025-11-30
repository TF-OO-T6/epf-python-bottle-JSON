function abrirTab(evt, nomeAba) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tab-conteudo");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
    tabcontent[i].classList.remove("active");
  }
  tablinks = document.getElementsByClassName("menu-item");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(nomeAba).style.display = "block";
  evt.currentTarget.className += " active";
}
