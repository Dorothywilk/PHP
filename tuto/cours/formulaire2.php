

 <form method="post" action="traitement.php">
  
        <fieldset>
       <legend>Vos coordonnées</legend> <!-- Titre du fieldset --> 

       <label for="nom">Quel est votre nom ?<br></label>
       <input type="text" name="nom" id="nom" /><br>

       <label for="prenom">Quel est votre prénom ?<br></label>
       <input type="text" name="prenom" id="prenom" /><br>
 
       <label for="email">Quel est votre e-mail ?<br></label>
       <input type="email" name="email" id="email" />

   </fieldset>
   <p>
       <label for="pays">Choisissez votre option</label><br />
       <select name="pays" id="pays">
           <option value="france">Acceuil</option>
           <option value="espagne">Jade</option>
           <option value="italie">SV</option>
           <option value="royaume-uni">Bulma</option>
           <option value="canada">Tutoriel</option>
           <option value="etats-unis">Tech GC7</option>
           <option value="chine">XU</option>
           <option value="japon">C57</option>
       </select>
   </p>
     <?php
   
   echo '<hr>';
     ?>
</form>    
  
   <input type="color" value"#ff0000" /> 
<?php
colorPicker.addEventListener("input", updateFirst, false);
colorPicker.addEventListener("change", watchColorPicker, false);

function watchColorPicker(event) 
{
  document.querySelectorAll("p").forEach(function(p) {
    p.style.color = event.target.value;
  });
}
  ?>   
   <form method="post" action="traitement.php">
   <p>
       <label for="pays">Dans quel pays habitez-vous ?</label><br />
       <select name="pays" id="pays">
           <optgroup label="Europe">
               <option value="france">France</option>
               <option value="espagne">Espagne</option>
               <option value="italie">Italie</option>
               <option value="royaume-uni">Royaume-Uni</option>
           </optgroup>
           <optgroup label="Amérique">
               <option value="canada">Canada</option>
               <option value="etats-unis">Etats-Unis</option>
           </optgroup>
           <optgroup label="Asie">
               <option value="chine">Chine</option>
               <option value="japon">Japon</option>
           </optgroup>
       </select>
   </p>
</form>  
     
     
     
     
     
     
     
     
     
     
     
     
     
 <?php    
echo str_repeat(' <br>', 10);

  ?>      
    
     
    
     