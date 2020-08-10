window.addEventListener("load", function () {
    let formulario = document.getElementById("form");
    formulario.addEventListener("submit", async function (event) {
        // dodge submit, then declare vars
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
        let div_id_pais = document.getElementById("id_pais");
        let problems = 0;

        // modules
        function checkLength(element, node, amount = 3) {
            let error = document.createElement("p");
            if (element.value.length < amount) {
                problems++;
                error.style.color = "red";
                error.innerHTML = `<p style="color:red;font-size:0.8em">El campo requiere un mínimo de ${amount} caracteres.</p>`;
                if (node.firstChild != node.lastChild) {
                    node.replaceChild(error, node.lastChild);
                } else {
                    node.appendChild(error);
                }
            } else {
                if (node.lastChild.nodeName == "P") {
                    node.removeChild(node.lastChild);
                }
            }
        }
        function checkExistence(element, node) {
            let error = document.createElement("p");
            if (element.value.trim().length == 0) {
                problems++;
                error.style.color = "red";
                error.innerHTML = `<p style="color:red;font-size:0.8em">Por favor complete el campo.</p>`;
                node.appendChild(error);
            } else {
                if (node.lastChild.nodeName == "P") {
                    node.removeChild(node.lastChild);
                }
            }
        }
        function checkDate(element, node) {
            var minYear = new Date("1900-01-01");
            let error = document.createElement("p");
            node.removeChild(node.lastChild);
            if (element.valueAsDate < minYear) {
                problems++;
                error.style.color = "red";
                error.innerHTML = `<p style="color:red;font-size:0.8em">No aceptamos liches. Ingrese otra edad.</p>`;
                node.appendChild(error);
            } else {
                let today = new Date();
                if (element.valueAsDate > today) {
                    problems++;
                    error.style.color = "red";
                    error.innerHTML = `<p style="color:red;font-size:0.8em">No aceptamos viajeros del tiempo. Ingrese otra edad.</p>`;
                    node.appendChild(error);
                }
            }
        }

        // main function start
        checkLength(nombre_de_usuario, div_nombre_de_usuario);
        checkLength(email, div_email, 6);
        checkLength(password, div_password, 8);
        checkLength(pass2, div_pass2, 8);
        checkLength(nombre, div_nombre, 2);
        checkLength(apellido, div_apellido, 2);
        checkExistence(calle, div_calle);
        checkDate(nacimiento, div_nacimiento);
        if (id_pais.selectedIndex > 0 && id_pais.selectedIndex < 101) {
            div_id_pais.removeChild(div_id_pais.lastChild);
        } else {
            let error = document.createElement("p");
            error.style.color = "red";
            error.innerHTML = `<p style="color:red;font-size:0.8em">Por favor seleccione por lo menos una opción fantástica.</p>`;
            div_id_pais.appendChild(error);
        }
        if (password.value != pass2.value) {
            problems++;
            let error = document.createElement("p");
            error.style.color = "red";
            error.innerHTML = `<p style="color:red;font-size:0.8em">Por favor seleccione por lo menos una opción fantástica.</p>`;
            div_pass2.appendChild(error);
        } else {
            div_pass2.removeChild(div_pass2.lastChild);
        }
        if (problems) {
            event.preventDefault();
        }
    });
});
