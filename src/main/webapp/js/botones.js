function btnVolver() {
	window.history.back();
}

function borrarFiltro() {
    document.getElementById('temabuscar').value = '';
    
    document.getElementById('searchForm').submit();
}