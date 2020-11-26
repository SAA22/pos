<?php

if($_SESSION["profile"] == "Seller"){

  echo '<script>

    window.location = "home";

  </script>';

  return;

}

?>


<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Administrare Categorie
      </h1>
      <ol class="breadcrumb">
        <li><a href="home"><i class="fa fa-dashboard"></i>Acas&#259;</a></li>
        <li class="active">Panou de Control</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <button class="btn btn-primary" data-toggle="modal" data-target="#addCategories">Adaug&#259; Categorie</button>

        </div>
        <div class="box-body">
          <table class="table table-bordered table-striped dt-responsive tables" width="100%">
         
            <thead>
             
             <tr>
               
               <th style="width:10px">#</th>
               <th>Categorie</th>
               <th>Ac&#355;iune</th>

             </tr> 

            </thead>

            <tbody>
              <?php

                $item = null; 
                $value = null;

                $categories = ControllerCategories::ctrShowCategories($item, $value);

                // var_dump($categories);

                foreach ($categories as $key => $value) {

                  echo '<tr>
                          <td>'.($key+1).'</td>
                          <td >'.$value['Category'].'</td>
                          <td>

                            <div class="btn-group">
                              

                            <button class="btn btn-warning btnEditCategory" idCategory="'.$value["id"].'"   class="edit" data-toggle="modal"
                              data-target="#editCategories" title="Edit" > <i class="fa fa-pencil"></i></button>';

                              if($_SESSION['profile'] == "Administrator") {  

                           echo ' <button class="btn btn-danger btnDeleteCategory" idCategory="'.$value["id"].'" username="'.$value["user"].'" userPhoto="'.$value["photo"].'" class="delete" data-toggle="modal"><i class="fa fa-times"></i></button>';
                          }


                          echo '

                            </div>  

                          </td>

                        </tr>';
                }

              ?>
              
            </tbody>

          </table>



        </div>
      
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>


<!--=====================================
=            module add Categories            =
======================================-->

<!-- Modal -->
<div id="addCategories" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <form role="form" method="POST">
        <div class="modal-header" style="background: #3c8dbc; color: #fff">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Adaug&#259; Categorie</h4>
        </div>
        <div class="modal-body">
          <div class="box-body">

            <!--Input name -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-th"></i></span>
                <input class="form-control input-lg" type="text" name="newCategory" placeholder="Adaug&#259; Categorie" required>
              </div>
            </div>

          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">&#206;nchide</button>
          <button type="submit" class="btn btn-primary">Adaug&#259; Categoria</button>
        </div>
      </form>
    </div>

  </div>
</div>

<?php
  
  $createCategory = new ControllerCategories();
  $createCategory -> ctrCreateCategory();
?>


<!--=====================================
=            module edit Categories            =
======================================-->

<!-- Modal -->
<div id="editCategories" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <form role="form" method="POST">
        <div class="modal-header" style="background: #3c8dbc; color: #fff">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modific&#259; Categoria</h4>
        </div>
        <div class="modal-body">
          <div class="box-body">

            <!--Input name -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-th"></i></span>
                <input class="form-control input-lg" type="text" id="editCategory" name="editCategory" required>
                <input type="hidden" name="idCategory" id="idCategory" required>
              </div>
            </div>

          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">&#206;nchide</button>
          <button type="submit" class="btn btn-primary">Salveaz&#259; modific&#259;rile</button>
        </div>

        <?php
  
          $editCategory = new ControllerCategories();
          $editCategory -> ctrEditCategory();
        ?>
      </form>
    </div>

  </div>
</div>

<?php
  
  $deleteCategory = new ControllerCategories();
  $deleteCategory -> ctrDeleteCategory();
?>