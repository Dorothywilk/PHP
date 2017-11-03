CREATE DATABASE p2p_blog CHARACTER SET 'utf8';
USE p2p_blog;
1////////
SELECT date_publication,
              DATE_FORMAT(Article.date_publication, '%d/%m/%Y'), Article.resume,Article.auteur_id,auteur_titre,
FROM Article
LEFT JOIN Commentaire ON Commentaire.auteur_id = Article.auteur_id
ORDER BY Article.date_pubication;
2/////

SELECT 
   DATE_FORMAT(Article.date_publication, '%d/%m/%Y'), Article.resume,Article.auteur_id,Article.titre, Utilisateur.pseudo
FROM Artice

WHERE Article.auteur_id = 2;
ORDER BY Article.date_publication;
3///////
SELECT 
   DATE_FORMAT(Article.date_publication, '%d/%m/%Y'), Article.resume,Article.auteur_id,Article.titre, Utilisateur.pseudo
FROM Artice
LEFT JOIN categorie_article ON Article.id = categorie_article.article_id
WHERE categorie_article.categorie.id = 3;
ORDER BY Article.date_publication;
4///////////
SELECT    DATE_FORMAT(Article.date_publication, '%d,%m,%Y' à  heure),
Article.contenu,Article.titre , Categorie.nom,Utilisateur.pseudo,
FROM Artice
LEFT JOIN categorie_article ON categorie_article.article_id=Article.id;
WHERE categorie_article.article_id=4;
ORDER BY Article.date_publication;

