export async function getProducts() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    return productsResult.data;
}
export async function getCategoryAmounts() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    return productsResult.metadata.countByCategory;
}
export async function getSales() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    let capital = 0;
    productsResult.data.map(product => {
        capital += product.stock * product.precio;
    })
    capital = Math.trunc(Number(capital));
    return capital.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}
export async function getLastProduct() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    return productsResult.data.pop();
}
export async function getUsers() {
    const userList = await fetch("http://localhost:3000/api/usuarios");
    const userResult = await userList.json();
    return userResult.data;
}
