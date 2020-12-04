//< script type =" text / javascript ">
function writeData (id_producto, nombre , unidades , valor_unitario ,
categoria ) {
        firebase.database().ref('productos/' + id_producto).set({
          nombre: nombre,
          unidades: unidades,
          valor_unitario: valor_unitario,
          categoria: categoria
        });      
}
//</ script >
