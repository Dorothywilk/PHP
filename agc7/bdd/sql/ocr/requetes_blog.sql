-- Accueil

SELECT titre, resume, date_publication as date, utilisateur.pseudo
from article
  left outer join utilisateur
  on utilisateur.id = article.auteur_id;



-- Auteur - id de l’auteur = 2

SET lc_time_names = "fr_FR";

SELECT DATE_FORMAT(date_publication, '%d %M \'%y') as date, pseudo, titre, resume
from article

  left join utilisateur
  on utilisateur.id = article.Auteur_id

where utilisateur.id = 2

order by article.date_publication desc;



-- Categorie - id de la catégorie = 3

select DATE_FORMAT(date_publication, '%d/%m/%Y - %H:%i') as date,
pseudo,
 titre, resume
from article

  left join utilisateur
  on utilisateur.id = article.Auteur_id

where article.id in 

(
	select article_id 
	from categorie_article 
	where categorie_article.categorie_id=3
);


