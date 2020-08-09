window.addEventListener("load", (event) => {
    let mainDiv = document.getElementById("mainDiv");
    console.log(mainDiv);
    let deleteButton =
        '<button id="product-delete-btn" class="btn btn-danger">Borrar producto <i class="fa fa-trashcan"></i></button>';
    if (userLoggedStatus.userType == 2) {
        mainDiv.appendChild(deleteButton);
    }

});
