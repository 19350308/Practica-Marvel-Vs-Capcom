const modeloheroes = {
    querygetheroes: "SELECT * FROM personajes",
    querygetheroesByID: `SELECT * FROM personajes WHERE ID = ?`,
    querydeleteheroesByID: `UPDATE personajes SET activo = 'N' WHERE ID = ?`,
    queryheroesExists: `SELECT heroe FROM personajes WHERE heroe = ?`,
    queryaddheroes: `
    INSERT INTO personajes (
        heroe,
        nombre,
        universo,
        habilidad,
        tipo,
        activo
    ) VALUES (
        ?,
        ?,
        ?,
        ?,
        ?,
        ?)`,
    queryGetheroesInfo:
    `SELECT heroe, nombre, universo, habilidad, tipo
            FROM personajes 
            WHERE heroe = ?`,
    queryUpdateByheroes:
    `UPDATE personajes SET  
                nombre = ?,
                universo = ?,
                habilidad = ?,
                tipo = ?
                WHERE heroe = ?`
    }
    
    module.exports = modeloheroes