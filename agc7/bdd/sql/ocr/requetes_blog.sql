-- Accueil

SELECT DATE_FORMAT(date_publication, '%d/%m/%Y') as date,
       utilisateur.pseudo,
       titre, resume,
       (select count(*) from commentaire
        where commentaire.article_id=article.id) as "Nombre de commentaires"
from article
  left join utilisateur
  on utilisateur.id = article.Auteur_id
order by date_publication desc;



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


-- Article - id de l’article = 4

SELECT article.id, DATE_FORMAT(date_publication, '%d %M %Y à %H heures %i') as date,
       titre, contenu, resume,
		(select group_concat(categorie.nom SEPARATOR ', ') from categorie
		 where id in ( select categorie_id 
							from categorie_article
							where article_id =4
						)
		) as catégories,
		utilisateur.pseudo
		 
from article

  left join utilisateur
  on utilisateur.id = article.Auteur_id

where article.id = 4;

-- Meilleure structure

SELECT Article.id AS id_article, DATE_FORMAT(date_publication,'%d %M %Y à %H heures %i"') AS date_publication, 
	titre, contenu, pseudo AS pseudo_auteur, GROUP_CONCAT(Categorie.nom) AS Nom_categories
FROM Article
  INNER JOIN Utilisateur ON auteur_id = Utilisateur.id
  LEFT JOIN Categorie_article ON Article.id = Categorie_article.article_id
  LEFT JOIN Categorie ON Categorie.id = categorie_id
WHERE Article.id = 4
GROUP BY Categorie_article.article_id;
