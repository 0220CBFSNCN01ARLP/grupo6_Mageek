window.addEventListener("load", function () {
    // load categories, forms, iterate on them
    let categoryBox = document.getElementById("id_categoria");
    let category = categoryBox.options.selectedIndex; //returns 0-4
    let partialForms = document.getElementsByClassName("hide");
    for (let i = 0; i != partialForms.length; i++) {
        if (i != category) {
            console.log(partialForms[i].style);
            console.log(`ends category ${i}, ${category}`)
            partialForms[i].style.display = "none"
        }
    };
    categoryBox.addEventListener("change", function () {
        console.log(partialForms[category]);

        partialForms[category].style.display = "none";
        category = categoryBox.options.selectedIndex;
        partialForms[category].style.display = "block";
    });
});
