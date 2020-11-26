/*=============================================
EDIT CATEGORY
=============================================*/

$(".tables").on("click", ".btnEditCategory", function(){

	var idCategory = $(this).attr("idCategory");

	var datum = new FormData();
	datum.append("idCategory", idCategory);

	$.ajax({
		url: "ajax/categories.ajax.php",
		method: "POST",
      	data: datum,
      	cache: false,
     	contentType: false,
     	processData: false,
     	dataType:"json",
     	success: function(answer){
     		
     		// console.log("answer", answer);

     		$("#editCategory").val(answer["Category"]);
     		$("#idCategory").val(answer["id"]);

     	}

	})

})

/*=============================================
DELETE CATEGORY
=============================================*/
$(".tables").on("click", ".btnDeleteCategory", function(){

	 var idCategory = $(this).attr("idCategory");

	 swal({
	 	title: 'E&#351;ti sigur c&#259; vrei s&#259; &#351;tergi categoria?',
		text: "Dacă nu ești sigur, poți renunța!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		cancelButtonText: '&#206;nchide',
		confirmButtonText: 'Da, &#351;terge categoria!'
	 }).then(function(result){

	 	if(result.value){

	 		window.location = "index.php?route=categories&idCategory="+idCategory;

	 	}

	 })

})