<?php
include "inc/header.php";
include 'inc/promotionsC.php';
$promotionC=new promotionC();
$listeprods=$promotionC->getProds();
$prom=$promotionC->getProms();

?>

<div class="breadcrumbs">
    <div class="breadcrumbs-inner">
        <div class="row m-0">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">proms</a></li>
                            <li class="active">affich proms</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-lg-12">
                <div class="card row">
                    <div class="card-header">
                        <strong class="card-title col-6">Prom List</strong>
                    </div>
                    <div class="table-stats order-table ov-h">
                        <table id="ads" class="table table-hover">
                            <thead>
                            <tr>

                                <th>id produit</th>
                                <th>image</th>
                                <th>nom Produit</th>
                                <th>etat</th>
                                <th>Date fin</th>
                                <th style="width: 200px;">editer</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?PHP
                            $x=1;
                            foreach($listeprods as $row){
                                echo '
                                                    <tr>
                                                        <td>'.$row["refp"].'</td>
                                                        <td><img class="rounded-circle" width="90px" src="images/prod/'.$row["image"].'" alt="img_prod"></td>
                                                        <td>'.$row["nom"].'</td>
                                                        <td>';if($row["etat"]){echo '<span class="badge badge-success">en promotion</span>';}else {echo '<span class="badge badge-warning"> pas en promotion</span>';} echo'</td>
                                                        <td>'; if($row["etat"]){echo $row["date_fin"];} echo'</td>
                                                        <td>';
                                if($row["etat"])
                                {
                                    echo '
                                                        <div class="text-center">
                                                            <form action="supprimerpromotion.php" method="post">
                                                                <input type="hidden" name="idProduit" value="'.$row["refp"].'">
                                                                <button  class="btn-sm btn-outline-info" type="submit">supprimer Promotion</button>
                                                            </form>
                                                        </div>
                                                        ';
                                }
                                else
                                {
                                    echo '
                                                         
                                            <div class="text-center">
                                                <a href="" class="btn-sm btn-primary" data-toggle="modal" data-target="#modalRegisterForm'.$x.'">ajouter promotion</a>
                                            </div>
                                            <div class="modal fade" id="modalRegisterForm'.$x.'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header text-center">
                                            <h4 class="modal-title w-100 font-weight-bold">Add Promotion</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                          </div>
                                          <form action="ajouterProm.php" method="post">
                                            <div class="modal-body mx-3">
                                            <div class="md-form mb-5">
                                              <p class="text-center"> Product Name </p>
                                              <input type="text" id="orangeForm-name" name="" class="form-control validate" value="#'.$row["refp"].'---'.$row["nom"].'" disabled>
                                            </div>
                                            <div class="md-form mb-5">
                                              <p class="text-center">Nom Promotion </p>
                                              <input type="text" id="orangeForm-name" name="nom" class="form-control validate" value="">

                                            </div>
                                            <div class="md-form mb-5">
                                              <p class="text-center">Taux Promotion </p>
                                              <input type="text" id="orangeForm-name" name="taux" class="form-control validate" value="">

                                            </div>
                                            <div class="md-form mb-5">
                                              <p class="text-center"> Date fin</p>
                                              <input type="date" id="orangeForm-name" name="datefin" class="form-control validate" value="">
                                            </div>
                                            <input type="hidden" name="idProd" value="'.$row["refp"].'">
                                          </div>
                                          <div class="modal-footer d-flex justify-content-center">
                                            <input type="submit" class="btn btn-danger" value="Confirm">
                                            <input type="button" class="btn btn-success" data-dismiss="modal" aria-label="Close" value="Cancel">

                                          </div>
                                          </form>
                                        </div>
                                      </div>
                                    </div>
                                        
                                                         ';
                                }
                                echo '</td>
                                                    </tr>
                                                    ';
                                $x++;
                            }
                            ?>

                            </tbody>

                        </table>
                    </div> <!-- /.table-stats -->
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->
<?php
include "inc/footer.php";
?>

