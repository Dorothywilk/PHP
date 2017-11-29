USE aaxu;

DROP TABLE IF EXISTS xus;
CREATE TABLE xus
    SELECT
      uid,
      uname,
      (SELECT uid
       FROM www_boos2013.xoops_users xxu
       WHERE xxu.uname = xu.parr) AS parr
    FROM www_boos2013.xoops_users xu
    LIMIT 1;

INSERT INTO xus (uid, uname, parr)
SELECT
  uid,
  uname,
  (SELECT uid
   FROM www_boos2013.xoops_users xxu
   WHERE xxu.uname = xu.parr) AS parr
FROM www_boos2013.xoops_users xu
LIMIT 3,1;
;

INSERT INTO xus (uid, uname, parr) VALUES (77, 'kkk', 1);

SELECT *
FROM xus;
