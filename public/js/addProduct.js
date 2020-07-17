window.addEventListener("load", function () {
    let additionalInfo = document.getElementById("additionalInfo");
    let categoryBox = document.getElementById("id_categoria");
    let vistaParcial = document.createElement("nav");
    let category = categoryBox.options.selectedIndex;
    let categoryList = ["addBlister","addCarta","addDado","addFolio","addPack"]


    vistaParcial.innerHTML = `"<%- include("partials/${categoryList[category]}") %>`
    additionalInfo.appendChild(vistaParcial)


    categoryBox.addEventListener("change", function () {
        category = categoryBox.options.selectedIndex;
        console.log(additionalInfo)
        additionalInfo.removeChild(vistaParcial);
        let partialLink = `<%- include("partials/${categoryList[category]}") %>`;
        vistaParcial.innerHTML = partialLink;
        additionalInfo.appendChild(vistaParcial)
    })
})