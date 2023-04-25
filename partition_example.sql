CREATE SCHEMA cde_14_partition_ex ;

CREATE TABLE IF NOT EXISTS
  cde_14_partition_ex.normal_table AS
SELECT
  *
FROM
  bigquery-public-data.stackoverflow.stackoverflow_posts;

------------------------------------------------------------------

CREATE TABLE
  gcp-training-swamy.cde_14_partition_ex.partition_table ( id INTEGER,
    title STRING,
    body STRING,
    accepted_answer_id INTEGER,
    answer_count INTEGER,
    comment_count INTEGER,
    community_owned_date TIMESTAMP,
    creation_date TIMESTAMP,
    favorite_count INTEGER,
    last_activity_date TIMESTAMP,
    last_edit_date TIMESTAMP,
    last_editor_display_name STRING,
    last_editor_user_id INTEGER,
    owner_display_name STRING,
    owner_user_id INTEGER,
    parent_id INTEGER,
    post_type_id INTEGER,
    score INTEGER,
    tags STRING,
    view_count INTEGER )
PARTITION BY
  TIMESTAMP_TRUNC(creation_date, day ) ;
  
----------------------------------------------------------------------------


insert 
 into 
  `partition_batch13_dev.partition_table`
select 
      * 
	  from 
	   ` partition_batch13_dev.base_table`
	   
	   
SELECT
  *
FROM
  gcp-training-swamy.cde_14_partition_ex.normal_table
WHERE
  creation_date = '2008-10-11'
  
  SELECT
  *
FROM
  gcp-training-swamy.cde_14_partition_ex.partition_table
WHERE
  creation_date = '2008-10-11'
  
  SELECT
  *
FROM
  gcp-training-swamy.cde_14_partition_ex.normal_table
WHERE
  creation_date = '2138-10-11'
  
   SELECT
  *
FROM
  gcp-training-swamy.cde_14_partition_ex.partition_table
WHERE
  creation_date = '2138-10-11'