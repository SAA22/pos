/*=============================================
LOAD DYNAMIC PRODUCTS TABLE
=============================================*/

var table = $('.tablaProductos').DataTable({

  "ajax":"ajax/datatable-products.ajax.php",
  "columnDefs":[

      {
        "targets": -9,
        "data": null,
        "defaultContent": '<img class="img-thumbnail imgTable" width="40px">'
      
      },

      {
        "targets": -1,
        "data": null,
        "defaultContent": '<div class="btn-group"><button class=" btn btn-warning btnEditProduct" idProduct data-toggle="modal" data-target="#modalEditProduct"><i class="fa fa-pencil"></i></buttn><button class="btn btn danger btnDeleteProduct" idProduct><i class="fa fa-times"></i></button></div>'
      }
  ],

  "language":{

    "sProcessing": "Procesing...",
    "sLengthMenu": "Monstrar_Menu_registros",
    "sEmptyTable": "Ninguna data disponible en esta table",
    "sInfo": "Monstrando registra del_Start",
    "sInfoEmpty":"",
    "sInfoFiltered":"",
    "sInfoPostFix":"",
    "sSearch":"Buscar",
    "sUrl":"",
    "sInfoThousands":"Cargando...",
    "oPaginate":{
    "sFirst": "Primero",
    "sLast":  "Ultimo",
    "sNext":  "Siguante",
    "sPrevious": "Anterior",
    "":"",
  },
  "oAria":{
        "sSortAscending":  ": Activar ",
        "sSortDescending": ": Activar para ordenar "
  }

}

})






var hiddenProfile = $('#hiddenProfile').val();

$('.productsTable').DataTable({
  "ajax": "ajax/datatable-products.ajax.php?hiddenProfile="+hiddenProfile, 
  "deferRender": true,
  "retrieve": true,
  "processing": true
});



/*=============================================
ADDING SELLING PRICE
=============================================*/
$("#newBuyingPrice, #editBuyingPrice").change(function(){

  if((".percentage").prop("checked")){

    var valuePercentage = $(".newPercentage").val();
    
    var percentage = Number(($("#newBuyingPrice").val()*valuePercentage/100))+Number($("#newBuyingPrice").val());

    var editPercentage = Number(($("#editBuyingPrice").val()*valuePercentage/100))+Number($("#editBuyingPrice").val());

    $("#newSellingPrice").val(percentage);
    $("#newSellingPrice").prop("readonly",true);

    $("#editSellingPrice").val(editPercentage);
    $("#editSellingPrice").prop("readonly",true);

  }

})

/*=============================================
PERCENTAGE CHANGE
=============================================*/
$(".newPercentage").change(function(){

  if($(".percentage").prop("checked")){

    var valuePercentage = $(this).val();
    
    var percentage = Number(($("#newBuyingPrice").val()*valuePercentage/100))+Number($("#newBuyingPrice").val());

    var editPercentage = Number(($("#editBuyingPrice").val()*valuePercentage/100))+Number($("#editBuyingPrice").val());

    $("#newSellingPrice").val(percentage);
    $("#newSellingPrice").prop("readonly",true);

    $("#editSellingPrice").val(editPercentage);
    $("#editSellingPrice").prop("readonly",true);

  }

})

$(".percentage").on("ifUnchecked",function(){

  $("#newSellingPrice").prop("readonly",false);
  $("#editSellingPrice").prop("readonly",false);

})

$(".percentage").on("ifChecked",function(){

  $("#newSellingPrice").prop("readonly",true);
  $("#editSellingPrice").prop("readonly",true);

})


/*=============================================
UPLOADING PRODUCT IMAGE
=============================================*/

$(".newImage").change(function(){

  var image = this.files[0];
  
  /*=============================================
    WE VALIDATE THAT THE FORMAT IS JPG OR PNG
    =============================================*/

    if(image["type"] != "image/jpeg" && image["type"] != "image/png"){

      $(".newImage").val("");

       swal({
          title: "Eroare la incarcarea imaginii",
          text: "Imaginea trebuie sa fie in format JPG sau PNG!",
          type: "error",
          confirmButtonText: "Inchide!"
        });

    }else if(image["size"] > 2000000){

      $(".newImage").val("");

       swal({
          title: "Eroare la incarcarea imaginii",
          text: "Imaginea nu trebuie sa fie mai mare de 2MB!",
          type: "error",
          confirmButtonText: "Inchide!"
        });

    }else{

      var imageData = new FileReader;
      imageData.readAsDataURL(image);

      $(imageData).on("load", function(event){

        var imagePath = event.target.result;

        $(".preview").attr("src", imagePath);

      })

    }
})


/*=============================================
EDIT PRODUCT
=============================================*/

$(".productsTable tbody").on("click", "button.btnEditProduct", function(){

  var idProduct = $(this).attr("idProduct");
  
  var datum = new FormData();  //  datum -> data
    datum.append("idProduct", idProduct);

     $.ajax({

      url:"ajax/products.ajax.php",
      method: "POST",
      data: datum,  // datum -> data
      cache: false,
      contentType: false,
      processData: false,
      dataType:"json",
      success:function(answer){
        
        // console.log("answer", answer);
          
        var categoryData = new FormData();
        categoryData.append("idCategory",answer["idCategory"]);

         $.ajax({

            url:"ajax/categories.ajax.php",
            method: "POST",
            data: categoryData,
            cache: false,
            contentType: false,
            processData: false,
            dataType:"json",
            success:function(answer){
                
                $("#editCategory").val(answer["id"]);
                $("#editCategory").html(answer["Category"]);

            }

        })

         $("#editCode").val(answer["code"]);

         $("#editDescription").val(answer["description"]);

         $("#editStock").val(answer["stock"]);

         $("#editBuyingPrice").val(answer["buyingPrice"]);

         $("#editSellingPrice").val(answer["sellingPrice"]);

         if(answer["image"] != ""){

            $("#currentImage").val(answer["image"]);

            $(".preview").attr("src",  answer["image"]);

         }

      }

  })

})


/*=============================================
DELETE PRODUCT
=============================================*/

$(".productsTable tbody").on("click", "button.btnDeleteProduct", function(){

  var idProduct = $(this).attr("idProduct");
  var code = $(this).attr("code");
  var image = $(this).attr("image");
  
  swal({

    title: 'Esti sigur ca vrei sa stergi produsul?',
    text: "Daca nu est sigur,poti renunta la actiune!",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    cancelButtonText: 'Inchide',
    confirmButtonText: 'Da, sterge produsul!'
    }).then(function(result){
      if (result.value) {

        window.location = "index.php?route=products&idProduct="+idProduct+"&image="+image+"&code="+code;

      }

    })

})