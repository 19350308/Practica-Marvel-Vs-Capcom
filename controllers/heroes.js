const { request, response } = require("express");
const pool = require("../db/connection");
const modeloheroes = require("../models/heroes");

const getheroes = async (req = request, res = response) =>{
    
    
    let conn;
    
    try {
        conn = await pool.getConnection()
        
        const users = await conn.query(modeloheroes.querygetheroes, (error) => {throw new Error(error) })
        
        if (!users) {
            res.status(404).json({msg:"no se encontraron Heroes"})
            return
        }
        res.json({users})
        
    } catch (error) {
        console.log(error)
        res.status(500).json({error})
    }finally{
        if(conn){
            conn.end()
        }
    }
}

const getheroesByID = async (req = request, res = response) =>{
    
    const {id} = req.params
    let conn;
    
    try {
        conn = await pool.getConnection()
        
        const [user] = await conn.query(modeloheroes.querygetheroesByID, [id], (error) => {throw new Error(error) })
        
        if (!user) {
            res.status(404).json({msg: `No se encontró Heroe con el ID ${id}`})
            return
        }
        res.json({user})
        
    } catch (error) {
        console.log(error)
        res.status(500).json({error})
    }finally{
        if(conn){
            conn.end()
        }
    }
}

const deleteheroesByID = async (req = request, res = response) =>{
    
    const {id} = req.query
    let conn;
    
    try {
        conn = await pool.getConnection()
       
        const {affectedRows} = await conn.query(modeloheroes.querydeleteheroesByID, [id], (error) => {throw new Error(error) })
       
        if (!affectedRows === 0) {
            res.status(404).json({msg: `No se pudo eliminar el Heroe con el ID ${id}`})
            return
        }
 
        res.json({msg: `El usuario con ID ${id} se eliminó sastifactoriamente`})
        
    } catch (error) {
        console.log(error)
        res.status(500).json({error})
    }finally{
        if(conn){
            conn.end()
        }
    }
}

const addheroes = async (req = request, res = response) =>{
    
    const {
        heroe,
        nombre,
        universo,
        habilidad,
        tipo,
        activo
    } = req.body

    if (
        !heroe ||
        !nombre ||
        !universo ||
        !habilidad ||
        !tipo ||
        !activo
    ){
        res.status(400).json({msg: "Falta información del Heroe"})
        return
    }

    let conn;
    
    try {
        conn = await pool.getConnection()
        

        const [user] = await conn.query(modeloheroes.queryheroesExists, [heroe])

        if (user) {
            res.status(403).json({msg: `El Heroe ${heroe} ya se encuentra registrado.`})
            return
        }

        const {affectedRows} = await conn.query(modeloheroes.queryaddheroes, 
        [heroe,
        nombre,
        universo,
        habilidad,
        tipo,
        activo
    ], (error) => {throw new Error(error) })
        
        if (!affectedRows === 0) {
            res.status(404).json({msg: `No se pudo agregar el registro del Heroe ${heroe}`})
            return
        }
 
        res.json({msg: `El usuario ${heroe} se agrego sastifactoriamente. `})
        
    } catch (error) {
        console.log(error)
        res.status(500).json({error})
    }finally{
        if(conn){
            conn.end()
        }
    }
}

const updateheroesByUsuario = async (req = request, res = response) =>{
    
    const {
        heroe,
        nombre,
        universo,
        habilidad,
        tipo
    } = req.body

    if (
        !heroe ||
        !nombre ||
        !universo ||
        !habilidad ||
        !tipo
    ) {
        res.status(400).json({msg: "Falta información del heroe"})
        return
    }

    let conn;
    
    try {
        conn = await pool.getConnection()
        

        const [user] = await conn.query(modeloheroes.queryGetheroesInfo, [heroe])
        
        if (!user) {
            res.status(403).json({msg: `El heroe ${heroe}} no se encuentra registrado.`})
            return
        }
         
        const {affectedRows} = await conn.query(modeloheroes.queryUpdateByheroes,
            [
            nombre || user.nombre,
            universo || user.universo,
            habilidad  || user.habilidad,
            tipo  || user.tipo,
            heroe
            ], (error) => {throw new Error(error) })
        
        if (!affectedRows === 0) {
            res.status(404).json({msg: `No se pudo agregar el registro del heroe ${heroe}`})
            return
        }
 
        res.json({msg: `El heroe ${heroe} se actualizó sastifactoriamente. `})
        
    } catch (error) {
        console.log(error)
        res.status(500).json({error})
    }finally{
        if(conn){
            conn.end()
        }
    }
}



module.exports = {getheroes, getheroesByID, deleteheroesByID ,addheroes, updateheroesByUsuario}