<p class="lead">
  <?php

  class Xu
  {
    public $nom, $bg, $bd, $pf;

    public function __construct( $nom, $bg, $bd, $pf )
    {
      $this->nom = $nom;
      $this->bg = $bg;
      $this->bd = $bd;
      $this->pf = $pf;
    }

    public function affGroupe()
    {
      echo $this->nom;
    }
  }

  class Groupe
  {
    public $gr;

    public function __construct( $gr )
    {
      $this->gr = $gr;
    }

    public function nbr()
    {
      return count( $this->gr );
    }

    public function affNomXu( $id )
    {
      if ( $id + 1 > self::nbr() ) {
        return 'Pas de membre avec cet ID';
      } else
        return 'Le membre dont l\'index est <strong>' . $id . '</strong> se nomme <strong>
' . $this->gr[ $id ]->nom . '</strong>.<br>
(BG: ' . $this->gr[ $id ]->bg . ' - BD: ' . $this->gr[ $id ]->bd . ' | Prof: ' . $this->gr[ $id ]->pf . ')';
    }

    public function affVueHV()
    {
      $v = '<section class="basic-style">
  <div class="hv-container">
    <div class="hv-wrapper">';

      $v .= $this->affCardXu( 1 );

      $v .= '
  </div>
</section>
';

      return $v;
    }

    public function affCardXu( $id )
    {
      return '<div class="hv-item-' . ( ( $this->gr[ $id ]->bd - $this->gr[ $id ]->bg == 1 ) ? 'child' : 'parent' ) . '">
      <p class="cardXu">' . $this->gr[ $id ]->nom . ' (' . $id . ')</p>
    </div>';
    }

  }

  $rsx = initGroupe();

  for ( $i = 0;
        $i < $rsx->nbr();
        $i++ )
    echo $rsx->affNomXu( $i ) . '<br>';
  ?>
</p>

<?php

echo $rsx->affVueHV();

function initGroupe()
{
  $gr[] = new Xu( 'Doro', 1, 8, 0 );
  $gr[] = new Xu( 'Jade', 2, 5, 1 );
  $gr[] = new Xu( 'Jeny', 3, 4, 2 );
  $gr[] = new Xu( 'Jonathan', 6, 7, 1 );

//  $gr[] = new Xu( 'Doro', 1, 26, 0 );
//  $gr[] = new Xu( 'Jade', 2, 5, 1 );
//  $gr[] = new Xu( 'Jeny', 3, 4, 2 );
//  $gr[] = new Xu( 'Romain', 6, 21, 1 );
//  $gr[] = new Xu( 'Nico', 7, 18, 2 );
//  $gr[] = new Xu( 'Félicien', 8, 15, 3 );
//  $gr[] = new Xu( 'Thierry', 9, 12, 4 );
//  $gr[] = new Xu( 'Christophe', 10, 11, 5 );
//  $gr[] = new Xu( 'Christian', 13, 14, 4 );
//  $gr[] = new Xu( 'Mère de Nico', 16, 17, 3 );
//  $gr[] = new Xu( 'Quentin', 19, 20, 2 );
//  $gr[] = new Xu( 'Mimi', 22, 23, 1 );
//  $gr[] = new Xu( 'Pina', 24, 25, 1 );

  $rsx = new Groupe( $gr );
  return $rsx;
}

?>
<hr>
<section class="basic-style">

  <div class="hv-container">
    <div class="hv-wrapper">

      <div class="hv-item">

        <div class="hv-item-parent">
          <p class="cardXu">Doro (0)</p>
        </div>

        <div class="hv-item-children">

          <div class="hv-item-child">

            <div class="hv-item">

              <div class="hv-item-parent">
                <p class="cardXu">Jade (1)</p>
              </div>

              <div class="hv-item-children">
                <div class="hv-item-child">
                  <p class="cardXu">Jeny (2)</p>
                </div>
              </div>

            </div>

          </div>
          <div class="hv-item-child">
            <p class="cardXu">Jonathan (3)</p>
          </div>
        </div>

      </div>

    </div>
  </div>

</section>

