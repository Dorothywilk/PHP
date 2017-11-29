

USE aaxu;


DROP TABLE IF EXISTS aaxu.xus;
CREATE TABLE aaxu.xus AS SELECT
                           uid,
                           uname,
                           parr
                         FROM www_boos2013.xoops_users
                         LIMIT 10;

SELECT
  uid,
  uname,
  parr
-- INTO aaxu.t_xus
FROM www_boos2013.xoops_users
LIMIT 1, 1;

SELECT
  uid,
  uname,
  parr
FROM aaxu.xus;
