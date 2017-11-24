

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
           <option value="france">France</option>
           <option value="espagne">Espagne</option>
           <option value="italie">Italie</option>
           <option value="royaume-uni">Royaume-Uni</option>
           <option value="canada">Canada</option>
           <option value="etats-unis">États-Unis</option>
           <option value="chine">Chine</option>
           <option value="japon">Japon</option>
       </select>
   </p>
   
     Lol
</form>    
  
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
 <?php    
echo str_repeat(' <br>', 10);

  ?>      
    
     
    
     