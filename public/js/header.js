window.addEventListener("load", event => {
    let cartCounter = document.getElementById("cartCounter");
    let cartLink = document.getElementById("cartLink");
    let cartButtons = document.getElementsByClassName("cartButton");
    console.log(cartButtons);
    for (button of cartButtons) {
        button.addEventListener("click", e => {
            e.preventDefault();
            let link = button.parentElement.href.slice(-3);
            if (link[0] == "/") { link = link.slice(-2) };
            if (sessionStorage.getItem(link)) {
                let value = sessionStorage.getItem(link);
                value++;
                sessionStorage.setItem(link, value);
            } else {
                sessionStorage.setItem(link, 1);
            };
            
        });
    };




    let searchForm = document.getElementById("searchBox");
    let searchButton = document.getElementById("searchButton");
    let searchQuery = document.getElementById("searchQuery");
    console.log(searchButton);
    searchButton.addEventListener("click", e => {
        if (searchQuery.value){
            searchForm.action = `http://localhost:3000/product?searchQuery=${searchQuery.value}`
            searchForm.submit()
        } else {
            searchForm.action = `http://localhost:3000/product`
            searchForm.submit()

        }
    })
    searchForm.addEventListener("submit", e => {
        // e.preventDefault();
    })
});