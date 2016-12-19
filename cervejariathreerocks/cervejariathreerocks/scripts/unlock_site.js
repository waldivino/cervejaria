window.onbeforeunload = function () {
    var e = e || window.event;

    var pageName = window.location.pathname;
    WcfPageLock.DesbloquearPagina(pageName.substring(pageName.lastIndexOf('/') + 1));

    

    if (navigator.appName != 'Microsoft Internet Explorer') {
        return 'O acesso às páginas bloqueadas por esta foi liberado!';
    }
 
    //// For IE and Firefox
    //if (e) {
    //    e.returnValue = 'O acesso às páginas bloqueadas por esta foi liberado!';
    //}

    //// For Chrome and Safari
    //return 'O acesso às páginas bloqueadas por esta foi liberado!';
};