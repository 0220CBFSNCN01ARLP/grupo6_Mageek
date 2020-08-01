export async function getProducts() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    return productsResult.products;
}
// export async function getSales() {
//     const productList = await fetch("http://localhost:3000/api/productos");
// }
export async function getLastProduct() {
    const productList = await fetch("http://localhost:3000/api/productos");
    const productsResult = await productList.json();
    return productsResult.products.pop();
}
export async function getUsers() {
    const userList = await fetch("http://localhost:3000/api/usuarios");
    const userResult = await userList.json();
    return userResult.users;
}
