window.addEventListener("load", function () {
    let formulario = document.getElementById("form");
    formulario.addEventListener("submit", async function (event) {
        // dodge submit, then declare vars
        event.preventDefault();
        let nombre_de_usuario = document.getElementById("nombre_de_usuario");
        let email = document.getElementById("email");
        let password = document.getElementById("password");
        let pass2 = document.getElementById("pass2");
        let nombre = document.getElementById("nombre");
        let apellido = document.getElementById("apellido");
        let nacimiento = document.getElementById("nacimiento");
        let calle = document.getElementById("calle");
        let id_pais = document.getElementById("id_pais");
        let div_nombre_de_usuario = document.getElementById("div-nombre_de_usuario");
        let div_email = document.getElementById("div-email");
        let div_password = document.getElementById("div-password");
        let div_pass2 = document.getElementById("div-pass2");
        let div_nombre = document.getElementById("div-nombre");
        let div_apellido = document.getElementById("div-apellido");
        let div_nacimiento = document.getElementById("div-nacimiento");
        let div_calle = document.getElementById("div-calle");
        let div_id_pais = document.getElementById("div-id_pais");

        // functions
        function checkLength(element, node, amount = 3) {
            let error = document.createElement("p");
            if (element.value.length < amount) {
                error.style.color = "red";
                error.innerHTML = `<p style="color:red;font-size:0.8em">El campo requiere un mínimo de ${amount} caracteres.</p>`;
                console.log(node.childNodes.length);
                if (node.firstChild != node.lastChild) {
                    node.replaceChild(error, node.lastChild);
                    console.log(node.childNodes.length);
                } else {
                    node.appendChild(error);
                    console.log(node.childNodes.length);
                }
            } else {
                console.log(node);
                if (node.length>2){
                    node.removeChild(node.lastElementChild);
                };
            };
        };
        checkLength(nombre_de_usuario, div_nombre_de_usuario);
        // checkLength(password, div_password, 8);
        // checkLength(nombre, div_nombre, 2);
        // checkLength(apellido, div_apellido);


    });
});
