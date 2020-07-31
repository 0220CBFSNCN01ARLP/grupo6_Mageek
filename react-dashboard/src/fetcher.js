export async function getProducts() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    return productsResult.products;
}
export async function getSales() {
    const productList = await fetch("http://localhost:3000/api/productos");
}
export async function getUsers() {
    const productList = await fetch("http://localhost:3000/api/usuarios");
}
