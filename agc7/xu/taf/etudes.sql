-- ###############################################################
-- ToDoLi A étudier requête d'add colonne avec preparation de requête + option pour drop en même temps,a vec contrôle gestion d'erreur
-- ###############################################################
DELIMITER //
DROP PROCEDURE IF EXISTS AddTableColumn //
CREATE PROCEDURE AddTableColumn
  (   IN  schemaName       VARCHAR(128) -- If null use name of current schema;
    , IN  tableName        VARCHAR(128) -- If null an exception will be thrown.
    , IN  columnName       VARCHAR(128) -- If null an exception will be thrown.
    ,
      IN  columnDefinition VARCHAR(1024) -- E.g. 'int not null default 1' (Can include comment here if columnComment is null.)
    ,
      IN  columnComment    VARCHAR(1024) -- E.g. 'comment about column.' Can be null. (If null then the comment can be included in columnDefinition.)
    ,
      IN  ifPresent        ENUM('leaveUnchanged', 'dropAndReplace', 'modifyExisting') -- null=leaveUnchanged.
    , OUT outcome          TINYINT(1) -- 0=unchanged, 1=replaced, 2=modified, 4=added.
  )
  BEGIN
    DECLARE doDrop TINYINT(1) DEFAULT NULL;
    DECLARE doAdd TINYINT(1) DEFAULT NULL;
    DECLARE doModify TINYINT(1) DEFAULT NULL;
    DECLARE tmpSql VARCHAR(4096) DEFAULT '';

    SET schemaName = coalesce(schemaName, schema());
    SET ifPresent = coalesce(ifPresent, 'leaveUnchanged');
    -- select schemaName, ifPresent;
    IF exists
    (SELECT *
     FROM `information_schema`.`COLUMNS`
     WHERE `COLUMN_NAME` = columnName
           AND `TABLE_NAME` = tableName
           AND `TABLE_SCHEMA` = schemaName
    )
    THEN
      -- select 'exists';
      IF (ifPresent = 'leaveUnchanged')
      THEN
        SET doDrop = 0;
        SET doAdd = 0;
        SET doModify = 0;
        SET outcome = 0;
      ELSEIF (ifPresent = 'dropAndReplace')
        THEN
          SET doDrop = 1;
          SET doAdd = 1;
          SET doModify = 0;
          SET outcome = 1;
      ELSEIF (ifPresent = 'modifyExisting')
        THEN
          SET doDrop = 0;
          SET doAdd = 0;
          SET doModify = 1;
          SET outcome = 2;
      END IF;
    ELSE
      -- select 'not-exists';
      SET doDrop = 0;
      SET doAdd = 1;
      SET doModify = 0;
      SET outcome = 4;
    END IF;

    -- select doDrop, doAdd, doModify, outcome;
    IF (doDrop = 1)
    THEN
      SET tmpSql = concat('alter table `', schemaName, '`.`', tableName, '` drop column `',
                          columnName, '` ');
      SET @sql = tmpSql;
      PREPARE tmp_stmt FROM @sql;
      EXECUTE tmp_stmt;
      DEALLOCATE PREPARE tmp_stmt;
    END IF;

    IF (doAdd = 1)
    THEN
      SET tmpSql = concat('alter table `', schemaName, '`.`', tableName, '` add column `',
                          columnName, '` ', columnDefinition);
      IF (columnComment IS NOT NULL)
      THEN
        SET tmpSql = concat(tmpSql, ' comment "', columnComment, '"');
      END IF;
      SET @sql = tmpSql;
      PREPARE tmp_stmt FROM @sql;
      EXECUTE tmp_stmt;
      DEALLOCATE PREPARE tmp_stmt;
    END IF;

    IF (doModify = 1)
    THEN
      SET tmpSql = concat('alter table `', schemaName, '`.`', tableName, '` modify column `',
                          columnName, '` ', columnDefinition);
      IF (columnComment IS NOT NULL)
      THEN
        SET tmpSql = concat(tmpSql, ' comment "', columnComment, '"');
      END IF;
      SET @sql = tmpSql;
      PREPARE tmp_stmt FROM @sql;
      EXECUTE tmp_stmt;
      DEALLOCATE PREPARE tmp_stmt;
    END IF;
  END;
//



-- ###############################################################
-- ToDoLi A étudier requête de clone table avec preparation de requête + option pour drop en même temps,a vec contrôle gestion d'erreur
-- ###############################################################
CREATE PROCEDURE `clone_table`(IN tablex TEXT)
BEGIN
  DECLARE sqls,tablexs,cols TEXT;
  DECLARE done INT DEFAULT 0;

  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

  SET tablexs = CONCAT(tablex,'_tmp');

  SET @sql=CONCAT('ALTER TABLE `',tablex,'` RENAME TO `',tablexs,'`');
  PREPARE stmt1 FROM @sql;
  EXECUTE stmt1;
  DEALLOCATE PREPARE stmt1;

  SET @sql=CONCAT('CREATE TABLE ',tablex,' LIKE ',tablexs);
  PREPARE stmt1 FROM @sql;
  EXECUTE stmt1;
  DEALLOCATE PREPARE stmt1;

  SELECT column_name INTO cols
  FROM `information_schema`.`COLUMNS`
  WHERE table_name=tablexs
    AND table_schema=DATABASE()
    AND column_key='pri' AND extra='auto_increment';

  IF NOT done THEN
    SELECT `auto_increment` INTO @id
    FROM `information_schema`.`TABLES`
    WHERE table_name=tablexs
      AND table_schema=DATABASE();

    SET @sql=CONCAT('ALTER TABLE `',tablex,'` AUTO_INCREMENT=',@id);
    PREPARE stmt1 FROM @sql;
    EXECUTE stmt1;
    DEALLOCATE PREPARE stmt1;
  END IF;
END $$

AND

CREATE PROCEDURE `clone_table_sync`(IN table_namex VARCHAR(100), IN idx INT)
BEGIN
  DECLARE done, ids INT DEFAULT 0;
  DECLARE table_namexs TEXT;

  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;

  SET table_namexs = CONCAT(table_namex,'_tmp');

  SELECT `auto_increment` INTO ids
  FROM `information_schema`.`TABLES`
  WHERE table_name=table_namexs
  AND table_schema=DATABASE();

  WHILE ids>idx DO
  SET @sql=CONCAT('INSERT IGNORE INTO `',table_namex,'` SELECT * FROM `',table_namexs,
  '` WHERE i_id>',idx,' AND i_id<=',(idx+5000));
  PREPARE stmt1 FROM @sql;
  EXECUTE stmt1;
  DEALLOCATE PREPARE stmt1;

  -- SELECT SLEEP(1) INTO @tmp2;
  SET idx=idx+5000;
  END WHILE;
END $$
