<?php
include "inc/promotionsC.php";
if (isset($_POST["idProd"]) and isset($_POST["taux"]) and isset($_POST["datefin"]) and isset($_POST["nom"]))
{
    $f=new promotionC();
    $f->ajouterpromotion($_POST["taux"],$_POST["idProd"],$_POST["datefin"],$_POST["nom"]);
    header("location:promotion.php");


}
else
{
    echo"thabet rou7ek";
}