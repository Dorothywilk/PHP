use arbre;

CREATE TABLE tuto_herit (
        forum_id mediumint(8) NOT NULL AUTO_INCREMENT,
        forum_parent_id mediumint(8) DEFAULT NULL,
        forum_name varchar(30) NOT NULL,

        PRIMARY KEY  (forum_id),
        KEY forum_parent_id (forum_parent_id)
    );

INSERT INTO tuto_herit (forum_id, forum_parent_id, forum_name)
    VALUES
        (1, NULL, '1'),
        (2, 1, '1.1'),
        (3, 2, '1.1.1'),
        (4, 3, '1.1.1.1'),
        (5, 4, '1.1.1.1.1'),
        (6, 5, '1.1.1.1.1.1'),
        (7, 6, '1.1.1.1.1.1.1'),
        (8, 6, '1.1.1.1.1.1.2'),
        (9, 6, '1.1.1.1.1.1.3'),
        (10, 4, '1.1.1.1.1.2'),
        (11, 4, '1.1.1.1.1.3'),
        (12, 4, '1.1.1.1.2'),
        (13, 4, '1.1.1.1.3'),
        (14, 2, '1.1.2'),
        (15, 1, '1.2'),
        (16, 1, '1.3'),
        (17, 1, '1.4'),
        (18, 11, '1.4.1'),
        (19, 11, '1.4.2'),

        (20, NULL, '2')/*,[...]*/;


