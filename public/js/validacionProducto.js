window.addEventListener("load", function () {
    let formulario = document.getElementById("mainForm");
    formulario.addEventListener("submit", async function (event) {
        // vars
        event.preventDefault();
        let nombre = document.getElementById("nombre");
        let div_nombre = document.getElementById("div-nombre");
        let precio = document.getElementById("precio");
        let div_precio = document.getElementById("div-precio");
        let stock = document.getElementById("stock");
        let div_stock = document.getElementById("div-stock");
        let descripcion = document.getElementById("descripcion");
        let div_descripcion = document.getElementById("div-descripcion");
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
            node.removeChild(node.lastChild);
            let error = document.createElement("p");
            if (element.value == 0) {
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
        // main function start
        checkLength(nombre, div_nombre);
        checkLength(descripcion, div_descripcion, 20);
        checkExistence(precio, div_precio);
        checkExistence(stock, div_stock);
        if (!problems) {
            event.submit();
        }
    });
});
