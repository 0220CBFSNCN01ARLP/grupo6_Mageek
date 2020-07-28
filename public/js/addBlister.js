window.addEventListener("load", () => {
    let mainForm = document.getElementById("mainForm");

    mainForm.addEventListener("submit", function (event) {
        //submit
        event.preventDefault();
        alert("didn't make it");
        console.log(event);
    });
})