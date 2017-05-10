$.ajaxSetup({
  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
});
// what data is being transfered
function drag(e, itemID){
    e.dataTransfer.setData("number", itemID);
}

// need to prevent default actions to allow drags
function allowDrop(ev) {
    ev.preventDefault();
}

function drop(e, rowID) {
    e.preventDefault();
    var id = e.dataTransfer.getData("number");
    // need to save the item to the row and reload the rows
    // e.target.appendChild(document.getElementById(data));
    $.ajax({
        url: "/item_set/save_item_to_row",
        method: "POST",
        data : {
            'item_id' : id,
            'row_id' : rowID
        },
        success: function(response){
             console.log(response)
           },
    });
}

function removeStoreIn(e){
    e.preventDefault();
    var id = e.dataTransfer.getData("number");
    // need to save the item to the row and reload the rows
    // e.target.appendChild(document.getElementById(data));
    $.ajax({
        url: "/item_set/delete_store_in",
        method: "POST",
        data : {
            'id' : id
        },
        success: function(response){
             console.log(response)
           },
    });
}

function saveName(row_id, el){
    $.ajax({
        url: "/item_set/save_row_name",
        method: "POST",
        data : {
            'id' : row_id,
            'name' : $(el).val()
        },
        success: function(response){
             console.log(response)
           },
    });
}
    