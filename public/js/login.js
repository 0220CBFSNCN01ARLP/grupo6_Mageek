window.addEventListener("load", function () {
    let formulario = document.getElementById("form");
    console.log(formulario)
    formulario.addEventListener("submit", async function (event) {
        event.preventDefault();
        let usuario = document.getElementById("logInfo");
        let password = document.getElementById("password");
        let listaErrores = "";
        let errores = document.createElement("p");
        // validar usuario
        if (usuario.value) {
            // validar password
            if (password.value.length>=4) {
                // si coincide, el formulario avanza.
                formulario.submit();
             } else {
                listaErrores += `La contraseña es demasiado corta.`;
                };
            } else {
                listaErrores += `no such user {blank}.`;
        };
        errores.innerHTML = `<p style="color:red;font-size:0.8em">${listaErrores}</p>`;
        // errores.classList.add("d-block");
        // console.log(errores);
        let titulo = document.getElementById("campoContraseña");
        if (titulo.firstChild != titulo.lastChild) {
            titulo.replaceChild(errores,titulo.lastChild);
        } else {
            titulo.appendChild(errores);
        }
    })
})