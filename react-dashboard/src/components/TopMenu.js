import React from "react";
import '../css/TopMenu.css'

export default function TopMenu() {
    let botones = [ "Index", "Productos", "Usuario"]
    return (
        <nav>
            {botones.map((nombre, i) => {
                return(
                    <button  key={nombre + i} className="btn btn-info">
                        {nombre}
                    </button>)
            })}
        </nav>
    );
}