<?PHP
include "inc/promotionsC.php";
if (isset($_POST['idProduit'])){


$promotion1C=new promotionC();
$promotion1C->supprimerpromotion($_POST['idProduit']);

header('Location: promotion.php');

}else{
	echo "vérifier les champs";
}
//*/

?>