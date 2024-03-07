-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `sys`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sys`;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2020-02-24 15:19:36',NULL),('diagnostics.include_raw','OFF','2020-02-24 15:19:36',NULL),('ps_thread_trx_info.max_length','65535','2020-02-24 15:19:36',NULL),('statement_performance_analyzer.limit','100','2020-02-24 15:19:36',NULL),('statement_performance_analyzer.view',NULL,'2020-02-24 15:19:36',NULL),('statement_truncate_len','64','2020-02-24 15:19:36',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_insert_set_user` BEFORE INSERT ON `sys_config` FOR EACH ROW BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`mysql.sys`@`localhost`*/ /*!50003 TRIGGER `sys_config_update_set_user` BEFORE UPDATE ON `sys_config` FOR EACH ROW BEGIN
    IF @sys.ignore_sys_config_triggers != true AND NEW.set_by IS NULL THEN
        SET NEW.set_by = USER();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sys'
--
/*!50003 DROP FUNCTION IF EXISTS `extract_schema_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `extract_schema_from_file_name`(
        path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw file path, and attempts to extract the schema name from it.\n\nUseful for when interacting with Performance Schema data \nconcerning IO statistics, for example.\n\nCurrently relies on the fact that a table data file will be within a \nspecified database directory (will not work with partitions or tables\nthat specify an individual DATA_DIRECTORY).\n\nParameters\n-----------\n\npath (VARCHAR(512)):\n  The full file path to a data file to extract the schema name from.\n\nReturns\n-----------\n\nVARCHAR(64)\n\nExample\n-----------\n\nmysql> SELECT sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n+----------------------------------------------------------------------------+\n| sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n+----------------------------------------------------------------------------+\n| employees                                                                  |\n+----------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -2), '/', 1), 64);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `extract_table_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `extract_table_from_file_name`(
        path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw file path, and extracts the table name from it.\n\nUseful for when interacting with Performance Schema data \nconcerning IO statistics, for example.\n\nParameters\n-----------\n\npath (VARCHAR(512)):\n  The full file path to a data file to extract the table name from.\n\nReturns\n-----------\n\nVARCHAR(64)\n\nExample\n-----------\n\nmysql> SELECT sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n+---------------------------------------------------------------------------+\n| sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n+---------------------------------------------------------------------------+\n| employee                                                                  |\n+---------------------------------------------------------------------------+\n1 row in set (0.02 sec)\n'
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -1), '@0024', '$'), '.', 1), 64);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_bytes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_bytes`(
        -- We feed in and return TEXT here, as aggregates of
        -- bytes can return numbers larger than BIGINT UNSIGNED
        bytes TEXT
    ) RETURNS text CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw bytes value, and converts it to a human readable format.\n\nParameters\n-----------\n\nbytes (TEXT):\n  A raw bytes value.\n\nReturns\n-----------\n\nTEXT\n\nExample\n-----------\n\nmysql> SELECT sys.format_bytes(2348723492723746) AS size;\n+----------+\n| size     |\n+----------+\n| 2.09 PiB |\n+----------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.format_bytes(2348723492723) AS size;\n+----------+\n| size     |\n+----------+\n| 2.14 TiB |\n+----------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.format_bytes(23487234) AS size;\n+-----------+\n| size      |\n+-----------+\n| 22.40 MiB |\n+-----------+\n1 row in set (0.00 sec)\n'
BEGIN
  IF (bytes IS NULL) THEN
    RETURN NULL;
  ELSE
    RETURN format_bytes(bytes);
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_path`(
        in_path VARCHAR(512)
    ) RETURNS varchar(512) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw path value, and strips out the datadir or tmpdir\nreplacing with @@datadir and @@tmpdir respectively.\n\nAlso normalizes the paths across operating systems, so backslashes\non Windows are converted to forward slashes\n\nParameters\n-----------\n\npath (VARCHAR(512)):\n  The raw file path value to format.\n\nReturns\n-----------\n\nVARCHAR(512) CHARSET UTF8MB4\n\nExample\n-----------\n\nmysql> select @@datadir;\n+-----------------------------------------------+\n| @@datadir                                     |\n+-----------------------------------------------+\n| /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n+-----------------------------------------------+\n1 row in set (0.06 sec)\n\nmysql> select format_path(''/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD'') AS path;\n+--------------------------+\n| path                     |\n+--------------------------+\n| @@datadir/mysql/proc.MYD |\n+--------------------------+\n1 row in set (0.03 sec)\n'
BEGIN
  DECLARE v_path VARCHAR(512);
  DECLARE v_undo_dir VARCHAR(1024);
  DECLARE path_separator CHAR(1) DEFAULT '/';
  IF @@global.version_compile_os LIKE 'win%' THEN
    SET path_separator = '\\';
  END IF;
  -- OSX hides /private/ in variables, but Performance Schema does not
  IF in_path LIKE '/private/%' THEN
    SET v_path = REPLACE(in_path, '/private', '');
  ELSE
    SET v_path = in_path;
  END IF;
  -- @@global.innodb_undo_directory is only set when separate undo logs are used
  SET v_undo_dir = IFNULL((SELECT VARIABLE_VALUE FROM performance_schema.global_variables WHERE VARIABLE_NAME = 'innodb_undo_directory'), '');
  IF v_path IS NULL THEN
    RETURN NULL;
  ELSEIF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.datadir, CONCAT('@@datadir', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT('@@tmpdir', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.slave_load_tmpdir, IF(SUBSTRING(@@global.slave_load_tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.slave_load_tmpdir, CONCAT('@@slave_load_tmpdir', IF(SUBSTRING(@@global.slave_load_tmpdir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.innodb_data_home_dir, IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.innodb_data_home_dir, CONCAT('@@innodb_data_home_dir', IF(SUBSTRING(@@global.innodb_data_home_dir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.innodb_log_group_home_dir, IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.innodb_log_group_home_dir, CONCAT('@@innodb_log_group_home_dir', IF(SUBSTRING(@@global.innodb_log_group_home_dir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(v_undo_dir, IF(SUBSTRING(v_undo_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_undo_dir, CONCAT('@@innodb_undo_directory', IF(SUBSTRING(v_undo_dir, -1) = path_separator, path_separator, '')));
  ELSEIF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.basedir, CONCAT('@@basedir', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, '')));
  END IF;
  RETURN v_path;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_statement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_statement`(
        statement LONGTEXT
    ) RETURNS longtext CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nFormats a normalized statement, truncating it if it is > 64 characters long by default.\n\nTo configure the length to truncate the statement to by default, update the `statement_truncate_len`\nvariable with `sys_config` table to a different value. Alternatively, to change it just for just \nyour particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n\nUseful for printing statement related data from Performance Schema from \nthe command line.\n\nParameters\n-----------\n\nstatement (LONGTEXT): \n  The statement to format.\n\nReturns\n-----------\n\nLONGTEXT\n\nExample\n-----------\n\nmysql> SELECT sys.format_statement(digest_text)\n    ->   FROM performance_schema.events_statements_summary_by_digest\n    ->  ORDER by sum_timer_wait DESC limit 5;\n+-------------------------------------------------------------------+\n| sys.format_statement(digest_text)                                 |\n+-------------------------------------------------------------------+\n| CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n| CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n| CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n| CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n| CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n+-------------------------------------------------------------------+\n5 rows in set (0.00 sec)\n'
BEGIN
  -- Check if we have the configured length, if not, init it
  IF @sys.statement_truncate_len IS NULL THEN
      SET @sys.statement_truncate_len = sys_get_config('statement_truncate_len', 64);
  END IF;
  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN
      RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), ' ... ', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), '\n', ' ');
  ELSE 
      RETURN REPLACE(statement, '\n', ' ');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `format_time`(
-- We feed in and return TEXT here, as aggregates of
-- picoseconds can return numbers larger than BIGINT UNSIGNED
        picoseconds TEXT
    ) RETURNS text CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a raw picoseconds value, and converts it to a human readable form.\n\nPicoseconds are the precision that all latency values are printed in\nwithin Performance Schema, however are not user friendly when wanting\nto scan output from the command line.\n\nParameters\n-----------\n\npicoseconds (TEXT):\n  The raw picoseconds value to convert.\n\nReturns\n-----------\n\nTEXT CHARSET UTF8MB4\n\nExample\n-----------\n\nmysql> select format_time(342342342342345);\n+------------------------------+\n| format_time(342342342342345) |\n+------------------------------+\n| 00:05:42                     |\n+------------------------------+\n1 row in set (0.00 sec)\n\nmysql> select format_time(342342342);\n+------------------------+\n| format_time(342342342) |\n+------------------------+\n| 342.34 us              |\n+------------------------+\n1 row in set (0.00 sec)\n\nmysql> select format_time(34234);\n+--------------------+\n| format_time(34234) |\n+--------------------+\n| 34.23 ns           |\n+--------------------+\n1 row in set (0.00 sec)\n'
BEGIN
  IF picoseconds IS NULL THEN RETURN NULL;
  ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), ' w');
  ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), ' d');
  ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), ' h');
  ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), ' m');
  ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), ' s');
  ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), ' ms');
  ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), ' us');
  ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), ' ns');
  ELSE RETURN CONCAT(picoseconds, ' ps');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `list_add`(
        in_list TEXT,
        in_add_value TEXT
    ) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a list, and a value to add to the list, and returns the resulting list.\n\nUseful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n\nParameters\n-----------\n\nin_list (TEXT):\n  The comma separated list to add a value to\n\nin_add_value (TEXT):\n  The value to add to the input list\n\nReturns\n-----------\n\nTEXT\n\nExample\n--------\n\nmysql> select @@sql_mode;\n+-----------------------------------------------------------------------------------+\n| @@sql_mode                                                                        |\n+-----------------------------------------------------------------------------------+\n| ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+-----------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> set sql_mode = sys.list_add(@@sql_mode, ''ANSI_QUOTES'');\nQuery OK, 0 rows affected (0.06 sec)\n\nmysql> select @@sql_mode;\n+-----------------------------------------------------------------------------------------------+\n| @@sql_mode                                                                                    |\n+-----------------------------------------------------------------------------------------------+\n| ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+-----------------------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\n'
BEGIN
    IF (in_add_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_add: in_add_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        -- return the new value as a single value list
        RETURN in_add_value;
    END IF;
    RETURN (SELECT CONCAT(TRIM(BOTH ',' FROM TRIM(in_list)), ',', in_add_value));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_drop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `list_drop`(
        in_list TEXT,
        in_drop_value TEXT
    ) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a list, and a value to attempt to remove from the list, and returns the resulting list.\n\nUseful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n\nParameters\n-----------\n\nin_list (TEXT):\n  The comma separated list to drop a value from\n\nin_drop_value (TEXT):\n  The value to drop from the input list\n\nReturns\n-----------\n\nTEXT\n\nExample\n--------\n\nmysql> select @@sql_mode;\n+-----------------------------------------------------------------------------------------------+\n| @@sql_mode                                                                                    |\n+-----------------------------------------------------------------------------------------------+\n| ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+-----------------------------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> set sql_mode = sys.list_drop(@@sql_mode, ''ONLY_FULL_GROUP_BY'');\nQuery OK, 0 rows affected (0.03 sec)\n\nmysql> select @@sql_mode;\n+----------------------------------------------------------------------------+\n| @@sql_mode                                                                 |\n+----------------------------------------------------------------------------+\n| ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n+----------------------------------------------------------------------------+\n1 row in set (0.00 sec)\n\n'
BEGIN
    IF (in_drop_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_drop: in_drop_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        -- return the list as it was passed in
        RETURN in_list;
    END IF;
    -- ensure that leading / trailing commas are remove, support values with either spaces or not between commas
    RETURN (SELECT TRIM(BOTH ',' FROM REPLACE(REPLACE(CONCAT(',', in_list), CONCAT(',', in_drop_value), ''), CONCAT(', ', in_drop_value), '')));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_account_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_account_enabled`(
        in_host VARCHAR(255), 
        in_user VARCHAR(32)
    ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDetermines whether instrumentation of an account is enabled \nwithin Performance Schema.\n\nParameters\n-----------\n\nin_host VARCHAR(255): \n  The hostname of the account to check.\nin_user VARCHAR(32):\n  The username of the account to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'', ''PARTIAL'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_account_enabled(''localhost'', ''root'');\n+------------------------------------------------+\n| sys.ps_is_account_enabled(''localhost'', ''root'') |\n+------------------------------------------------+\n| YES                                            |\n+------------------------------------------------+\n1 row in set (0.01 sec)\n'
BEGIN
    RETURN IF(EXISTS(SELECT 1
                       FROM performance_schema.setup_actors
                      WHERE (`HOST` = '%' OR in_host LIKE `HOST`)
                        AND (`USER` = '%' OR `USER` = in_user)
                        AND (`ENABLED` = 'YES')
                    ),
              'YES', 'NO'
           );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_consumer_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_consumer_enabled`(
        in_consumer varchar(64)
   ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDetermines whether a consumer is enabled (taking the consumer hierarchy into consideration)\nwithin the Performance Schema.\n\nAn exception with errno 3047 is thrown if an unknown consumer name is passed to the function.\nA consumer name of NULL returns NULL.\n\nParameters\n-----------\n\nin_consumer VARCHAR(64): \n  The name of the consumer to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_consumer_enabled(''events_stages_history'');\n+-----------------------------------------------------+\n| sys.ps_is_consumer_enabled(''events_stages_history'') |\n+-----------------------------------------------------+\n| NO                                                  |\n+-----------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_is_enabled ENUM('YES', 'NO') DEFAULT NULL;
    DECLARE v_error_msg VARCHAR(128);
    -- Return NULL for a NULL argument.
    IF (in_consumer IS NULL) THEN
        RETURN NULL;
    END IF;
    SET v_is_enabled = (
        SELECT (CASE
                   WHEN c.NAME = 'global_instrumentation' THEN c.ENABLED
                   WHEN c.NAME = 'thread_instrumentation' THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_digest'           THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_current'          THEN IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   ELSE IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES'
                           AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, '_', 2), '_current')
                               ) = 'YES', 'YES', 'NO')
                END) AS IsEnabled
          FROM performance_schema.setup_consumers c
               INNER JOIN performance_schema.setup_consumers cg
               INNER JOIN performance_schema.setup_consumers ct
         WHERE cg.NAME       = 'global_instrumentation'
               AND ct.NAME   = 'thread_instrumentation'
               AND c.NAME    = in_consumer
        );
    IF (v_is_enabled IS NOT NULL) THEN
        RETURN v_is_enabled;
    ELSE
        -- A value of NULL here means it is an unknown consumer name that was passed as an argument.
        -- Only an input value of NULL is allowed to return a NULL result value, to throw a signal instead.
        SET v_error_msg = CONCAT('Invalid argument error: ', in_consumer, ' in function sys.ps_is_consumer_enabled.');
        SIGNAL SQLSTATE 'HY000'
           SET MESSAGE_TEXT = v_error_msg,
               MYSQL_ERRNO  = 3047;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_instrument_default_enabled`(
        in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns whether an instrument is enabled by default in this version of MySQL.\n\nParameters\n-----------\n\nin_instrument VARCHAR(128): \n  The instrument to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_instrument_default_enabled(''statement/sql/select'');\n+--------------------------------------------------------------+\n| sys.ps_is_instrument_default_enabled(''statement/sql/select'') |\n+--------------------------------------------------------------+\n| YES                                                          |\n+--------------------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO');
    -- Currently the same in all versions
    SET v_enabled = IF(in_instrument LIKE 'wait/io/file/%'
                        OR in_instrument LIKE 'wait/io/table/%'
                        OR in_instrument LIKE 'statement/%'
                        OR in_instrument LIKE 'memory/performance_schema/%'
                        OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')
               
                        OR in_instrument LIKE 'stage/innodb/%'
                        OR in_instrument = 'stage/sql/copy to tmp table'
               
                      ,
                       'YES',
                       'NO'
                    );
    RETURN v_enabled;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_timed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_instrument_default_timed`(
        in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns whether an instrument is timed by default in this version of MySQL.\n\nParameters\n-----------\n\nin_instrument VARCHAR(128): \n  The instrument to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_instrument_default_timed(''statement/sql/select'');\n+------------------------------------------------------------+\n| sys.ps_is_instrument_default_timed(''statement/sql/select'') |\n+------------------------------------------------------------+\n| YES                                                        |\n+------------------------------------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_timed ENUM('YES', 'NO');
    -- Currently the same in all versions
    SET v_timed = IF(in_instrument LIKE 'wait/io/file/%'
                        OR in_instrument LIKE 'wait/io/table/%'
                        OR in_instrument LIKE 'statement/%'
                        OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')
               
                        OR in_instrument LIKE 'stage/innodb/%'
                        OR in_instrument = 'stage/sql/copy to tmp table'
               
                      ,
                       'YES',
                       'NO'
                    );
    RETURN v_timed;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_thread_instrumented` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_is_thread_instrumented`(
        in_connection_id BIGINT UNSIGNED
    ) RETURNS enum('YES','NO','UNKNOWN') CHARSET utf8mb4
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nChecks whether the provided connection id is instrumented within Performance Schema.\n\nParameters\n-----------\n\nin_connection_id (BIGINT UNSIGNED):\n  The id of the connection to check.\n\nReturns\n-----------\n\nENUM(''YES'', ''NO'', ''UNKNOWN'')\n\nExample\n-----------\n\nmysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n+------------------------------------------------+\n| sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n+------------------------------------------------+\n| YES                                            |\n+------------------------------------------------+\n'
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO', 'UNKNOWN');
    IF (in_connection_id IS NULL) THEN
        RETURN NULL;
    END IF;
    SELECT INSTRUMENTED INTO v_enabled
      FROM performance_schema.threads 
     WHERE PROCESSLIST_ID = in_connection_id;
    IF (v_enabled IS NULL) THEN
        RETURN 'UNKNOWN';
    ELSE
        RETURN v_enabled;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_account`(
        in_thread_id BIGINT UNSIGNED
    ) RETURNS text CHARSET utf8mb4
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturn the user@host account for the given Performance Schema thread id.\n\nParameters\n-----------\n\nin_thread_id (BIGINT UNSIGNED):\n  The id of the thread to return the account for.\n\nExample\n-----------\n\nmysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = ''foreground'';\n+-----------+------------------+------------------+\n| thread_id | processlist_user | processlist_host |\n+-----------+------------------+------------------+\n|        23 | NULL             | NULL             |\n|        30 | root             | localhost        |\n|        31 | msandbox         | localhost        |\n|        32 | msandbox         | localhost        |\n+-----------+------------------+------------------+\n4 rows in set (0.00 sec)\n\nmysql> select sys.ps_thread_account(31);\n+---------------------------+\n| sys.ps_thread_account(31) |\n+---------------------------+\n| msandbox@localhost        |\n+---------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN (SELECT IF(
                      type = 'FOREGROUND',
                      CONCAT(processlist_user, '@', processlist_host),
                      type
                     ) AS account
              FROM `performance_schema`.`threads`
             WHERE thread_id = in_thread_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_id`(
        in_connection_id BIGINT UNSIGNED
    ) RETURNS bigint unsigned
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturn the Performance Schema THREAD_ID for the specified connection ID.\n\nParameters\n-----------\n\nin_connection_id (BIGINT UNSIGNED):\n  The id of the connection to return the thread id for. If NULL, the current\n  connection thread id is returned.\n\nExample\n-----------\n\nmysql> SELECT sys.ps_thread_id(79);\n+----------------------+\n| sys.ps_thread_id(79) |\n+----------------------+\n|                   98 |\n+----------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n+-----------------------------------+\n| sys.ps_thread_id(CONNECTION_ID()) |\n+-----------------------------------+\n|                                98 |\n+-----------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
  IF (in_connection_id IS NULL) THEN
    RETURN ps_current_thread_id();
  ELSE
    RETURN ps_thread_id(in_connection_id);
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_stack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_stack`(
        thd_id BIGINT UNSIGNED,
        debug BOOLEAN
    ) RETURNS longtext CHARSET latin1
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nOutputs a JSON formatted stack of all statements, stages and events\nwithin Performance Schema for the specified thread.\n\nParameters\n-----------\n\nthd_id (BIGINT UNSIGNED):\n  The id of the thread to trace. This should match the thread_id\n  column from the performance_schema.threads table.\nin_verbose (BOOLEAN):\n  Include file:lineno information in the events.\n\nExample\n-----------\n\n(line separation added for output)\n\nmysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n*************************** 1. row ***************************\nthread_stack: {"rankdir": "LR","nodesep": "0.10","stack_created": "2014-02-19 13:39:03",\n"mysql_version": "5.7.3-m13","mysql_user": "root@localhost","events": \n[{"nesting_event_id": "0", "event_id": "10", "timer_wait": 256.35, "event_info": \n"sql/select", "wait_info": "select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n...\n'
BEGIN
    DECLARE json_objects LONGTEXT;
    
    -- Do not track the current thread, it will kill the stack
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = CONNECTION_ID();
    
    SET SESSION group_concat_max_len=@@global.max_allowed_packet;
    -- Select the entire stack of events
    SELECT GROUP_CONCAT(CONCAT( '{'
              , CONCAT_WS( ', '
              , CONCAT('"nesting_event_id": "', IF(nesting_event_id IS NULL, '0', nesting_event_id), '"')
              , CONCAT('"event_id": "', event_id, '"')
              -- Convert from picoseconds to microseconds
              , CONCAT( '"timer_wait": ', ROUND(timer_wait/1000000, 2))  
              , CONCAT( '"event_info": "'
                  , CASE
                        WHEN event_name NOT LIKE 'wait/io%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -2), '\\', '\\\\')
                        WHEN event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -4), '\\', '\\\\')
                        ELSE event_name
                    END
                  , '"'
              )
              -- Always dump the extra wait information gathered for statements
              , CONCAT( '"wait_info": "', IFNULL(wait_info, ''), '"')
              -- If debug is enabled, add the file:lineno information for waits
              , CONCAT( '"source": "', IF(true AND event_name LIKE 'wait%', IFNULL(wait_info, ''), ''), '"')
              -- Depending on the type of event, name it appropriately
              , CASE 
                     WHEN event_name LIKE 'wait/io/file%'      THEN '"event_type": "io/file"'
                     WHEN event_name LIKE 'wait/io/table%'     THEN '"event_type": "io/table"'
                     WHEN event_name LIKE 'wait/io/socket%'    THEN '"event_type": "io/socket"'
                     WHEN event_name LIKE 'wait/synch/mutex%'  THEN '"event_type": "synch/mutex"'
                     WHEN event_name LIKE 'wait/synch/cond%'   THEN '"event_type": "synch/cond"'
                     WHEN event_name LIKE 'wait/synch/rwlock%' THEN '"event_type": "synch/rwlock"'
                     WHEN event_name LIKE 'wait/lock%'         THEN '"event_type": "lock"'
                     WHEN event_name LIKE 'statement/%'        THEN '"event_type": "stmt"'
                     WHEN event_name LIKE 'stage/%'            THEN '"event_type": "stage"'
                     WHEN event_name LIKE '%idle%'             THEN '"event_type": "idle"'
                     ELSE '' 
                END                   
            )
            , '}'
          )
          ORDER BY event_id ASC SEPARATOR ',') event
    INTO json_objects
    FROM (
          
          -- Select all statements, with the extra tracing information available
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, 
                  CONCAT(sql_text, '\\n',
                         'errors: ', errors, '\\n',
                         'warnings: ', warnings, '\\n',
                         'lock time: ', ROUND(lock_time/1000000, 2),'us\\n',
                         'rows affected: ', rows_affected, '\\n',
                         'rows sent: ', rows_sent, '\\n',
                         'rows examined: ', rows_examined, '\\n',
                         'tmp tables: ', created_tmp_tables, '\\n',
                         'tmp disk tables: ', created_tmp_disk_tables, '\\n',
                         'select scan: ', select_scan, '\\n',
                         'select full join: ', select_full_join, '\\n',
                         'select full range join: ', select_full_range_join, '\\n',
                         'select range: ', select_range, '\\n',
                         'select range check: ', select_range_check, '\\n', 
                         'sort merge passes: ', sort_merge_passes, '\\n',
                         'sort rows: ', sort_rows, '\\n',
                         'sort range: ', sort_range, '\\n',
                         'sort scan: ', sort_scan, '\\n',
                         'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                         'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                         ) AS wait_info
             FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id)
          UNION 
          -- Select all stages
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
             FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id) 
          UNION 
          -- Select all events, adding information appropriate to the event
          (SELECT thread_id, event_id, 
                  CONCAT(event_name , 
                         IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''), 
                         IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                         IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                         IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''), 
                         IF(object_name IS NOT NULL, 
                            IF (event_name LIKE 'wait/io/socket%',
                                -- Print the socket if used, else the IP:port as reported
                                CONCAT(IF (object_name LIKE ':0%', @@socket, object_name)),
                                object_name),
                            ''),
                          IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n'
                         ) AS event_name,
                  timer_wait, timer_start, nesting_event_id, source AS wait_info
             FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events 
    ORDER BY event_id;
    RETURN CONCAT('{', 
                  CONCAT_WS(',', 
                            '"rankdir": "LR"',
                            '"nodesep": "0.10"',
                            CONCAT('"stack_created": "', NOW(), '"'),
                            CONCAT('"mysql_version": "', VERSION(), '"'),
                            CONCAT('"mysql_user": "', CURRENT_USER(), '"'),
                            CONCAT('"events": [', IFNULL(json_objects,''), ']')
                           ),
                  '}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_trx_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `ps_thread_trx_info`(
        in_thread_id BIGINT UNSIGNED
    ) RETURNS longtext CHARSET utf8mb4
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns a JSON object with info on the given threads current transaction, \nand the statements it has already executed, derived from the\nperformance_schema.events_transactions_current and\nperformance_schema.events_statements_history tables (so the consumers \nfor these also have to be enabled within Performance Schema to get full\ndata in the object).\n\nWhen the output exceeds the default truncation length (65535), a JSON error\nobject is returned, such as:\n\n{ "error": "Trx info truncated: Row 6 was cut by GROUP_CONCAT()" }\n\nSimilar error objects are returned for other warnings/and exceptions raised\nwhen calling the function.\n\nThe max length of the output of this function can be controlled with the\nps_thread_trx_info.max_length variable set via sys_config, or the\n@sys.ps_thread_trx_info.max_length user variable, as appropriate.\n\nParameters\n-----------\n\nin_thread_id (BIGINT UNSIGNED):\n  The id of the thread to return the transaction info for.\n\nExample\n-----------\n\nSELECT sys.ps_thread_trx_info(48)\\G\n*************************** 1. row ***************************\nsys.ps_thread_trx_info(48): [\n  {\n    "time": "790.70 us",\n    "state": "COMMITTED",\n    "mode": "READ WRITE",\n    "autocommitted": "NO",\n    "gtid": "AUTOMATIC",\n    "isolation": "REPEATABLE READ",\n    "statements_executed": [\n      {\n        "sql_text": "INSERT INTO info VALUES (1, ''foo'')",\n        "time": "471.02 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 1,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      },\n      {\n        "sql_text": "COMMIT",\n        "time": "254.42 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 0,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      }\n    ]\n  },\n  {\n    "time": "426.20 us",\n    "state": "COMMITTED",\n    "mode": "READ WRITE",\n    "autocommitted": "NO",\n    "gtid": "AUTOMATIC",\n    "isolation": "REPEATABLE READ",\n    "statements_executed": [\n      {\n        "sql_text": "INSERT INTO info VALUES (2, ''bar'')",\n        "time": "107.33 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 1,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      },\n      {\n        "sql_text": "COMMIT",\n        "time": "213.23 us",\n        "schema": "trx",\n        "rows_examined": 0,\n        "rows_affected": 0,\n        "rows_sent": 0,\n        "tmp_tables": 0,\n        "tmp_disk_tables": 0,\n        "sort_rows": 0,\n        "sort_merge_passes": 0\n      }\n    ]\n  }\n]\n1 row in set (0.03 sec)\n'
BEGIN
    DECLARE v_output LONGTEXT DEFAULT '{}';
    DECLARE v_msg_text TEXT DEFAULT '';
    DECLARE v_signal_msg TEXT DEFAULT '';
    DECLARE v_mysql_errno INT;
    DECLARE v_max_output_len BIGINT;
    -- Capture warnings/errors such as group_concat truncation
    -- and report as JSON error objects
    DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            v_msg_text = MESSAGE_TEXT,
            v_mysql_errno = MYSQL_ERRNO;
        IF v_mysql_errno = 1260 THEN
            SET v_signal_msg = CONCAT('{ "error": "Trx info truncated: ', v_msg_text, '" }');
        ELSE
            SET v_signal_msg = CONCAT('{ "error": "', v_msg_text, '" }');
        END IF;
        RETURN v_signal_msg;
    END;
    -- Set configuration options
    IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN
        SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config('ps_thread_trx_info.max_length', 65535);
    END IF;
    IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN
        SET @old_group_concat_max_len = @@session.group_concat_max_len;
        -- Convert to int value for the SET, and give some surrounding space
        SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5);
        SET SESSION group_concat_max_len = v_max_output_len;
    END IF;
    SET v_output = (
        SELECT CONCAT('[', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), ''), '\n]') AS trx_info
          FROM (SELECT trxi.thread_id, 
                       trxi.event_id,
                       GROUP_CONCAT(
                         IFNULL(
                           CONCAT('\n  {\n',
                                  '    "time": "', IFNULL(format_pico_time(trxi.timer_wait), ''), '",\n',
                                  '    "state": "', IFNULL(trxi.state, ''), '",\n',
                                  '    "mode": "', IFNULL(trxi.access_mode, ''), '",\n',
                                  '    "autocommitted": "', IFNULL(trxi.autocommit, ''), '",\n',
                                  '    "gtid": "', IFNULL(trxi.gtid, ''), '",\n',
                                  '    "isolation": "', IFNULL(trxi.isolation_level, ''), '",\n',
                                  '    "statements_executed": [', IFNULL(s.stmts, ''), IF(s.stmts IS NULL, ' ]\n', '\n    ]\n'),
                                  '  }'
                           ), 
                           '') 
                         ORDER BY event_id) AS trx_info
                  FROM (
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_current
                          WHERE thread_id = in_thread_id
                            AND end_event_id IS NULL)
                        UNION
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_history
                          WHERE thread_id = in_thread_id)
                       ) AS trxi
                  LEFT JOIN (SELECT thread_id,
                                    nesting_event_id,
                                    GROUP_CONCAT(
                                      IFNULL(
                                        CONCAT('\n      {\n',
                                               '        "sql_text": "', IFNULL(sys.format_statement(REPLACE(sql_text, '\\', '\\\\')), ''), '",\n',
                                               '        "time": "', IFNULL(format_pico_time(timer_wait), ''), '",\n',
                                               '        "schema": "', IFNULL(current_schema, ''), '",\n',
                                               '        "rows_examined": ', IFNULL(rows_examined, ''), ',\n',
                                               '        "rows_affected": ', IFNULL(rows_affected, ''), ',\n',
                                               '        "rows_sent": ', IFNULL(rows_sent, ''), ',\n',
                                               '        "tmp_tables": ', IFNULL(created_tmp_tables, ''), ',\n',
                                               '        "tmp_disk_tables": ', IFNULL(created_tmp_disk_tables, ''), ',\n',
                                               '        "sort_rows": ', IFNULL(sort_rows, ''), ',\n',
                                               '        "sort_merge_passes": ', IFNULL(sort_merge_passes, ''), '\n',
                                               '      }'), '') ORDER BY event_id) AS stmts
                               FROM performance_schema.events_statements_history
                              WHERE sql_text IS NOT NULL
                                AND thread_id = in_thread_id
                              GROUP BY thread_id, nesting_event_id
                            ) AS s 
                    ON trxi.thread_id = s.thread_id 
                   AND trxi.event_id = s.nesting_event_id
                 WHERE trxi.thread_id = in_thread_id
                 GROUP BY trxi.thread_id, trxi.event_id
                ) trxs
          GROUP BY thread_id
    );
    IF (@old_group_concat_max_len IS NOT NULL) THEN
        SET SESSION group_concat_max_len = @old_group_concat_max_len;
    END IF;
    RETURN v_output;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `quote_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `quote_identifier`(in_identifier TEXT) RETURNS text CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes an unquoted identifier (schema name, table name, etc.) and\nreturns the identifier quoted with backticks.\n\nParameters\n-----------\n\nin_identifier (TEXT):\n  The identifier to quote.\n\nReturns\n-----------\n\nTEXT CHARSET UTF8MB4\n\nExample\n-----------\n\nmysql> SELECT sys.quote_identifier(''my_identifier'') AS Identifier;\n+-----------------+\n| Identifier      |\n+-----------------+\n| `my_identifier` |\n+-----------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT sys.quote_identifier(''my`idenfier'') AS Identifier;\n+----------------+\n| Identifier     |\n+----------------+\n| `my``idenfier` |\n+----------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN CONCAT('`', REPLACE(in_identifier, '`', '``'), '`');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sys_get_config` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `sys_get_config`(
        in_variable_name VARCHAR(128),
        in_default_value VARCHAR(128)
    ) RETURNS varchar(128) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the value for the requested variable using the following logic:\n\n   1. If the option exists in sys.sys_config return the value from there.\n   2. Else fall back on the provided default value.\n\nNotes for using sys_get_config():\n\n   * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n     It is then expected that the caller is able to handle NULL for the given configuration option.\n   * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n     is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n   * If you want to check whether the configuration option has already been set and if not assign with\n     the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n     not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n     is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n     using an IF (...) THEN ... END IF; block (see example below).\n\nParameters\n-----------\n\nin_variable_name (VARCHAR(128)):\n  The name of the config option to return the value for.\n\nin_default_value (VARCHAR(128)):\n  The default value to return if the variable does not exist in sys.sys_config.\n\nReturns\n-----------\n\nVARCHAR(128)\n\nExample\n-----------\n\n-- Get the configuration value from sys.sys_config falling back on 128 if the option is not present in the table.\nmysql> SELECT sys.sys_get_config(''statement_truncate_len'', 128) AS Value;\n+-------+\n| Value |\n+-------+\n| 64    |\n+-------+\n1 row in set (0.00 sec)\n\n-- Check whether the option is already set, if not assign - IFNULL(...) one liner example.\nmysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(''statement_truncate_len'', 64));\nQuery OK, 0 rows affected (0.00 sec)\n\n-- Check whether the option is already set, if not assign - IF ... THEN ... END IF example.\nIF (@sys.statement_truncate_len IS NULL) THEN\n    SET @sys.statement_truncate_len = sys.sys_get_config(''statement_truncate_len'', 64);\nEND IF;\n'
BEGIN
    DECLARE v_value VARCHAR(128) DEFAULT NULL;
    -- Check if we have the variable in the sys.sys_config table
    SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);
    -- Protection against the variable not existing in sys_config
    IF (v_value IS NULL) THEN
        SET v_value = in_default_value;
    END IF;
    RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_major` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_major`() RETURNS tinyint unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the major version of MySQL Server.\n\nReturns\n-----------\n\nTINYINT UNSIGNED\n\nExample\n-----------\n\nmysql> SELECT VERSION(), sys.version_major();\n+--------------------------------------+---------------------+\n| VERSION()                            | sys.version_major() |\n+--------------------------------------+---------------------+\n| 5.7.9-enterprise-commercial-advanced | 5                   |\n+--------------------------------------+---------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_minor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_minor`() RETURNS tinyint unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the minor (release series) version of MySQL Server.\n\nReturns\n-----------\n\nTINYINT UNSIGNED\n\nExample\n-----------\n\nmysql> SELECT VERSION(), sys.server_minor();\n+--------------------------------------+---------------------+\n| VERSION()                            | sys.version_minor() |\n+--------------------------------------+---------------------+\n| 5.7.9-enterprise-commercial-advanced | 7                   |\n+--------------------------------------+---------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 2), '.', -1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_patch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` FUNCTION `version_patch`() RETURNS tinyint unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReturns the patch release version of MySQL Server.\n\nReturns\n-----------\n\nTINYINT UNSIGNED\n\nExample\n-----------\n\nmysql> SELECT VERSION(), sys.version_patch();\n+--------------------------------------+---------------------+\n| VERSION()                            | sys.version_patch() |\n+--------------------------------------+---------------------+\n| 5.7.9-enterprise-commercial-advanced | 9                   |\n+--------------------------------------+---------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', -1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_synonym_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `create_synonym_db`(
        IN in_db_name VARCHAR(64), 
        IN in_synonym VARCHAR(64)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes a source database name and synonym name, and then creates the \nsynonym database with views that point to all of the tables within\nthe source database.\n\nUseful for creating a "ps" synonym for "performance_schema",\nor "is" instead of "information_schema", for example.\n\nParameters\n-----------\n\nin_db_name (VARCHAR(64)):\n  The database name that you would like to create a synonym for.\nin_synonym (VARCHAR(64)):\n  The database synonym name.\n\nExample\n-----------\n\nmysql> SHOW DATABASES;\n+--------------------+\n| Database           |\n+--------------------+\n| information_schema |\n| mysql              |\n| performance_schema |\n| sys                |\n| test               |\n+--------------------+\n5 rows in set (0.00 sec)\n\nmysql> CALL sys.create_synonym_db(''performance_schema'', ''ps'');\n+---------------------------------------+\n| summary                               |\n+---------------------------------------+\n| Created 74 views in the `ps` database |\n+---------------------------------------+\n1 row in set (8.57 sec)\n\nQuery OK, 0 rows affected (8.57 sec)\n\nmysql> SHOW DATABASES;\n+--------------------+\n| Database           |\n+--------------------+\n| information_schema |\n| mysql              |\n| performance_schema |\n| ps                 |\n| sys                |\n| test               |\n+--------------------+\n6 rows in set (0.00 sec)\n\nmysql> SHOW FULL TABLES FROM ps;\n+------------------------------------------------------+------------+\n| Tables_in_ps                                         | Table_type |\n+------------------------------------------------------+------------+\n| accounts                                             | VIEW       |\n| cond_instances                                       | VIEW       |\n| events_stages_current                                | VIEW       |\n| events_stages_history                                | VIEW       |\n...\n'
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_db_name_check VARCHAR(64);
    DECLARE v_db_err_msg TEXT;
    DECLARE v_table VARCHAR(64);
    DECLARE v_views_created INT DEFAULT 0;
    DECLARE db_doesnt_exist CONDITION FOR SQLSTATE '42000';
    DECLARE db_name_exists CONDITION FOR SQLSTATE 'HY000';
    DECLARE c_table_names CURSOR FOR 
        SELECT TABLE_NAME 
          FROM INFORMATION_SCHEMA.TABLES 
         WHERE TABLE_SCHEMA = in_db_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    -- Check if the source database exists
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_db_name;
    IF v_db_name_check IS NULL THEN
        SET v_db_err_msg = CONCAT('Unknown database ', in_db_name);
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    -- Check if a database of the synonym name already exists
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_synonym;
    IF v_db_name_check = in_synonym THEN
        SET v_db_err_msg = CONCAT('Can\'t create database ', in_synonym, '; database exists');
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    -- All good, create the database and views
    SET @create_db_stmt := CONCAT('CREATE DATABASE ', sys.quote_identifier(in_synonym));
    PREPARE create_db_stmt FROM @create_db_stmt;
    EXECUTE create_db_stmt;
    DEALLOCATE PREPARE create_db_stmt;
    SET v_done = FALSE;
    OPEN c_table_names;
    c_table_names: LOOP
        FETCH c_table_names INTO v_table;
        IF v_done THEN
            LEAVE c_table_names;
        END IF;
        SET @create_view_stmt = CONCAT(
            'CREATE SQL SECURITY INVOKER VIEW ',
            sys.quote_identifier(in_synonym),
            '.',
            sys.quote_identifier(v_table),
            ' AS SELECT * FROM ',
            sys.quote_identifier(in_db_name),
            '.',
            sys.quote_identifier(v_table)
        );
        PREPARE create_view_stmt FROM @create_view_stmt;
        EXECUTE create_view_stmt;
        DEALLOCATE PREPARE create_view_stmt;
        SET v_views_created = v_views_created + 1;
    END LOOP;
    CLOSE c_table_names;
    SELECT CONCAT(
        'Created ', v_views_created, ' view',
        IF(v_views_created != 1, 's', ''), ' in the ',
        sys.quote_identifier(in_synonym), ' database'
    ) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `diagnostics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `diagnostics`(
        IN in_max_runtime int unsigned, IN in_interval int unsigned,
        IN in_auto_config enum ('current', 'medium', 'full')
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nCreate a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n\n   * The GLOBAL VARIABLES\n   * Several sys schema views including metrics or equivalent (depending on version and settings)\n   * Queries in the 95th percentile\n   * Several ndbinfo views for MySQL Cluster\n   * Replication (both master and slave) information.\n\nSome of the sys schema views are calculated as initial (optional), overall, delta:\n\n   * The initial view is the content of the view at the start of this procedure.\n     This output will be the same as the the start values used for the delta view.\n     The initial view is included if @sys.diagnostics.include_raw = ''ON''.\n   * The overall view is the content of the view at the end of this procedure.\n     This output is the same as the end values used for the delta view.\n     The overall view is always included.\n   * The delta view is the difference from the beginning to the end. Note that for min and max values\n     they are simply the min or max value from the end view respectively, so does not necessarily reflect\n     the minimum/maximum value in the monitored period.\n     Note: except for the metrics views the delta is only calculation between the first and last outputs.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nVersions supported:\n   * MySQL 5.6: 5.6.10 and later\n   * MySQL 5.7: 5.7.9 and later\n\nParameters\n-----------\n\nin_max_runtime (INT UNSIGNED):\n  The maximum time to keep collecting data.\n  Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\nin_interval (INT UNSIGNED):\n  How long to sleep between data collections.\n  Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\nin_auto_config (ENUM(''current'', ''medium'', ''full''))\n  Automatically enable Performance Schema instruments and consumers.\n  NOTE: The more that are enabled, the more impact on the performance.\n  Supported values are:\n     * current - use the current settings.\n     * medium - enable some settings. This requires the SUPER privilege.\n     * full - enables all settings. This will have a big impact on the\n              performance - be careful using this option. This requires\n              the SUPER privilege.\n  If another setting the ''current'' is chosen, the current settings\n  are restored at the end of the procedure.\n\n\nConfiguration Options\n----------------------\n\nsys.diagnostics.allow_i_s_tables\n  Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n  are many tables. Set to ''ON'' to allow, ''OFF'' to not allow.\n  Default is ''OFF''.\n\nsys.diagnostics.include_raw\n  Set to ''ON'' to include the raw data (e.g. the original output of "SELECT * FROM sys.metrics").\n  Use this to get the initial values of the various views.\n  Default is ''OFF''.\n\nsys.statement_truncate_len\n  How much of queries in the process list output to include.\n  Default is 64.\n\nsys.debug\n  Whether to provide debugging output.\n  Default is ''OFF''. Set to ''ON'' to include.\n\n\nExample\n--------\n\nTo create a report and append it to the file diag.out:\n\nmysql> TEE diag.out;\nmysql> CALL sys.diagnostics(120, 30, ''current'');\n...\nmysql> NOTEE;\n'
BEGIN
    DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8mb4 DEFAULT 'NO';
    DECLARE v_this_thread_enabled, v_has_metrics ENUM('YES', 'NO');
    DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8mb4;
    DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT;
    DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED;
    DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;
    -- The width of each of the status outputs in the summery
    DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50;
    DECLARE v_done BOOLEAN DEFAULT FALSE;
    -- Do not include the following ndbinfo views:
    --    'blocks'                    Static
    --    'config_params'             Static
    --    'dict_obj_types'            Static
    --    'disk_write_speed_base'     Can generate lots of output - only include aggregate views here
    --    'memory_per_fragment'       Can generate lots of output
    --    'memoryusage'               Handled separately
    --    'operations_per_fragment'   Can generate lots of output
    --    'threadblocks'              Only needed once
    DECLARE c_ndbinfo CURSOR FOR
        SELECT TABLE_NAME
          FROM information_schema.TABLES
         WHERE TABLE_SCHEMA = 'ndbinfo'
               AND TABLE_NAME NOT IN (
                  'blocks',
                  'config_params',
                  'dict_obj_types',
                  'disk_write_speed_base',
                  'memory_per_fragment',
                  'memoryusage',
                  'operations_per_fragment',
                  'threadblocks'
               );
    DECLARE c_sysviews_w_delta CURSOR FOR
        SELECT table_name
          FROM tmp_sys_views_delta
         ORDER BY table_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    -- Do not track the current thread - no reason to clutter the output
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    -- Check options are sane
    IF (in_max_runtime < in_interval) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than or equal to in_interval';
    END IF;
    IF (in_max_runtime = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than 0';
    END IF;
    IF (in_interval = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_interval must be greater than 0';
    END IF;
    -- Set configuration options
    IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN
        SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config('diagnostics.allow_i_s_tables', 'OFF');
    END IF;
    IF (@sys.diagnostics.include_raw IS NULL) THEN
        SET @sys.diagnostics.include_raw      = sys.sys_get_config('diagnostics.include_raw'     , 'OFF');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                        = sys.sys_get_config('debug'                       , 'OFF');
    END IF;
    IF (@sys.statement_truncate_len IS NULL) THEN
        SET @sys.statement_truncate_len       = sys.sys_get_config('statement_truncate_len'      , '64' );
    END IF;
    -- Temporary table are used - disable sql_log_bin if necessary to prevent them replicating
    SET @log_bin := @@sql_log_bin;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = 0;
    END IF;
    -- Some metrics variables doesn't make sense in delta and rate calculations even if they are numeric
    -- as they really are more like settings or "current" status.
    SET v_no_delta_names = CONCAT('s%{COUNT}.Variable_name NOT IN (',
        '''innodb_buffer_pool_pages_total'', ',
        '''innodb_page_size'', ',
        '''last_query_cost'', ',
        '''last_query_partial_plans'', ',
        '''qcache_total_blocks'', ',
        '''slave_last_heartbeat'', ',
        '''ssl_ctx_verify_depth'', ',
        '''ssl_ctx_verify_mode'', ',
        '''ssl_session_cache_size'', ',
        '''ssl_verify_depth'', ',
        '''ssl_verify_mode'', ',
        '''ssl_version'', ',
        '''buffer_flush_lsn_avg_rate'', ',
        '''buffer_flush_pct_for_dirty'', ',
        '''buffer_flush_pct_for_lsn'', ',
        '''buffer_pool_pages_total'', ',
        '''lock_row_lock_time_avg'', ',
        '''lock_row_lock_time_max'', ',
        '''innodb_page_size''',
    ')');
    IF (in_auto_config <> 'current') THEN
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('Updating Performance Schema configuration to ', in_auto_config) AS 'Debug';
        END IF;
        CALL sys.ps_setup_save(0);
        IF (in_auto_config = 'medium') THEN
            -- Enable all consumers except %history and %history_long
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES'
            WHERE NAME NOT LIKE '%\_history%';
            -- Enable all instruments except wait/synch/%
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES'
            WHERE NAME NOT LIKE 'wait/synch/%';
        ELSEIF (in_auto_config = 'full') THEN
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES';
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES';
        END IF;
        -- Enable all threads except this one
        UPDATE performance_schema.threads
           SET INSTRUMENTED = 'YES'
         WHERE PROCESSLIST_ID <> CONNECTION_ID();
    END IF;
    SET v_start        = UNIX_TIMESTAMP(NOW(2)),
        in_interval    = IFNULL(in_interval, 30),
        in_max_runtime = IFNULL(in_max_runtime, 60);
    -- Get a quick ref with hostname, server UUID, and the time for the report.
    SET v_banner = REPEAT(
                      '-',
                      LEAST(
                         GREATEST(
                            36,
                            CHAR_LENGTH(VERSION()),
                            CHAR_LENGTH(@@global.version_comment),
                            CHAR_LENGTH(@@global.version_compile_os),
                            CHAR_LENGTH(@@global.version_compile_machine),
                            CHAR_LENGTH(@@global.socket),
                            CHAR_LENGTH(@@global.datadir)
                         ),
                         64
                      )
                   );
    SELECT 'Hostname' AS 'Name', @@global.hostname AS 'Value'
    UNION ALL
    SELECT 'Port' AS 'Name', @@global.port AS 'Value'
    UNION ALL
    SELECT 'Socket' AS 'Name', @@global.socket AS 'Value'
    UNION ALL
    SELECT 'Datadir' AS 'Name', @@global.datadir AS 'Value'
    UNION ALL
    SELECT 'Server UUID' AS 'Name', @@global.server_uuid AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'MySQL Version' AS 'Name', VERSION() AS 'Value'
    UNION ALL
    SELECT 'Sys Schema Version' AS 'Name', (SELECT sys_version FROM sys.version) AS 'Value'
    UNION ALL
    SELECT 'Version Comment' AS 'Name', @@global.version_comment AS 'Value'
    UNION ALL
    SELECT 'Version Compile OS' AS 'Name', @@global.version_compile_os AS 'Value'
    UNION ALL
    SELECT 'Version Compile Machine' AS 'Name', @@global.version_compile_machine AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'UTC Time' AS 'Name', UTC_TIMESTAMP() AS 'Value'
    UNION ALL
    SELECT 'Local Time' AS 'Name', NOW() AS 'Value'
    UNION ALL
    SELECT 'Time Zone' AS 'Name', @@global.time_zone AS 'Value'
    UNION ALL
    SELECT 'System Time Zone' AS 'Name', @@global.system_time_zone AS 'Value'
    UNION ALL
    SELECT 'Time Zone Offset' AS 'Name', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS 'Value';
    -- Are the InnoDB, NDBCluster, and Performance Schema storage engines present?
    SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'InnoDB'), 'NO'),
        v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'NDBCluster'), 'NO'),
        v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'PERFORMANCE_SCHEMA'), 'NO'),
        v_has_ps_replication = IF(v_has_ps = 'YES'
                                   AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'replication_applier_status'),
                                   'YES',
                                   'NO'
                               ),
        v_has_replication    =  IF(v_has_ps_replication = 'YES', IF((SELECT COUNT(*) FROM performance_schema.replication_connection_status) > 0, 'YES', 'NO'),
                                  IF(@@master_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_master_info) > 0, 'YES', 'NO'),
                                     IF(@@relay_log_info_repository = 'TABLE', IF((SELECT COUNT(*) FROM mysql.slave_relay_log_info) > 0, 'YES', 'NO'),
                                        'MAYBE')) ) ,
        v_has_metrics        = IF(v_has_ps = 'YES' OR (sys.version_major() = 5 AND sys.version_minor() = 6), 'YES', 'NO');
    IF (@sys.debug = 'ON') THEN
       SELECT v_has_innodb AS 'Has_InnoDB', v_has_ndb AS 'Has_NDBCluster',
              v_has_ps AS 'Has_Performance_Schema',
              v_has_metrics AS 'Has_metrics',
              v_has_ps_replication 'AS Has_P_S_Replication', v_has_replication AS 'Has_Replication';
    END IF;
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        -- Need to use prepared statement as just having the query as a plain command
        -- will generate an error if the InnoDB storage engine is not present
        SET @sys.diagnostics.sql = 'SHOW ENGINE InnoDB STATUS';
        PREPARE stmt_innodb_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ps = 'YES') THEN
        -- Need to use prepared statement as just having the query as a plain command
        -- will generate an error if the InnoDB storage engine is not present
        SET @sys.diagnostics.sql = 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS';
        PREPARE stmt_ps_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        -- Need to use prepared statement as just having the query as a plain command
        -- will generate an error if the NDBCluster storage engine is not present
        SET @sys.diagnostics.sql = 'SHOW ENGINE NDBCLUSTER STATUS';
        PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql;
    END IF;
    SET @sys.diagnostics.sql_gen_query_template = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME LIKE ''%latency''
                         THEN CONCAT(''format_pico_time('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    ELSE COLUMN_NAME
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', SUBSTRING(TABLE_NAME FROM 3), ''_%{OUTPUT}''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = ''sys'' AND TABLE_NAME = ?
 GROUP BY TABLE_NAME';
    SET @sys.diagnostics.sql_gen_query_delta = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN FIND_IN_SET(COLUMN_NAME COLLATE utf8_general_ci, diag.pk)
                         THEN COLUMN_NAME
                    WHEN diag.TABLE_NAME = ''io_global_by_file_by_bytes'' AND COLUMN_NAME COLLATE utf8_general_ci = ''write_pct''
                         THEN CONCAT(''IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))'',
                                     ''/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS '',
                                     COLUMN_NAME)
                    WHEN (diag.TABLE_NAME, COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''format_bytes(e.'', COLUMN_NAME, ''-IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (''max_'', ''min_'') AND SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''format_pico_time(e.'', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME COLLATE utf8_general_ci = ''avg_latency''
                         THEN CONCAT(''format_pico_time((e.total_latency - IFNULL(s.total_latency, 0))'',
                                     ''/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -12) = ''_avg_latency''
                         THEN CONCAT(''format_pico_time((e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency, 0))'',
                                     ''/NULLIF(e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s, 0), 0)) AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME LIKE ''%latency''
                         THEN CONCAT(''format_pico_time(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME IN (''avg_read'', ''avg_write'', ''avg_written'')
                         THEN CONCAT(''format_bytes(IFNULL((e.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), ''-IFNULL(s.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), '', 0))'',
                                     ''/NULLIF(e.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), ''-IFNULL(s.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), '', 0), 0), 0)) AS '',
                                     COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''format_bytes(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    ELSE CONCAT(''(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', diag.TABLE_NAME, ''_end e
       LEFT OUTER JOIN tmp_'', diag.TABLE_NAME, ''_start s USING ('', diag.pk, '')''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM tmp_sys_views_delta diag
       INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME COLLATE utf8_general_ci = CONCAT(''x$'', diag.TABLE_NAME)
 WHERE c.TABLE_SCHEMA = ''sys'' AND diag.TABLE_NAME = ?
 GROUP BY diag.TABLE_NAME';
    IF (v_has_ps = 'YES') THEN
        -- Create temporary table with the ORDER BY clauses. Will be required both for the initial (if included) and end queries
        DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta;
        CREATE TEMPORARY TABLE tmp_sys_views_delta (
            TABLE_NAME varchar(64) NOT NULL,
            order_by text COMMENT 'ORDER BY clause for the initial and overall views',
            order_by_delta text COMMENT 'ORDER BY clause for the delta views',
            where_delta text COMMENT 'WHERE clause to use for delta views to only include rows with a "count" > 0',
            limit_rows int unsigned COMMENT 'The maximum number of rows to include for the view',
            pk varchar(128) COMMENT 'Used with the FIND_IN_SET() function so use comma separated list without whitespace',
            PRIMARY KEY (TABLE_NAME)
        );
        -- %{OUTPUT} will be replace by the suffix used for the output.
        IF (@sys.debug = 'ON') THEN
            SELECT 'Populating tmp_sys_views_delta' AS 'Debug';
        END IF;
        INSERT INTO tmp_sys_views_delta
        VALUES ('host_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io_type'       , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_stages'             , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host'),
               ('host_summary_by_statement_type'     , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,statement'),
               ('io_by_thread_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,thread_id,processlist_id'),
               ('io_global_by_file_by_bytes'         , '%{TABLE}.total DESC',
                                                       '(e.total-IFNULL(s.total, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_file_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_wait_by_bytes'         , '%{TABLE}.total_requested DESC',
                                                       '(e.total_requested-IFNULL(s.total_requested, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('io_global_by_wait_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('schema_index_statistics'            , '(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC',
                                                       '((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC',
                                                       '((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0',
                                                       100, 'table_schema,table_name,index_name'),
               ('schema_table_statistics'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) > 0', 100, 'table_schema,table_name'),
               ('schema_tables_with_full_table_scans', '%{TABLE}.rows_full_scanned DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0', 100, 'object_schema,object_name'),
               ('user_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io_type'       , '%{TABLE}.user, %{TABLE}.latency DESC',
                                                       'e.user, (e.latency-IFNULL(s.latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_stages'             , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user'),
               ('user_summary_by_statement_type'     , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,statement'),
               ('wait_classes_global_by_avg_latency' , 'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC',
                                                       'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('wait_classes_global_by_latency'     , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('waits_by_host_by_latency'           , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event'),
               ('waits_by_user_by_latency'           , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event'),
               ('waits_global_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'events')
        ;
    END IF;
    SELECT '

=======================

     Configuration

=======================

' AS '';
    -- Get the configuration.
    SELECT 'GLOBAL VARIABLES' AS 'The following output is:';
    SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME;
    IF (v_has_ps = 'YES') THEN
        -- Overview of the Performance Schema dynamic settings used for this report.
        SELECT 'Performance Schema Setup - Actors' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_actors;
        SELECT 'Performance Schema Setup - Consumers' AS 'The following output is:';
        SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS
          FROM performance_schema.setup_consumers;
        SELECT 'Performance Schema Setup - Instruments' AS 'The following output is:';
        SELECT SUBSTRING_INDEX(NAME, '/', 2) AS 'InstrumentClass',
               ROUND(100*SUM(IF(ENABLED = 'YES', 1, 0))/COUNT(*), 2) AS 'EnabledPct',
               ROUND(100*SUM(IF(TIMED = 'YES', 1, 0))/COUNT(*), 2) AS 'TimedPct'
          FROM performance_schema.setup_instruments
         GROUP BY SUBSTRING_INDEX(NAME, '/', 2)
         ORDER BY SUBSTRING_INDEX(NAME, '/', 2);
        SELECT 'Performance Schema Setup - Objects' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_objects;
        SELECT 'Performance Schema Setup - Threads' AS 'The following output is:';
        SELECT `TYPE` AS ThreadType, COUNT(*) AS 'Total', ROUND(100*SUM(IF(INSTRUMENTED = 'YES', 1, 0))/COUNT(*), 2) AS 'InstrumentedPct'
          FROM performance_schema.threads
        GROUP BY TYPE;
    END IF;
    IF (v_has_replication = 'NO') THEN
        SELECT 'No Replication Configured' AS 'Replication Status';
    ELSE
        -- No guarantee that replication is actually configured, but we can't really know
        SELECT CONCAT('Replication Configured: ', v_has_replication, ' - Performance Schema Replication Tables: ', v_has_ps_replication) AS 'Replication Status';
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Connection Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_connection_configuration ORDER BY CHANNEL_NAME ;
        END IF;
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Applier Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME;
        END IF;
        IF (@@master_info_repository = 'TABLE') THEN
            SELECT 'Replication - Master Info Repository Configuration' AS 'The following output is:';
            -- Can't just do SELECT *  as the password may be present in plain text
            -- Don't include binary log file and position as that will be determined in each iteration as well
            SELECT  Channel_name, Host, User_name, Port, Connect_retry,
                   Enabled_ssl, Ssl_ca, Ssl_capath, Ssl_cert, Ssl_cipher, Ssl_key, Ssl_verify_server_cert,
                   Heartbeat, Bind, Ignored_server_ids, Uuid, Retry_count, Ssl_crl, Ssl_crlpath,
                   Tls_version, Enabled_auto_position
              FROM mysql.slave_master_info ORDER BY Channel_name ;
        END IF;
        IF (@@relay_log_info_repository = 'TABLE') THEN
            SELECT 'Replication - Relay Log Repository Configuration' AS 'The following output is:';
            SELECT  Channel_name, Sql_delay, Number_of_workers, Id
              FROM mysql.slave_relay_log_info ORDER BY Channel_name ;
        END IF;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
       SELECT 'Cluster Thread Blocks' AS 'The following output is:';
       SELECT * FROM ndbinfo.threadblocks;
    END IF;
    -- For a number of sys views as well as events_statements_summary_by_digest,
    -- just get the start data and then at the end output the overall and delta values
    IF (v_has_ps = 'YES') THEN
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SELECT '

========================

     Initial Status

========================

' AS '';
        END IF;
        DROP TEMPORARY TABLE IF EXISTS tmp_digests_start;
        CALL sys.statement_performance_analyzer('create_tmp', 'tmp_digests_start', NULL);
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('save', 'tmp_digests_start', NULL);
        -- Loop over the sys views where deltas should be calculated.
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'start');
            IF (@sys.debug = 'ON') THEN
                SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
                SELECT @sys.diagnostics.sql AS 'Debug';
            END IF;
            PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        END IF;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the initial content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_start`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_start` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            IF (@sys.diagnostics.include_raw = 'ON') THEN
                SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
                -- If necessary add ORDER BY and LIMIT
                SELECT CONCAT(@sys.diagnostics.sql_select,
                              IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_start'))), ''),
                              IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                       )
                  INTO @sys.diagnostics.sql_select
                  FROM tmp_sys_views_delta
                 WHERE TABLE_NAME COLLATE utf8mb4_0900_as_ci = v_table_name;
                SELECT CONCAT('Initial ', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            END IF;
        END LOOP;
        CLOSE c_sysviews_w_delta;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            DEALLOCATE PREPARE stmt_gen_query;
        END IF;
    END IF;
    -- If in_include_status_summary is TRUE then a temporary table is required to store the data
    SET v_sql_status_summary_select = 'SELECT Variable_name',
        v_sql_status_summary_delta  = '',
        v_sql_status_summary_from   = '';
    -- Start the loop
    REPEAT
        SET v_output_count = v_output_count + 1;
        IF (v_output_count > 1) THEN
            -- Don't sleep on the first execution
            SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start);
            SELECT NOW() AS 'Time', CONCAT('Going to sleep for ', v_sleep, ' seconds. Please do not interrupt') AS 'The following output is:';
            DO SLEEP(in_interval);
        END IF;
        SET v_iter_start = UNIX_TIMESTAMP(NOW(2));
        SELECT NOW(), CONCAT('Iteration Number ', IFNULL(v_output_count, 'NULL')) AS 'The following output is:';
        -- Even in 5.7 there is no way to get all the info from SHOW MASTER|SLAVE STATUS using the Performance Schema or
        -- other tables, so include them even though they are no longer optimal solutions and if present get the additional
        -- information from the other tables available.
        IF (@@log_bin = 1) THEN
            SELECT 'SHOW MASTER STATUS' AS 'The following output is:';
            SHOW MASTER STATUS;
        END IF;
        IF (v_has_replication <> 'NO') THEN
            SELECT 'SHOW SLAVE STATUS' AS 'The following output is:';
            SHOW SLAVE STATUS;
            IF (v_has_ps_replication = 'YES') THEN
                SELECT 'Replication Connection Status' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_connection_status;
                SELECT 'Replication Applier Status' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_applier_status ORDER BY CHANNEL_NAME;
                SELECT 'Replication Applier Status - Coordinator' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_applier_status_by_coordinator ORDER BY CHANNEL_NAME;
                SELECT 'Replication Applier Status - Worker' AS 'The following output is:';
                SELECT * FROM performance_schema.replication_applier_status_by_worker ORDER BY CHANNEL_NAME, WORKER_ID;
            END IF;
            IF (@@master_info_repository = 'TABLE') THEN
                SELECT 'Replication - Master Log Status' AS 'The following output is:';
                SELECT Master_log_name, Master_log_pos FROM mysql.slave_master_info;
            END IF;
            IF (@@relay_log_info_repository = 'TABLE') THEN
                SELECT 'Replication - Relay Log Status' AS 'The following output is:';
                SELECT sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos FROM mysql.slave_relay_log_info;
                SELECT 'Replication - Worker Status' AS 'The following output is:';
                SELECT Id, sys.format_path(Relay_log_name) AS Relay_log_name, Relay_log_pos, Master_log_name, Master_log_pos,
                       sys.format_path(Checkpoint_relay_log_name) AS Checkpoint_relay_log_name, Checkpoint_relay_log_pos,
                       Checkpoint_master_log_name, Checkpoint_master_log_pos, Checkpoint_seqno, Checkpoint_group_size,
                       HEX(Checkpoint_group_bitmap) AS Checkpoint_group_bitmap , Channel_name
                  FROM mysql.slave_worker_info
              ORDER BY  Channel_name, Id;
            END IF;
        END IF;
        -- We need one table per output as a temporary table cannot be opened twice in the same query, and we need to
        -- join the outputs in the summary at the end.
        SET v_table_name = CONCAT('tmp_metrics_', v_output_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
        -- Currently information_schema.GLOBAL_STATUS has VARIABLE_VALUE as varchar(1024)
        CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE ', v_table_name, ' (
  Variable_name VARCHAR(193) NOT NULL,
  Variable_value VARCHAR(1024),
  Type VARCHAR(225) NOT NULL,
  Enabled ENUM(''YES'', ''NO'', ''PARTIAL'') NOT NULL,
  PRIMARY KEY (Type, Variable_name)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4'));
        IF (v_has_metrics) THEN
            SET @sys.diagnostics.sql = CONCAT(
                'INSERT INTO ', v_table_name,
                ' SELECT Variable_name, REPLACE(Variable_value, ''\n'', ''\\\\n'') AS Variable_value, Type, Enabled FROM sys.metrics'
            );
        ELSE
            -- 5.7+ and the Performance Schema disabled. Use information_schema.GLOBAL_STATUS instead like in 5.6.
            SET @sys.diagnostics.sql = CONCAT(
                'INSERT INTO ', v_table_name,
                '(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, ''\n'', ''\\\\n'') AS Variable_value,
                         ''Global Status'' AS Type, ''YES'' AS Enabled
  FROM performance_schema.global_status
) UNION ALL (
SELECT NAME AS Variable_name, COUNT AS Variable_value,
       CONCAT(''InnoDB Metrics - '', SUBSYSTEM) AS Type,
       IF(STATUS = ''enabled'', ''YES'', ''NO'') AS Enabled
  FROM information_schema.INNODB_METRICS
  -- Deduplication - some variables exists both in GLOBAL_STATUS and INNODB_METRICS
  -- Keep the one from GLOBAL_STATUS as it is always enabled and it''s more likely to be used for existing tools.
 WHERE NAME NOT IN (
     ''lock_row_lock_time'', ''lock_row_lock_time_avg'', ''lock_row_lock_time_max'', ''lock_row_lock_waits'',
     ''buffer_pool_reads'', ''buffer_pool_read_requests'', ''buffer_pool_write_requests'', ''buffer_pool_wait_free'',
     ''buffer_pool_read_ahead'', ''buffer_pool_read_ahead_evicted'', ''buffer_pool_pages_total'', ''buffer_pool_pages_misc'',
     ''buffer_pool_pages_data'', ''buffer_pool_bytes_data'', ''buffer_pool_pages_dirty'', ''buffer_pool_bytes_dirty'',
     ''buffer_pool_pages_free'', ''buffer_pages_created'', ''buffer_pages_written'', ''buffer_pages_read'',
     ''buffer_data_reads'', ''buffer_data_written'', ''file_num_open_files'',
     ''os_log_bytes_written'', ''os_log_fsyncs'', ''os_log_pending_fsyncs'', ''os_log_pending_writes'',
     ''log_waits'', ''log_write_requests'', ''log_writes'', ''innodb_dblwr_writes'', ''innodb_dblwr_pages_written'', ''innodb_page_size'')
) UNION ALL (
SELECT ''NOW()'' AS Variable_name, NOW(3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled
) UNION ALL (
SELECT ''UNIX_TIMESTAMP()'' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled
)
 ORDER BY Type, Variable_name;'
            );
        END IF;
        CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);
        -- Prepare the query to retrieve the summary
        CALL sys.execute_prepared_stmt(
            CONCAT('(SELECT Variable_value INTO @sys.diagnostics.output_time FROM ', v_table_name, ' WHERE Type = ''System Time'' AND Variable_name = ''UNIX_TIMESTAMP()'')')
        );
        SET v_output_time = @sys.diagnostics.output_time;
        -- Limit each value to v_status_summary_width chars (when v_has_ndb = TRUE the values can be very wide - refer to the output here for the full values)
        -- v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from
        SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, ',
       CONCAT(
           LEFT(s', v_output_count, '.Variable_value, ', v_status_summary_width, '),
           IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT('' ('', ROUND(s', v_output_count, '.Variable_value/', v_output_time, ', 2), ''/sec)''), '''')
       ) AS ''Output ', v_output_count, ''''),
            v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, '
',
                                                    IF(v_output_count = 1, '  FROM ', '       INNER JOIN '),
                                                    v_table_name, ' s', v_output_count,
                                                    IF (v_output_count = 1, '', ' USING (Type, Variable_name)'));
        IF (v_output_count > 1) THEN
            SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, ',
       IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'',
          CONCAT(IF(s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'' OR s', v_output_count, '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'',
                    ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value), 2),
                    (s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)
                   ),
                 '' ('', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)/(', v_output_time, '-', v_output_time_prev, '), 2), ''/sec)''
          ),
          ''''
       ) AS ''Delta (', (v_output_count-1), ' -> ', v_output_count, ')''');
        END IF;
        SET v_output_time_prev = v_output_time;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            IF (v_has_metrics) THEN
                SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
            ELSE
                SELECT 'sys.metrics equivalent' AS 'The following output is:';
            END IF;
            -- Ensures that the output here is the same as the one used in the status summary at the end
            CALL sys.execute_prepared_stmt(CONCAT('SELECT Type, Variable_name, Enabled, Variable_value FROM ', v_table_name, ' ORDER BY Type, Variable_name'));
        END IF;
        -- InnoDB
        IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE INNODB STATUS' AS 'The following output is:';
            EXECUTE stmt_innodb_status;
            SELECT 'InnoDB - Transactions' AS 'The following output is:';
            SELECT * FROM information_schema.INNODB_TRX;
        END IF;
        -- NDBCluster
        IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE NDBCLUSTER STATUS' AS 'The following output is:';
            EXECUTE stmt_ndbcluster_status;
            SELECT 'ndbinfo.memoryusage' AS 'The following output is:';
            SELECT node_id, memory_type, format_bytes(used) AS used, used_pages, format_bytes(total) AS total, total_pages,
                   ROUND(100*(used/total), 2) AS 'Used %'
            FROM ndbinfo.memoryusage;
            -- Loop over the ndbinfo tables (except memoryusage which was handled separately above).
            -- The exact tables available are version dependent, so get the list from the Information Schema.
            SET v_done = FALSE;
            OPEN c_ndbinfo;
            c_ndbinfo_loop: LOOP
                FETCH c_ndbinfo INTO v_table_name;
                IF v_done THEN
                LEAVE c_ndbinfo_loop;
                END IF;
                SELECT CONCAT('SELECT * FROM ndbinfo.', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(CONCAT('SELECT * FROM `ndbinfo`.`', v_table_name, '`'));
            END LOOP;
            CLOSE c_ndbinfo;
            SELECT * FROM information_schema.FILES;
        END IF;
        SELECT 'SELECT * FROM sys.processlist' AS 'The following output is:';
        SELECT processlist.* FROM sys.processlist;
        IF (v_has_ps = 'YES') THEN
            -- latest_file_io
            IF (sys.ps_is_consumer_enabled('events_waits_history_long') = 'YES') THEN
                SELECT 'SELECT * FROM sys.latest_file_io' AS 'The following output is:';
                SELECT * FROM sys.latest_file_io;
            END IF;
            -- current memory usage
            IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE 'memory/%' AND ENABLED = 'YES')) THEN
                SELECT 'SELECT * FROM sys.memory_by_host_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_host_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_thread_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_thread_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_user_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_user_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_global_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_global_by_current_bytes;
            END IF;
        END IF;
        SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start);
    UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;
    -- Get Performance Schema status
    IF (v_has_ps = 'YES') THEN
        SELECT 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS' AS 'The following output is:';
        EXECUTE stmt_ps_status;
    END IF;
    -- Deallocate prepared statements
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_innodb_status;
    END IF;
    IF (v_has_ps = 'YES') THEN
        DEALLOCATE PREPARE stmt_ps_status;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_ndbcluster_status;
    END IF;
    SELECT '

============================

     Schema Information

============================

' AS '';
    SELECT COUNT(*) AS 'Total Number of Tables' FROM information_schema.TABLES;
    -- The cost of information_schema.TABLES.DATA_LENGTH depends mostly on the number of tables
    IF (@sys.diagnostics.allow_i_s_tables = 'ON') THEN
        SELECT 'Storage Engine Usage' AS 'The following output is:';
        SELECT ENGINE, COUNT(*) AS NUM_TABLES,
                format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH,
                format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH,
                format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL
            FROM information_schema.TABLES
            GROUP BY ENGINE;
        SELECT 'Schema Object Overview' AS 'The following output is:';
        SELECT * FROM sys.schema_object_overview;
        SELECT 'Tables without a PRIMARY KEY' AS 'The following output is:';
        SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables
          FROM information_schema.TABLES
               LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA
                                                                AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME
                                                                AND STATISTICS.INDEX_NAME = 'PRIMARY'
         WHERE STATISTICS.TABLE_NAME IS NULL
               AND TABLES.TABLE_SCHEMA NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys')
               AND TABLES.TABLE_TYPE = 'BASE TABLE'
         GROUP BY TABLES.TABLE_SCHEMA, ENGINE;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT 'Unused Indexes' AS 'The following output is:';
        SELECT object_schema, COUNT(*) AS NumUnusedIndexes
          FROM performance_schema.table_io_waits_summary_by_index_usage
         WHERE index_name IS NOT NULL
               AND count_star = 0
               AND object_schema NOT IN ('mysql', 'sys')
               AND index_name != 'PRIMARY'
         GROUP BY object_schema;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT '

=========================

     Overall Status

=========================

' AS '';
        SELECT 'CALL sys.ps_statement_avg_latency_histogram()' AS 'The following output is:';
        CALL sys.ps_statement_avg_latency_histogram();
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('overall', NULL, 'with_runtimes_in_95th_percentile');
        SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'end');
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
            SELECT @sys.diagnostics.sql AS 'Debug';
        END IF;
        PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the final content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_end` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
            EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
            -- If necessary add ORDER BY and LIMIT
            SELECT CONCAT(@sys.diagnostics.sql_select,
                            IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_end'))), ''),
                            IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                    )
                INTO @sys.diagnostics.sql_select
                FROM tmp_sys_views_delta
                WHERE TABLE_NAME COLLATE utf8mb4_0900_as_ci = v_table_name;
            SELECT CONCAT('Overall ', v_table_name) AS 'The following output is:';
            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
        END LOOP;
        CLOSE c_sysviews_w_delta;
        DEALLOCATE PREPARE stmt_gen_query;
        SELECT '

======================

     Delta Status

======================

' AS '';
        CALL sys.statement_performance_analyzer('delta', 'tmp_digests_start', 'with_runtimes_in_95th_percentile');
        CALL sys.statement_performance_analyzer('cleanup', NULL, NULL);
        DROP TEMPORARY TABLE tmp_digests_start;
        -- @sys.diagnostics.sql_gen_query_delta is defined near the to together with @sys.diagnostics.sql_gen_query_template
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view delta' AS 'Debug';
            SELECT @sys.diagnostics.sql_gen_query_delta AS 'Debug';
        END IF;
        PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;
        SET v_old_group_concat_max_len = @@session.group_concat_max_len;
        SET @@session.group_concat_max_len = 2048;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            SET @sys.diagnostics.table_name = v_table_name;
            EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name;
            -- If necessary add WHERE, ORDER BY, and LIMIT
            SELECT CONCAT(@sys.diagnostics.sql_select,
                            IF(where_delta IS NOT NULL, CONCAT('\n WHERE ', where_delta), ''),
                            IF(order_by_delta IS NOT NULL, CONCAT('\n ORDER BY ', order_by_delta), ''),
                            IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                    )
                INTO @sys.diagnostics.sql_select
                FROM tmp_sys_views_delta
                WHERE TABLE_NAME COLLATE utf8mb4_0900_as_ci = v_table_name;
            SELECT CONCAT('Delta ', v_table_name) AS 'The following output is:';
            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_start`'));
        END LOOP;
        CLOSE c_sysviews_w_delta;
        SET @@session.group_concat_max_len = v_old_group_concat_max_len;
        DEALLOCATE PREPARE stmt_gen_query_delta;
        DROP TEMPORARY TABLE tmp_sys_views_delta;
    END IF;
    IF (v_has_metrics) THEN
        SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
    ELSE
        SELECT 'sys.metrics equivalent' AS 'The following output is:';
    END IF;
    CALL sys.execute_prepared_stmt(
        CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, ', Type, s1.Enabled', v_sql_status_summary_from,
               '
 ORDER BY Type, Variable_name'
        )
    );
    -- Remove all the metrics temporary tables again
    SET v_count = 0;
    WHILE (v_count < v_output_count) DO
        SET v_count = v_count + 1;
        SET v_table_name = CONCAT('tmp_metrics_', v_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
    END WHILE;
    IF (in_auto_config <> 'current') THEN
        CALL sys.ps_setup_reload_saved();
        SET sql_log_bin = @log_bin;
    END IF;
    -- Reset the @sys.diagnostics.% user variables internal to this procedure
    SET @sys.diagnostics.output_time            = NULL,
        @sys.diagnostics.sql                    = NULL,
        @sys.diagnostics.sql_gen_query_delta    = NULL,
        @sys.diagnostics.sql_gen_query_template = NULL,
        @sys.diagnostics.sql_select             = NULL,
        @sys.diagnostics.table_name             = NULL;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `execute_prepared_stmt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `execute_prepared_stmt`(
        IN in_query longtext CHARACTER SET UTF8MB4
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTakes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\nso the procedure is mainly useful for executing one off dynamically created queries.\n\nThe sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n\n\nParameters\n-----------\n\nin_query (longtext CHARACTER SET UTF8MB4):\n  The query to execute.\n\n\nConfiguration Options\n----------------------\n\nsys.debug\n  Whether to provide debugging output.\n  Default is ''OFF''. Set to ''ON'' to include.\n\n\nExample\n--------\n\nmysql> CALL sys.execute_prepared_stmt(''SELECT * FROM sys.sys_config'');\n+------------------------+-------+---------------------+--------+\n| variable               | value | set_time            | set_by |\n+------------------------+-------+---------------------+--------+\n| statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n+------------------------+-------+---------------------+--------+\n1 row in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.00 sec)\n'
BEGIN
    -- Set configuration options
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug = sys.sys_get_config('debug', 'OFF');
    END IF;
    -- Verify the query exists
    -- The shortest possible query is "DO 1"
    IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN
       SIGNAL SQLSTATE '45000'
          SET MESSAGE_TEXT = "The @sys.execute_prepared_stmt.sql must contain a query";
    END IF;
    SET @sys.execute_prepared_stmt.sql = in_query;
    IF (@sys.debug = 'ON') THEN
        SELECT @sys.execute_prepared_stmt.sql AS 'Debug';
    END IF;
    PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql;
    EXECUTE sys_execute_prepared_stmt;
    DEALLOCATE PREPARE sys_execute_prepared_stmt;
    SET @sys.execute_prepared_stmt.sql = NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisable all background thread instrumentation within Performance Schema.\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_disable_background_threads();\n+--------------------------------+\n| summary                        |\n+--------------------------------+\n| Disabled 18 background threads |\n+--------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisables consumers within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nconsumer (VARCHAR(128)):\n  A LIKE pattern match (using "%consumer%") of consumers to disable\n\nExample\n-----------\n\nTo disable all consumers:\n\nmysql> CALL sys.ps_setup_disable_consumer('''');\n+--------------------------+\n| summary                  |\n+--------------------------+\n| Disabled 15 consumers    |\n+--------------------------+\n1 row in set (0.02 sec)\n\nTo disable just the event_stage consumers:\n\nmysql> CALL sys.ps_setup_disable_comsumers(''stage'');\n+------------------------+\n| summary                |\n+------------------------+\n| Disabled 3 consumers   |\n+------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'NO'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisables instruments within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nin_pattern (VARCHAR(128)):\n  A LIKE pattern match (using "%in_pattern%") of events to disable\n\nExample\n-----------\n\nTo disable all mutex instruments:\n\nmysql> CALL sys.ps_setup_disable_instrument(''wait/synch/mutex'');\n+--------------------------+\n| summary                  |\n+--------------------------+\n| Disabled 155 instruments |\n+--------------------------+\n1 row in set (0.02 sec)\n\nTo disable just a specific TCP/IP based network IO instrument:\n\nmysql> CALL sys.ps_setup_disable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n+------------------------+\n| summary                |\n+------------------------+\n| Disabled 1 instruments |\n+------------------------+\n1 row in set (0.00 sec)\n\nTo disable all instruments:\n\nmysql> CALL sys.ps_setup_disable_instrument('''');\n+--------------------------+\n| summary                  |\n+--------------------------+\n| Disabled 547 instruments |\n+--------------------------+\n1 row in set (0.01 sec)\n'
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'NO', timed = 'NO'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_disable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDisable the given connection/thread in Performance Schema.\n\nParameters\n-----------\n\nin_connection_id (BIGINT):\n  The connection ID (PROCESSLIST_ID from performance_schema.threads\n  or the ID shown within SHOW PROCESSLIST)\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_disable_thread(3);\n+-------------------+\n| summary           |\n+-------------------+\n| Disabled 1 thread |\n+-------------------+\n1 row in set (0.01 sec)\n\nTo disable the current connection:\n\nmysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n+-------------------+\n| summary           |\n+-------------------+\n| Disabled 1 thread |\n+-------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnable all background thread instrumentation within Performance Schema.\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_enable_background_threads();\n+-------------------------------+\n| summary                       |\n+-------------------------------+\n| Enabled 18 background threads |\n+-------------------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnables consumers within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nconsumer (VARCHAR(128)):\n  A LIKE pattern match (using "%consumer%") of consumers to enable\n\nExample\n-----------\n\nTo enable all consumers:\n\nmysql> CALL sys.ps_setup_enable_consumer('''');\n+-------------------------+\n| summary                 |\n+-------------------------+\n| Enabled 10 consumers    |\n+-------------------------+\n1 row in set (0.02 sec)\n\nQuery OK, 0 rows affected (0.02 sec)\n\nTo enable just "waits" consumers:\n\nmysql> CALL sys.ps_setup_enable_consumer(''waits'');\n+-----------------------+\n| summary               |\n+-----------------------+\n| Enabled 3 consumers   |\n+-----------------------+\n1 row in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'YES'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnables instruments within Performance Schema \nmatching the input pattern.\n\nParameters\n-----------\n\nin_pattern (VARCHAR(128)):\n  A LIKE pattern match (using "%in_pattern%") of events to enable\n\nExample\n-----------\n\nTo enable all mutex instruments:\n\nmysql> CALL sys.ps_setup_enable_instrument(''wait/synch/mutex'');\n+-------------------------+\n| summary                 |\n+-------------------------+\n| Enabled 155 instruments |\n+-------------------------+\n1 row in set (0.02 sec)\n\nQuery OK, 0 rows affected (0.02 sec)\n\nTo enable just a specific TCP/IP based network IO instrument:\n\nmysql> CALL sys.ps_setup_enable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n+-----------------------+\n| summary               |\n+-----------------------+\n| Enabled 1 instruments |\n+-----------------------+\n1 row in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.00 sec)\n\nTo enable all instruments:\n\nmysql> CALL sys.ps_setup_enable_instrument('''');\n+-------------------------+\n| summary                 |\n+-------------------------+\n| Enabled 547 instruments |\n+-------------------------+\n1 row in set (0.01 sec)\n\nQuery OK, 0 rows affected (0.01 sec)\n'
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'YES', timed = 'YES'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_enable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nEnable the given connection/thread in Performance Schema.\n\nParameters\n-----------\n\nin_connection_id (BIGINT):\n  The connection ID (PROCESSLIST_ID from performance_schema.threads\n  or the ID shown within SHOW PROCESSLIST)\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_enable_thread(3);\n+------------------+\n| summary          |\n+------------------+\n| Enabled 1 thread |\n+------------------+\n1 row in set (0.01 sec)\n\nTo enable the current connection:\n\nmysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n+------------------+\n| summary          |\n+------------------+\n| Enabled 1 thread |\n+------------------+\n1 row in set (0.00 sec)\n'
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reload_saved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_reload_saved`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nReloads a saved Performance Schema configuration,\nso that you can alter the setup for debugging purposes, \nbut restore it to a previous state.\n\nUse the companion procedure - ps_setup_save(), to \nsave a configuration.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_save();\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> UPDATE performance_schema.setup_instruments SET enabled = ''YES'', timed = ''YES'';\nQuery OK, 547 rows affected (0.40 sec)\nRows matched: 784  Changed: 547  Warnings: 0\n\n/* Run some tests that need more detailed instrumentation here */\n\nmysql> CALL sys.ps_setup_reload_saved();\nQuery OK, 0 rows affected (0.32 sec)\n'
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_lock_result INT;
    DECLARE v_lock_used_by BIGINT;
    DECLARE v_signal_message TEXT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SIGNAL SQLSTATE VALUE '90001'
           SET MESSAGE_TEXT = 'An error occurred, was sys.ps_setup_save() run before this procedure?';
    END;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT IS_USED_LOCK('sys.ps_setup_save') INTO v_lock_used_by;
    IF (v_lock_used_by != CONNECTION_ID()) THEN
        SET v_signal_message = CONCAT('The sys.ps_setup_save lock is currently owned by ', v_lock_used_by);
        SIGNAL SQLSTATE VALUE '90002'
           SET MESSAGE_TEXT = v_signal_message;
    END IF;
    DELETE FROM performance_schema.setup_actors;
    INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;
    BEGIN
        -- Workaround for http://bugs.mysql.com/bug.php?id=70025
        DECLARE v_name varchar(64);
        DECLARE v_enabled enum('YES', 'NO');
        DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_consumers;
        c_consumers_loop: LOOP
            FETCH c_consumers INTO v_name, v_enabled;
            IF v_done THEN
               LEAVE c_consumers_loop;
            END IF;
            UPDATE performance_schema.setup_consumers
               SET ENABLED = v_enabled
             WHERE NAME = v_name;
         END LOOP;
         CLOSE c_consumers;
    END;
    UPDATE performance_schema.setup_instruments
     INNER JOIN tmp_setup_instruments USING (NAME)
       SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED,
           performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED;
    BEGIN
        -- Workaround for http://bugs.mysql.com/bug.php?id=70025
        DECLARE v_thread_id bigint unsigned;
        DECLARE v_instrumented enum('YES', 'NO');
        DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_threads;
        c_threads_loop: LOOP
            FETCH c_threads INTO v_thread_id, v_instrumented;
            IF v_done THEN
               LEAVE c_threads_loop;
            END IF;
            UPDATE performance_schema.threads
               SET INSTRUMENTED = v_instrumented
             WHERE THREAD_ID = v_thread_id;
        END LOOP;
        CLOSE c_threads;
    END;
    UPDATE performance_schema.threads
       SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL,
                             sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER),
                             'YES')
     WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);
    DROP TEMPORARY TABLE tmp_setup_actors;
    DROP TEMPORARY TABLE tmp_setup_consumers;
    DROP TEMPORARY TABLE tmp_setup_instruments;
    DROP TEMPORARY TABLE tmp_threads;
    SELECT RELEASE_LOCK('sys.ps_setup_save') INTO v_lock_result;
    SET sql_log_bin = @log_bin; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reset_to_default` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_reset_to_default`(
       IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nResets the Performance Schema setup to the default settings.\n\nParameters\n-----------\n\nin_verbose (BOOLEAN):\n  Whether to print each setup stage (including the SQL) whilst running.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_reset_to_default(true)\\G\n*************************** 1. row ***************************\nstatus: Resetting: setup_actors\nDELETE\nFROM performance_schema.setup_actors\n WHERE NOT (HOST = ''%'' AND USER = ''%'' AND `ROLE` = ''%'')\n1 row in set (0.00 sec)\n\n*************************** 1. row ***************************\nstatus: Resetting: setup_actors\nINSERT IGNORE INTO performance_schema.setup_actors\nVALUES (''%'', ''%'', ''%'')\n1 row in set (0.00 sec)\n...\n\nmysql> CALL sys.ps_setup_reset_to_default(false)\\G\nQuery OK, 0 rows affected (0.00 sec)\n'
BEGIN
    SET @query = 'DELETE
                    FROM performance_schema.setup_actors
                   WHERE NOT (HOST = ''%'' AND USER = ''%'' AND `ROLE` = ''%'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_actors
                  VALUES (''%'', ''%'', ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_instruments
                     SET ENABLED = sys.ps_is_instrument_default_enabled(NAME),
                         TIMED   = sys.ps_is_instrument_default_timed(NAME)';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_instruments\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_consumers
                     SET ENABLED = IF(NAME IN (''events_statements_current'', ''events_transactions_current'', ''global_instrumentation'', ''thread_instrumentation'', ''statements_digest''), ''YES'', ''NO'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_consumers\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'DELETE
                    FROM performance_schema.setup_objects
                   WHERE NOT (OBJECT_TYPE IN (''EVENT'', ''FUNCTION'', ''PROCEDURE'', ''TABLE'', ''TRIGGER'') AND OBJECT_NAME = ''%'' 
                     AND (OBJECT_SCHEMA = ''mysql''              AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''performance_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''information_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''%''                  AND ENABLED = ''YES'' AND TIMED = ''YES''))';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_objects
                  VALUES (''EVENT''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''FUNCTION'' , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''PROCEDURE'', ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TABLE''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TRIGGER''  , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''%''                 , ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.threads
                     SET INSTRUMENTED = ''YES''';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: threads\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_save`(
        IN in_timeout INT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nSaves the current configuration of Performance Schema, \nso that you can alter the setup for debugging purposes, \nbut restore it to a previous state.\n\nUse the companion procedure - ps_setup_reload_saved(), to \nrestore the saved config.\n\nThe named lock "sys.ps_setup_save" is taken before the\ncurrent configuration is saved. If the attempt to get the named\nlock times out, an error occurs.\n\nThe lock is released after the settings have been restored by\ncalling ps_setup_reload_saved().\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_timeout INT\n  The timeout in seconds used when trying to obtain the lock.\n  A negative timeout means infinite timeout.\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_save(-1);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> UPDATE performance_schema.setup_instruments \n    ->    SET enabled = ''YES'', timed = ''YES'';\nQuery OK, 547 rows affected (0.40 sec)\nRows matched: 784  Changed: 547  Warnings: 0\n\n/* Run some tests that need more detailed instrumentation here */\n\nmysql> CALL sys.ps_setup_reload_saved();\nQuery OK, 0 rows affected (0.32 sec)\n'
BEGIN
    DECLARE v_lock_result INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT GET_LOCK('sys.ps_setup_save', in_timeout) INTO v_lock_result;
    IF v_lock_result THEN
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments;
        DROP TEMPORARY TABLE IF EXISTS tmp_threads;
        CREATE TEMPORARY TABLE tmp_setup_actors SELECT * FROM performance_schema.setup_actors LIMIT 0;
        CREATE TEMPORARY TABLE tmp_setup_consumers LIKE performance_schema.setup_consumers;
        CREATE TEMPORARY TABLE tmp_setup_instruments LIKE performance_schema.setup_instruments;
        CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum('YES','NO') NOT NULL);
        INSERT INTO tmp_setup_actors SELECT * FROM performance_schema.setup_actors;
        INSERT INTO tmp_setup_consumers SELECT * FROM performance_schema.setup_consumers;
        INSERT INTO tmp_setup_instruments SELECT * FROM performance_schema.setup_instruments;
        INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads;
    ELSE
        SIGNAL SQLSTATE VALUE '90000'
           SET MESSAGE_TEXT = 'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration';
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently disable Performance Schema configuration.\n\nDisabled users is only available for MySQL 5.7.6 and later.\nIn earlier versions it was only possible to enable users.\n\nParameters\n-----------\n\nin_show_instruments (BOOLEAN):\n  Whether to print disabled instruments (can print many items)\n\nin_show_threads (BOOLEAN):\n  Whether to print disabled threads\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n+----------------------------+\n| performance_schema_enabled |\n+----------------------------+\n|                          1 |\n+----------------------------+\n1 row in set (0.00 sec)\n\n+--------------------+\n| disabled_users     |\n+--------------------+\n| ''mark''@''localhost'' |\n+--------------------+\n1 row in set (0.00 sec)\n\n+-------------+----------------------+---------+-------+\n| object_type | objects              | enabled | timed |\n+-------------+----------------------+---------+-------+\n| EVENT       | mysql.%              | NO      | NO    |\n| EVENT       | performance_schema.% | NO      | NO    |\n| EVENT       | information_schema.% | NO      | NO    |\n| FUNCTION    | mysql.%              | NO      | NO    |\n| FUNCTION    | performance_schema.% | NO      | NO    |\n| FUNCTION    | information_schema.% | NO      | NO    |\n| PROCEDURE   | mysql.%              | NO      | NO    |\n| PROCEDURE   | performance_schema.% | NO      | NO    |\n| PROCEDURE   | information_schema.% | NO      | NO    |\n| TABLE       | mysql.%              | NO      | NO    |\n| TABLE       | performance_schema.% | NO      | NO    |\n| TABLE       | information_schema.% | NO      | NO    |\n| TRIGGER     | mysql.%              | NO      | NO    |\n| TRIGGER     | performance_schema.% | NO      | NO    |\n| TRIGGER     | information_schema.% | NO      | NO    |\n+-------------+----------------------+---------+-------+\n15 rows in set (0.00 sec)\n\n+----------------------------------+\n| disabled_consumers               |\n+----------------------------------+\n| events_stages_current            |\n| events_stages_history            |\n| events_stages_history_long       |\n| events_statements_history        |\n| events_statements_history_long   |\n| events_transactions_history      |\n| events_transactions_history_long |\n| events_waits_current             |\n| events_waits_history             |\n| events_waits_history_long        |\n+----------------------------------+\n10 rows in set (0.00 sec)\n\nEmpty set (0.00 sec)\n\n+---------------------------------------------------------------------------------------+-------+\n| disabled_instruments                                                                  | timed |\n+---------------------------------------------------------------------------------------+-------+\n| wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n| wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n| wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n...\n| memory/sql/servers_cache                                                              | NO    |\n| memory/sql/udf_mem                                                                    | NO    |\n| wait/lock/metadata/sql/mdl                                                            | NO    |\n+---------------------------------------------------------------------------------------+-------+\n547 rows in set (0.00 sec)\n\nQuery OK, 0 rows affected (0.01 sec)\n'
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    -- In 5.7.6 and later the setup_actors table has an ENABLED column to
    -- specify whether the actor is enabled. Before that all actors matched
    -- in the setup_actors table were enabled.
    -- So only execute the query in 5.7.6+
    
    SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS disabled_users
      FROM performance_schema.setup_actors
     WHERE enabled = 'NO'
     ORDER BY disabled_users;
    
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'NO'
     ORDER BY object_type, objects;
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection', 
                  CONCAT(processlist_user, '@', processlist_host), 
                  REPLACE(name, 'thread/', '')) AS disabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'NO'
         ORDER BY disabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS disabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'NO'
         ORDER BY disabled_instruments;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently disabled consumers.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_disabled_consumers();\n\n+---------------------------+\n| disabled_consumers        |\n+---------------------------+\n| events_statements_current |\n| global_instrumentation    |\n| thread_instrumentation    |\n| statements_digest         |\n+---------------------------+\n4 rows in set (0.05 sec)\n'
BEGIN
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently disabled instruments.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_disabled_instruments();\n'
BEGIN
    SELECT name AS disabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'NO'
     ORDER BY disabled_instruments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently enabled Performance Schema configuration.\n\nParameters\n-----------\n\nin_show_instruments (BOOLEAN):\n  Whether to print enabled instruments (can print many items)\n\nin_show_threads (BOOLEAN):\n  Whether to print enabled threads\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n+----------------------------+\n| performance_schema_enabled |\n+----------------------------+\n|                          1 |\n+----------------------------+\n1 row in set (0.00 sec)\n\n+---------------+\n| enabled_users |\n+---------------+\n| ''%''@''%''       |\n+---------------+\n1 row in set (0.01 sec)\n\n+-------------+---------+---------+-------+\n| object_type | objects | enabled | timed |\n+-------------+---------+---------+-------+\n| EVENT       | %.%     | YES     | YES   |\n| FUNCTION    | %.%     | YES     | YES   |\n| PROCEDURE   | %.%     | YES     | YES   |\n| TABLE       | %.%     | YES     | YES   |\n| TRIGGER     | %.%     | YES     | YES   |\n+-------------+---------+---------+-------+\n5 rows in set (0.01 sec)\n\n+---------------------------+\n| enabled_consumers         |\n+---------------------------+\n| events_statements_current |\n| global_instrumentation    |\n| thread_instrumentation    |\n| statements_digest         |\n+---------------------------+\n4 rows in set (0.05 sec)\n\n+---------------------------------+-------------+\n| enabled_threads                 | thread_type |\n+---------------------------------+-------------+\n| sql/main                        | BACKGROUND  |\n| sql/thread_timer_notifier       | BACKGROUND  |\n| innodb/io_ibuf_thread           | BACKGROUND  |\n| innodb/io_log_thread            | BACKGROUND  |\n| innodb/io_read_thread           | BACKGROUND  |\n| innodb/io_read_thread           | BACKGROUND  |\n| innodb/io_write_thread          | BACKGROUND  |\n| innodb/io_write_thread          | BACKGROUND  |\n| innodb/page_cleaner_thread      | BACKGROUND  |\n| innodb/srv_lock_timeout_thread  | BACKGROUND  |\n| innodb/srv_error_monitor_thread | BACKGROUND  |\n| innodb/srv_monitor_thread       | BACKGROUND  |\n| innodb/srv_master_thread        | BACKGROUND  |\n| innodb/srv_purge_thread         | BACKGROUND  |\n| innodb/srv_worker_thread        | BACKGROUND  |\n| innodb/srv_worker_thread        | BACKGROUND  |\n| innodb/srv_worker_thread        | BACKGROUND  |\n| innodb/buf_dump_thread          | BACKGROUND  |\n| innodb/dict_stats_thread        | BACKGROUND  |\n| sql/signal_handler              | BACKGROUND  |\n| sql/compress_gtid_table         | FOREGROUND  |\n| root@localhost                  | FOREGROUND  |\n+---------------------------------+-------------+\n22 rows in set (0.01 sec)\n\n+-------------------------------------+-------+\n| enabled_instruments                 | timed |\n+-------------------------------------+-------+\n| wait/io/file/sql/map                | YES   |\n| wait/io/file/sql/binlog             | YES   |\n...\n| statement/com/Error                 | YES   |\n| statement/com/                      | YES   |\n| idle                                | YES   |\n+-------------------------------------+-------+\n210 rows in set (0.08 sec)\n\nQuery OK, 0 rows affected (0.89 sec)\n'
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    -- In 5.7.6 and later the setup_actors table has an ENABLED column to
    -- specify whether the actor is enabled. Before that all actors matched
    -- in the setup_actors table were enabled.
    SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS enabled_users
      FROM performance_schema.setup_actors
      WHERE enabled = 'YES' 
     ORDER BY enabled_users;
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'YES'
     ORDER BY object_type, objects;
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection', 
                  CONCAT(processlist_user, '@', processlist_host), 
                  REPLACE(name, 'thread/', '')) AS enabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'YES'
         ORDER BY enabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS enabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'YES'
         ORDER BY enabled_instruments;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently enabled consumers.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_enabled_consumers();\n\n+---------------------------+\n| enabled_consumers         |\n+---------------------------+\n| events_statements_current |\n| global_instrumentation    |\n| thread_instrumentation    |\n| statements_digest         |\n+---------------------------+\n4 rows in set (0.05 sec)\n'
BEGIN
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nShows all currently enabled instruments.\n\nParameters\n-----------\n\nNone\n\nExample\n-----------\n\nmysql> CALL sys.ps_setup_show_enabled_instruments();\n'
BEGIN
    SELECT name AS enabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'YES'
     ORDER BY enabled_instruments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_statement_avg_latency_histogram` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_statement_avg_latency_histogram`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nOutputs a textual histogram graph of the average latency values\nacross all normalized queries tracked within the Performance Schema\nevents_statements_summary_by_digest table.\n\nCan be used to show a very high level picture of what kind of \nlatency distribution statements running within this instance have.\n\nParameters\n-----------\n\nNone.\n\nExample\n-----------\n\nmysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n*************************** 1. row ***************************\nPerformance Schema Statement Digest Average Latency Histogram:\n\n  . = 1 unit\n  * = 2 units\n  # = 3 units\n\n(0 - 38ms)     240 | ################################################################################\n(38 - 77ms)    38  | ......................................\n(77 - 115ms)   3   | ...\n(115 - 154ms)  62  | *******************************\n(154 - 192ms)  3   | ...\n(192 - 231ms)  0   |\n(231 - 269ms)  0   |\n(269 - 307ms)  0   |\n(307 - 346ms)  0   |\n(346 - 384ms)  1   | .\n(384 - 423ms)  1   | .\n(423 - 461ms)  0   |\n(461 - 499ms)  0   |\n(499 - 538ms)  0   |\n(538 - 576ms)  0   |\n(576 - 615ms)  1   | .\n\n  Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n'
BEGIN
SELECT CONCAT('\n',
       '\n  . = 1 unit',
       '\n  * = 2 units',
       '\n  # = 3 units\n',
       @label := CONCAT(@label_inner := CONCAT('\n(0 - ',
                                               ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size
                                                                         FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)),
                                                (@unit := 'ms'), ')'),
                        REPEAT(' ', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us <= @bucket_size), 0)),
       REPEAT(' ', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), '.', IF(@count_in_bucket < (@two_unit := 80), '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND(@bucket_size / @unit_div), ' - ', ROUND((@bucket_size * 2) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 2) / @unit_div), ' - ', ROUND((@bucket_size * 3) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 3) / @unit_div), ' - ', ROUND((@bucket_size * 4) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 4) / @unit_div), ' - ', ROUND((@bucket_size * 5) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 5) / @unit_div), ' - ', ROUND((@bucket_size * 6) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 6) / @unit_div), ' - ', ROUND((@bucket_size * 7) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 7) / @unit_div), ' - ', ROUND((@bucket_size * 8) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 8) / @unit_div), ' - ', ROUND((@bucket_size * 9) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 9) / @unit_div), ' - ', ROUND((@bucket_size * 10) / @unit_div), @unit, ')'),
                         REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                         @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                       FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                      WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 10) / @unit_div), ' - ', ROUND((@bucket_size * 11) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 11) / @unit_div), ' - ', ROUND((@bucket_size * 12) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 12) / @unit_div), ' - ', ROUND((@bucket_size * 13) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 13) / @unit_div), ' - ', ROUND((@bucket_size * 14) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 14) / @unit_div), ' - ', ROUND((@bucket_size * 15) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 15) / @unit_div), ' - ', ROUND((@bucket_size * 16) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1 
                                                     WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')), 
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       '\n\n  Total Statements: ', @total_queries, '; Buckets: ', @buckets , '; Bucket Size: ', ROUND(@bucket_size / @unit_div) , ' ', @unit, ';\n'
      ) AS `Performance Schema Statement Digest Average Latency Histogram`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_statement_digest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_trace_statement_digest`(
        IN in_digest VARCHAR(64),
        IN in_runtime INT,
        IN in_interval DECIMAL(2,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_enable BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTraces all instrumentation within Performance Schema for a specific\nStatement Digest.\n\nWhen finding a statement of interest within the\nperformance_schema.events_statements_summary_by_digest table, feed\nthe DIGEST value in to this procedure, set how long to poll for,\nand at what interval to poll, and it will generate a report of all\nstatistics tracked within Performance Schema for that digest for the\ninterval.\n\nIt will also attempt to generate an EXPLAIN for the longest running\nexample of the digest during the interval. Note this may fail, as:\n\n   * Performance Schema truncates long SQL_TEXT values (and hence the\n     EXPLAIN will fail due to parse errors)\n   * the default schema is sys (so tables that are not fully qualified\n     in the query may not be found)\n   * some queries such as SHOW are not supported in EXPLAIN.\n\nWhen the EXPLAIN fails, the error will be ignored and no EXPLAIN\noutput generated.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_digest (VARCHAR(64)):\n  The statement digest identifier you would like to analyze\nin_runtime (INT):\n  The number of seconds to run analysis for\nin_interval (DECIMAL(2,2)):\n  The interval (in seconds, may be fractional) at which to try\n  and take snapshots\nin_start_fresh (BOOLEAN):\n  Whether to TRUNCATE the events_statements_history_long and\n  events_stages_history_long tables before starting\nin_auto_enable (BOOLEAN):\n  Whether to automatically turn on required consumers\n\nExample\n-----------\n\nmysql> call ps_trace_statement_digest(''891ec6860f98ba46d89dd20b0c03652c'', 10, 0.1, true, true);\n+--------------------+\n| SUMMARY STATISTICS |\n+--------------------+\n| SUMMARY STATISTICS |\n+--------------------+\n1 row in set (9.11 sec)\n\n+------------+-----------+-----------+-----------+---------------+------------+------------+\n| executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n+------------+-----------+-----------+-----------+---------------+------------+------------+\n|         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n+------------+-----------+-----------+-----------+---------------+------------+------------+\n1 row in set (9.11 sec)\n\n+------------------------------------------+-------+-----------+\n| event_name                               | count | latency   |\n+------------------------------------------+-------+-----------+\n| stage/sql/checking query cache for query |    16 | 724.37 us |\n| stage/sql/statistics                     |    16 | 546.92 us |\n| stage/sql/freeing items                  |    18 | 520.11 us |\n| stage/sql/init                           |    51 | 466.80 us |\n...\n| stage/sql/cleaning up                    |    18 | 11.92 us  |\n| stage/sql/executing                      |    16 | 6.95 us   |\n+------------------------------------------+-------+-----------+\n17 rows in set (9.12 sec)\n\n+---------------------------+\n| LONGEST RUNNING STATEMENT |\n+---------------------------+\n| LONGEST RUNNING STATEMENT |\n+---------------------------+\n1 row in set (9.16 sec)\n\n+-----------+-----------+-----------+-----------+---------------+------------+-----------+\n| thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n+-----------+-----------+-----------+-----------+---------------+------------+-----------+\n|    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n+-----------+-----------+-----------+-----------+---------------+------------+-----------+\n1 row in set (9.16 sec)\n\n// Truncated for clarity...\n+-----------------------------------------------------------------+\n| sql_text                                                        |\n+-----------------------------------------------------------------+\n| select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n+-----------------------------------------------------------------+\n1 row in set (9.17 sec)\n\n+------------------------------------------+-----------+\n| event_name                               | latency   |\n+------------------------------------------+-----------+\n| stage/sql/init                           | 8.61 us   |\n| stage/sql/Waiting for query cache lock   | 453.23 us |\n| stage/sql/init                           | 331.07 ns |\n| stage/sql/checking query cache for query | 43.04 us  |\n...\n| stage/sql/freeing items                  | 30.46 us  |\n| stage/sql/cleaning up                    | 662.13 ns |\n+------------------------------------------+-----------+\n18 rows in set (9.23 sec)\n\n+----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n| id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n+----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n|  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n+----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n1 row in set (9.27 sec)\n\nQuery OK, 0 rows affected (9.28 sec)\n'
BEGIN
    DECLARE v_start_fresh BOOLEAN DEFAULT false;
    DECLARE v_auto_enable BOOLEAN DEFAULT false;
    DECLARE v_explain     BOOLEAN DEFAULT true;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_runtime INT DEFAULT 0;
    DECLARE v_start INT DEFAULT 0;
    DECLARE v_found_stmts INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    -- Do not track the current thread, it will kill the stack
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    DROP TEMPORARY TABLE IF EXISTS stmt_trace;
    CREATE TEMPORARY TABLE stmt_trace (
        thread_id BIGINT UNSIGNED,
        timer_start BIGINT UNSIGNED,
        event_id BIGINT UNSIGNED,
        sql_text longtext,
        timer_wait BIGINT UNSIGNED,
        lock_time BIGINT UNSIGNED,
        errors BIGINT UNSIGNED,
        mysql_errno INT,
        rows_sent BIGINT UNSIGNED,
        rows_affected BIGINT UNSIGNED,
        rows_examined BIGINT UNSIGNED,
        created_tmp_tables BIGINT UNSIGNED,
        created_tmp_disk_tables BIGINT UNSIGNED,
        no_index_used BIGINT UNSIGNED,
        PRIMARY KEY (thread_id, timer_start)
    );
    DROP TEMPORARY TABLE IF EXISTS stmt_stages;
    CREATE TEMPORARY TABLE stmt_stages (
       event_id BIGINT UNSIGNED,
       stmt_id BIGINT UNSIGNED,
       event_name VARCHAR(128),
       timer_wait BIGINT UNSIGNED,
       PRIMARY KEY (event_id)
    );
    SET v_start_fresh = in_start_fresh;
    IF v_start_fresh THEN
        TRUNCATE TABLE performance_schema.events_statements_history_long;
        TRUNCATE TABLE performance_schema.events_stages_history_long;
    END IF;
    SET v_auto_enable = in_auto_enable;
    IF v_auto_enable THEN
        CALL sys.ps_setup_save(0);
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, 'YES', 'NO');
        -- Only the events_statements_history_long and events_stages_history_long tables and their ancestors are needed
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history'
               AND NAME NOT LIKE 'events_wait%'
               AND NAME NOT LIKE 'events_transactions%'
               AND NAME <> 'statements_digest';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES'
         WHERE NAME LIKE 'statement/%' OR NAME LIKE 'stage/%';
    END IF;
    WHILE v_runtime < in_runtime DO
        SELECT UNIX_TIMESTAMP() INTO v_start;
        INSERT IGNORE INTO stmt_trace
        SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno, 
               rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used
          FROM performance_schema.events_statements_history_long
        WHERE digest = in_digest;
        INSERT IGNORE INTO stmt_stages
        SELECT stages.event_id, stmt_trace.event_id,
               stages.event_name, stages.timer_wait
          FROM performance_schema.events_stages_history_long AS stages
          JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    SELECT "SUMMARY STATISTICS";
    SELECT COUNT(*) executions,
           format_pico_time(SUM(timer_wait)) AS exec_time,
           format_pico_time(SUM(lock_time)) AS lock_time,
           SUM(rows_sent) AS rows_sent,
           SUM(rows_affected) AS rows_affected,
           SUM(rows_examined) AS rows_examined,
           SUM(created_tmp_tables) AS tmp_tables,
           SUM(no_index_used) AS full_scans
      FROM stmt_trace;
    SELECT event_name,
           COUNT(*) as count,
           format_pico_time(SUM(timer_wait)) as latency
      FROM stmt_stages
     GROUP BY event_name
     ORDER BY SUM(timer_wait) DESC;
    SELECT "LONGEST RUNNING STATEMENT";
    SELECT thread_id,
           format_pico_time(timer_wait) AS exec_time,
           format_pico_time(lock_time) AS lock_time,
           rows_sent,
           rows_affected,
           rows_examined,
           created_tmp_tables AS tmp_tables,
           no_index_used AS full_scan
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text, event_id INTO @sql, @sql_id
      FROM stmt_trace
    ORDER BY timer_wait DESC LIMIT 1;
    IF (@sql_id IS NOT NULL) THEN
        SELECT event_name,
               format_pico_time(timer_wait) as latency
          FROM stmt_stages
         WHERE stmt_id = @sql_id
         ORDER BY event_id;
    END IF;
    DROP TEMPORARY TABLE stmt_trace;
    DROP TEMPORARY TABLE stmt_stages;
    IF (@sql IS NOT NULL) THEN
        SET @stmt := CONCAT("EXPLAIN FORMAT=JSON ", @sql);
        BEGIN
            -- Not all queries support EXPLAIN, so catch the cases that are
            -- not supported. Currently that includes cases where the table
            -- is not fully qualified and is not in the default schema for this
            -- procedure as it's not possible to change the default schema inside
            -- a procedure.
            --
            -- Errno = 1064: You have an error in your SQL syntax
            -- Errno = 1146: Table '...' doesn't exist
            DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;
            PREPARE explain_stmt FROM @stmt;
        END;
        IF (v_explain) THEN
            EXECUTE explain_stmt;
            DEALLOCATE PREPARE explain_stmt;
        END IF;
    END IF;
    IF v_auto_enable THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_trace_thread`(
        IN in_thread_id BIGINT UNSIGNED,
        IN in_outfile VARCHAR(255),
        IN in_max_runtime DECIMAL(20,2),
        IN in_interval DECIMAL(20,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_setup BOOLEAN,
        IN in_debug BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nDumps all data within Performance Schema for an instrumented thread,\nto create a DOT formatted graph file. \n\nEach resultset returned from the procedure should be used for a complete graph\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_thread_id (BIGINT UNSIGNED):\n  The thread that you would like a stack trace for\nin_outfile  (VARCHAR(255)):\n  The filename the dot file will be written to\nin_max_runtime (DECIMAL(20,2)):\n  The maximum time to keep collecting data.\n  Use NULL to get the default which is 60 seconds.\nin_interval (DECIMAL(20,2)): \n  How long to sleep between data collections. \n  Use NULL to get the default which is 1 second.\nin_start_fresh (BOOLEAN):\n  Whether to reset all Performance Schema data before tracing.\nin_auto_setup (BOOLEAN):\n  Whether to disable all other threads and enable all consumers/instruments. \n  This will also reset the settings at the end of the run.\nin_debug (BOOLEAN):\n  Whether you would like to include file:lineno in the graph\n\nExample\n-----------\n\nmysql> CALL sys.ps_trace_thread(25, CONCAT(''/tmp/stack-'', REPLACE(NOW(), '' '', ''-''), ''.dot''), NULL, NULL, TRUE, TRUE, TRUE);\n+-------------------+\n| summary           |\n+-------------------+\n| Disabled 1 thread |\n+-------------------+\n1 row in set (0.00 sec)\n\n+---------------------------------------------+\n| Info                                        |\n+---------------------------------------------+\n| Data collection starting for THREAD_ID = 25 |\n+---------------------------------------------+\n1 row in set (0.03 sec)\n\n+-----------------------------------------------------------+\n| Info                                                      |\n+-----------------------------------------------------------+\n| Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n+-----------------------------------------------------------+\n1 row in set (60.07 sec)\n\n+-------------------------------------------------------------------+\n| Convert to PDF                                                    |\n+-------------------------------------------------------------------+\n| dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n+-------------------------------------------------------------------+\n1 row in set (60.07 sec)\n\n+-------------------------------------------------------------------+\n| Convert to PNG                                                    |\n+-------------------------------------------------------------------+\n| dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n+-------------------------------------------------------------------+\n1 row in set (60.07 sec)\n\n+------------------+\n| summary          |\n+------------------+\n| Enabled 1 thread |\n+------------------+\n1 row in set (60.32 sec)\n'
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_min_event_id bigint unsigned DEFAULT 0;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_event longtext;
    DECLARE c_stack CURSOR FOR
        SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, ' -> '), ''), 
                    event_id, '; ', event_id, ' [label="',
                    -- Convert from picoseconds to microseconds
                    '(', format_pico_time(timer_wait), ') ',
                    IF (event_name NOT LIKE 'wait/io%', 
                        SUBSTRING_INDEX(event_name, '/', -2), 
                        IF (event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%',
                            SUBSTRING_INDEX(event_name, '/', -4),
                            event_name)
                        ),
                    -- Always dump the extra wait information gathered for transactions and statements
                    IF (event_name LIKE 'transaction', IFNULL(CONCAT('\\n', wait_info), ''), ''),
                    IF (event_name LIKE 'statement/%', IFNULL(CONCAT('\\n', wait_info), ''), ''),
                    -- If debug is enabled, add the file:lineno information for waits
                    IF (in_debug AND event_name LIKE 'wait%', wait_info, ''),
                    '", ', 
                    -- Depending on the type of event, style appropriately
                    CASE WHEN event_name LIKE 'wait/io/file%' THEN 
                           'shape=box, style=filled, color=red'
                         WHEN event_name LIKE 'wait/io/table%' THEN 
                           'shape=box, style=filled, color=green'
                         WHEN event_name LIKE 'wait/io/socket%' THEN
                           'shape=box, style=filled, color=yellow'
                         WHEN event_name LIKE 'wait/synch/mutex%' THEN
                           'style=filled, color=lightskyblue'
                         WHEN event_name LIKE 'wait/synch/cond%' THEN
                           'style=filled, color=darkseagreen3'
                         WHEN event_name LIKE 'wait/synch/rwlock%' THEN
                           'style=filled, color=orchid'
                         WHEN event_name LIKE 'wait/synch/sxlock%' THEN
                           'style=filled, color=palevioletred' 
                         WHEN event_name LIKE 'wait/lock%' THEN
                           'shape=box, style=filled, color=tan'
                         WHEN event_name LIKE 'statement/%' THEN
                           CONCAT('shape=box, style=bold',
                                  -- Style statements depending on COM vs SQL
                                  CASE WHEN event_name LIKE 'statement/com/%' THEN
                                         ' style=filled, color=darkseagreen'
                                       ELSE
                                         -- Use long query time from the server to
                                         -- flag long running statements in red
                                         IF((timer_wait/1000000000000) > @@long_query_time, 
                                            ' style=filled, color=red', 
                                            ' style=filled, color=lightblue')
                                  END
                           )
                         WHEN event_name LIKE 'transaction' THEN
                           'shape=box, style=filled, color=lightblue3'
                         WHEN event_name LIKE 'stage/%' THEN
                           'style=filled, color=slategray3'
                         -- IDLE events are on their own, call attention to them
                         WHEN event_name LIKE '%idle%' THEN
                           'shape=box, style=filled, color=firebrick3'
                         ELSE '' END,
                     '];\n'
                   ) event, event_id
        FROM (
             -- Select all transactions
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,
                     CONCAT('trx_id: ',  IFNULL(trx_id, ''), '\\n',
                            'gtid: ', IFNULL(gtid, ''), '\\n',
                            'state: ', state, '\\n',
                            'mode: ', access_mode, '\\n',
                            'isolation: ', isolation_level, '\\n',
                            'autocommit: ', autocommit, '\\n',
                            'savepoints: ', number_of_savepoints, '\\n'
                     ) AS wait_info
                FROM performance_schema.events_transactions_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             -- Select all statements, with the extra tracing information available
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, 
                     CONCAT('statement: ', sql_text, '\\n',
                            'errors: ', errors, '\\n',
                            'warnings: ', warnings, '\\n',
                            'lock time: ', format_pico_time(lock_time),'\\n',
                            'rows affected: ', rows_affected, '\\n',
                            'rows sent: ', rows_sent, '\\n',
                            'rows examined: ', rows_examined, '\\n',
                            'tmp tables: ', created_tmp_tables, '\\n',
                            'tmp disk tables: ', created_tmp_disk_tables, '\\n'
                            'select scan: ', select_scan, '\\n',
                            'select full join: ', select_full_join, '\\n',
                            'select full range join: ', select_full_range_join, '\\n',
                            'select range: ', select_range, '\\n',
                            'select range check: ', select_range_check, '\\n', 
                            'sort merge passes: ', sort_merge_passes, '\\n',
                            'sort rows: ', sort_rows, '\\n',
                            'sort range: ', sort_range, '\\n',
                            'sort scan: ', sort_scan, '\\n',
                            'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                            'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                     ) AS wait_info
                FROM performance_schema.events_statements_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             -- Select all stages
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
                FROM performance_schema.events_stages_history_long 
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION 
             -- Select all events, adding information appropriate to the event
             (SELECT thread_id, event_id, 
                     CONCAT(event_name, 
                            IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''), 
                            IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                            IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                            IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''), 
                            IF(object_name IS NOT NULL, 
                               IF (event_name LIKE 'wait/io/socket%',
                                   -- Print the socket if used, else the IP:port as reported
                                   CONCAT('\\n', IF (object_name LIKE ':0%', @@socket, object_name)),
                                   object_name),
                               ''
                            ),
                            IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n'
                     ) AS event_name,
                     timer_wait, timer_start, nesting_event_id, source AS wait_info
                FROM performance_schema.events_waits_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
           ) events 
       ORDER BY event_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    -- Do not track the current thread, it will kill the stack
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_save(0);
        -- Ensure only the thread to create the stack trace for is instrumented and that we instrument everything.
        DELETE FROM performance_schema.setup_actors;
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, 'YES', 'NO');
        -- only the %_history_long tables and it ancestors are needed
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES';
    END IF;
    IF (in_start_fresh) THEN
        TRUNCATE performance_schema.events_transactions_history_long;
        TRUNCATE performance_schema.events_statements_history_long;
        TRUNCATE performance_schema.events_stages_history_long;
        TRUNCATE performance_schema.events_waits_history_long;
    END IF;
    DROP TEMPORARY TABLE IF EXISTS tmp_events;
    CREATE TEMPORARY TABLE tmp_events (
      event_id bigint unsigned NOT NULL,
      event longblob,
      PRIMARY KEY (event_id)
    );
    -- Print headers for a .dot file
    INSERT INTO tmp_events VALUES (0, CONCAT('digraph events { rankdir=LR; nodesep=0.10;\n',
                                             '// Stack created .....: ', NOW(), '\n',
                                             '// MySQL version .....: ', VERSION(), '\n',
                                             '// MySQL hostname ....: ', @@hostname, '\n',
                                             '// MySQL port ........: ', @@port, '\n',
                                             '// MySQL socket ......: ', @@socket, '\n',
                                             '// MySQL user ........: ', CURRENT_USER(), '\n'));
    SELECT CONCAT('Data collection starting for THREAD_ID = ', in_thread_id) AS 'Info';
    SET v_min_event_id = 0,
        v_start        = UNIX_TIMESTAMP(),
        in_interval    = IFNULL(in_interval, 1.00),
        in_max_runtime = IFNULL(in_max_runtime, 60.00);
    WHILE (v_runtime < in_max_runtime
           AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = 'YES') DO
        SET v_done = FALSE;
        OPEN c_stack;
        c_stack_loop: LOOP
            FETCH c_stack INTO v_event, v_min_event_id;
            IF v_done THEN
                LEAVE c_stack_loop;
            END IF;
            IF (LENGTH(v_event) > 0) THEN
                INSERT INTO tmp_events VALUES (v_min_event_id, v_event);
            END IF;
        END LOOP;
        CLOSE c_stack;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    INSERT INTO tmp_events VALUES (v_min_event_id+1, '}');
    SET @query = CONCAT('SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE ''', in_outfile, ''' FIELDS ESCAPED BY '''' LINES TERMINATED BY ''''');
    PREPARE stmt_output FROM @query;
    EXECUTE stmt_output;
    DEALLOCATE PREPARE stmt_output;
    SELECT CONCAT('Stack trace written to ', in_outfile) AS 'Info';
    SELECT CONCAT('dot -Tpdf -o /tmp/stack_', in_thread_id, '.pdf ', in_outfile) AS 'Convert to PDF';
    SELECT CONCAT('dot -Tpng -o /tmp/stack_', in_thread_id, '.png ', in_outfile) AS 'Convert to PNG';
    DROP TEMPORARY TABLE tmp_events;
    -- Reset the settings for the performance schema
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_truncate_all_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `ps_truncate_all_tables`(
        IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTruncates all summary tables within Performance Schema, \nresetting all aggregated instrumentation as a snapshot.\n\nParameters\n-----------\n\nin_verbose (BOOLEAN):\n  Whether to print each TRUNCATE statement before running\n\nExample\n-----------\n\nmysql> CALL sys.ps_truncate_all_tables(false);\n+---------------------+\n| summary             |\n+---------------------+\n| Truncated 44 tables |\n+---------------------+\n1 row in set (0.10 sec)\n\nQuery OK, 0 rows affected (0.10 sec)\n'
BEGIN
    DECLARE v_done INT DEFAULT FALSE;
    DECLARE v_total_tables INT DEFAULT 0;
    DECLARE v_ps_table VARCHAR(64);
    DECLARE ps_tables CURSOR FOR
        SELECT table_name 
          FROM INFORMATION_SCHEMA.TABLES 
         WHERE table_schema = 'performance_schema' 
           AND (table_name LIKE '%summary%' 
            OR table_name LIKE '%history%');
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    OPEN ps_tables;
    ps_tables_loop: LOOP
        FETCH ps_tables INTO v_ps_table;
        IF v_done THEN
          LEAVE ps_tables_loop;
        END IF;
        SET @truncate_stmt := CONCAT('TRUNCATE TABLE performance_schema.', v_ps_table);
        IF in_verbose THEN
            SELECT CONCAT('Running: ', @truncate_stmt) AS status;
        END IF;
        PREPARE truncate_stmt FROM @truncate_stmt;
        EXECUTE truncate_stmt;
        DEALLOCATE PREPARE truncate_stmt;
        SET v_total_tables = v_total_tables + 1;
    END LOOP;
    CLOSE ps_tables;
    SELECT CONCAT('Truncated ', v_total_tables, ' tables') AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `statement_performance_analyzer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `statement_performance_analyzer`(
        IN in_action ENUM('snapshot', 'overall', 'delta', 'create_table', 'create_tmp', 'save', 'cleanup'),
        IN in_table VARCHAR(129),
        IN in_views SET ('with_runtimes_in_95th_percentile', 'analysis', 'with_errors_or_warnings', 'with_full_table_scans', 'with_sorting', 'with_temp_tables', 'custom')
    )
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nCreate a report of the statements running on the server.\n\nThe views are calculated based on the overall and/or delta activity.\n\nRequires the SUPER privilege for "SET sql_log_bin = 0;".\n\nParameters\n-----------\n\nin_action (ENUM(''snapshot'', ''overall'', ''delta'', ''create_tmp'', ''create_table'', ''save'', ''cleanup'')):\n  The action to take. Supported actions are:\n    * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n                    performance_schema.events_statements_summary_by_digest, but by setting in_table\n                    this can be overwritten to copy the content of the specified table.\n                    The snapshot is stored in the sys.tmp_digests temporary table.\n    * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n                    in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n                    Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n                    exists, a new will be created.\n                    See also in_views and @sys.statement_performance_analyzer.limit.\n    * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n                    in_table and the snapshot. An existing snapshot must exist.\n                    The action uses the sys.tmp_digests_delta temporary table.\n                    See also in_views and @sys.statement_performance_analyzer.limit.\n    * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n                    calculating deltas.\n    * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n                    calculating deltas.\n    * save          Save the snapshot in the table specified by in_table. The table must exists and have\n                    the correct structure.\n                    If no snapshot exists, a new is created.\n    * cleanup       Remove the temporary tables used for the snapshot and delta.\n\nin_table (VARCHAR(129)):\n  The table argument used for some actions. Use the format ''db1.t1'' or ''t1'' without using any backticks (`)\n  for quoting. Periods (.) are not supported in the database and table names.\n\n  The meaning of the table for each action supporting the argument is:\n\n    * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n                    the current content of performance_schema.events_statements_summary_by_digest.\n    * overall       The table with the content to create the overall analyzis for. The following values\n                    can be used:\n                      - A table name - use the content of that table.\n                      - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n                      - NULL         - use the last stored snapshot.\n    * delta         The table name is mandatory and specified the reference view to compare the currently\n                    stored snapshot against. If no snapshot exists, a new will be created.\n    * create_table  The name of the regular table to create.\n    * create_tmp    The name of the temporary table to create.\n    * save          The name of the table to save the currently stored snapshot into.\n\nin_views (SET (''with_runtimes_in_95th_percentile'', ''analysis'', ''with_errors_or_warnings'',\n               ''with_full_table_scans'', ''with_sorting'', ''with_temp_tables'', ''custom''))\n  Which views to include:\n\n    * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view\n    * analysis                          Based on the sys.statement_analysis view\n    * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view\n    * with_full_table_scans             Based on the sys.statements_with_full_table_scans view\n    * with_sorting                      Based on the sys.statements_with_sorting view\n    * with_temp_tables                  Based on the sys.statements_with_temp_tables view\n    * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query\n\nDefault is to include all except ''custom''.\n\n\nConfiguration Options\n----------------------\n\nsys.statement_performance_analyzer.limit\n  The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view).\n  If not set the limit is 100.\n\nsys.statement_performance_analyzer.view\n  Used together with the ''custom'' view. If the value contains a space, it is considered a query, otherwise it must be\n  an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit\n  clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0.\n  If specifying a view, use the same format as for in_table.\n\nsys.debug\n  Whether to provide debugging output.\n  Default is ''OFF''. Set to ''ON'' to include.\n\n\nExample\n--------\n\nTo create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest\nand the delta for a 1 minute period:\n\n   1. Create a temporary table to store the initial snapshot.\n   2. Create the initial snapshot.\n   3. Save the initial snapshot in the temporary table.\n   4. Wait one minute.\n   5. Create a new snapshot.\n   6. Perform analyzis based on the new snapshot.\n   7. Perform analyzis based on the delta between the initial and new snapshots.\n\nmysql> CALL sys.statement_performance_analyzer(''create_tmp'', ''mydb.tmp_digests_ini'', NULL);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''save'', ''mydb.tmp_digests_ini'', NULL);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DO SLEEP(60);\nQuery OK, 0 rows affected (1 min 0.00 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile'');\n+-----------------------------------------+\n| Next Output                             |\n+-----------------------------------------+\n| Queries with Runtime in 95th Percentile |\n+-----------------------------------------+\n1 row in set (0.05 sec)\n\n...\n\nmysql> CALL sys.statement_performance_analyzer(''delta'', ''mydb.tmp_digests_ini'', ''with_runtimes_in_95th_percentile'');\n+-----------------------------------------+\n| Next Output                             |\n+-----------------------------------------+\n| Queries with Runtime in 95th Percentile |\n+-----------------------------------------+\n1 row in set (0.03 sec)\n\n...\n\n\nTo create an overall report of the 95th percentile queries and the top 10 queries with full table scans:\n\nmysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET @sys.statement_performance_analyzer.limit = 10;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile,with_full_table_scans'');\n+-----------------------------------------+\n| Next Output                             |\n+-----------------------------------------+\n| Queries with Runtime in 95th Percentile |\n+-----------------------------------------+\n1 row in set (0.01 sec)\n\n...\n\n+-------------------------------------+\n| Next Output                         |\n+-------------------------------------+\n| Top 10 Queries with Full Table Scan |\n+-------------------------------------+\n1 row in set (0.09 sec)\n\n...\n\n\nUse a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using\nthe watch command in Linux.\n\nmysql> CREATE OR REPLACE VIEW mydb.my_statements AS\n    -> SELECT sys.format_statement(DIGEST_TEXT) AS query,\n    ->        SCHEMA_NAME AS db,\n    ->        COUNT_STAR AS exec_count,\n    ->        format_pico_time(SUM_TIMER_WAIT) AS total_latency,\n    ->        format_pico_time(AVG_TIMER_WAIT) AS avg_latency,\n    ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,\n    ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg,\n    ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg,\n    ->        DIGEST AS digest\n    ->   FROM performance_schema.events_statements_summary_by_digest\n    -> ORDER BY SUM_TIMER_WAIT DESC;\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> CALL sys.statement_performance_analyzer(''create_table'', ''mydb.digests_prev'', NULL);\nQuery OK, 0 rows affected (0.10 sec)\n\nshell$ watch -n 60 "mysql sys --table -e "\n> SET @sys.statement_performance_analyzer.view = ''mydb.my_statements'';\n> SET @sys.statement_performance_analyzer.limit = 10;\n> CALL statement_performance_analyzer(''snapshot'', NULL, NULL);\n> CALL statement_performance_analyzer(''delta'', ''mydb.digests_prev'', ''custom'');\n> CALL statement_performance_analyzer(''save'', ''mydb.digests_prev'', NULL);\n> ""\n\nEvery 60.0s: mysql sys --table -e "                                                                                                   ...  Mon Dec 22 10:58:51 2014\n\n+----------------------------------+\n| Next Output                      |\n+----------------------------------+\n| Top 10 Queries Using Custom View |\n+----------------------------------+\n+-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n| query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           |\n+-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n...\n'
BEGIN
    DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT '';
    DECLARE v_this_thread_enabled ENUM('YES', 'NO');
    DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE;
    DECLARE v_digests_table VARCHAR(133);
    DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT '';
    DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64);
    DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text;
    DECLARE v_sql longtext;
    -- Maximum supported length for MESSAGE_TEXT with the SIGNAL command is 128 chars.
    DECLARE v_error_msg VARCHAR(128);
    DECLARE v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;
    -- Don't instrument this thread
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    -- Temporary table are used - disable sql_log_bin if necessary to prevent them replicating
    SET @log_bin := @@sql_log_bin;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = 0;
    END IF;
    -- Set configuration options
    IF (@sys.statement_performance_analyzer.limit IS NULL) THEN
        SET @sys.statement_performance_analyzer.limit = sys.sys_get_config('statement_performance_analyzer.limit', '100');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                                = sys.sys_get_config('debug'                               , 'OFF');
    END IF;
    -- If in_table is set, break in_table into a db and table component and check whether it exists
    -- in_table = NOW() is considered like it's not set.
    IF (in_table = 'NOW()') THEN
        SET v_force_new_snapshot = TRUE,
            in_table             = NULL;
    ELSEIF (in_table IS NOT NULL) THEN
        IF (NOT INSTR(in_table, '.')) THEN
            -- No . in the table name - use current database
            -- DATABASE() will be the database of the procedure
            SET v_table_db   = DATABASE(),
                v_table_name = in_table;
        ELSE
            SET v_table_db   = SUBSTRING_INDEX(in_table, '.', 1);
            SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2);
        END IF;
        SET v_quoted_table = CONCAT('`', v_table_db, '`.`', v_table_name, '`');
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('in_table is: db = ''', v_table_db, ''', table = ''', v_table_name, '''') AS 'Debug';
        END IF;
        IF (v_table_db = DATABASE() AND (v_table_name = 'tmp_digests' OR v_table_name = 'tmp_digests_delta')) THEN
            SET v_error_msg = CONCAT('Invalid value for in_table: ', v_quoted_table, ' is reserved table name.');
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = v_error_msg;
        END IF;
        CALL sys.table_exists(v_table_db, v_table_name, v_table_exists);
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('v_table_exists = ', v_table_exists) AS 'Debug';
        END IF;
        IF (v_table_exists = 'BASE TABLE') THEN
            SET v_old_group_concat_max_len = @@session.group_concat_max_len;
            SET @@session.group_concat_max_len = 2048;
            -- Verify that the table has the correct table definition
            -- This can only be done for base tables as temporary aren't in information_schema.COLUMNS.
            -- This also minimises the risk of using a production table.
            SET v_checksum_ref = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'events_statements_summary_by_digest'
                ),
                v_checksum_table = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name
                );
            SET @@session.group_concat_max_len = v_old_group_concat_max_len;
            IF (v_checksum_ref <> v_checksum_table) THEN
                -- The table does not have the correct definition, so abandon
                SET v_error_msg = CONCAT('The table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT('...', SUBSTRING(v_quoted_table, -90)), v_quoted_table),
                                         ' has the wrong definition.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        END IF;
    END IF;
    IF (in_views IS NULL OR in_views = '') THEN
        -- Set to default
        SET in_views = 'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables';
    END IF;
    -- Validate settings
    CALL sys.table_exists(DATABASE(), 'tmp_digests', v_tmp_digests_table_exists);
    IF (@sys.debug = 'ON') THEN
        SELECT CONCAT('v_tmp_digests_table_exists = ', v_tmp_digests_table_exists) AS 'Debug';
    END IF;
    CASE
        WHEN in_action IN ('snapshot', 'overall') THEN
            -- in_table must be NULL, NOW(), or an existing table
            IF (in_table IS NOT NULL) THEN
                IF (NOT v_table_exists IN ('TEMPORARY', 'BASE TABLE')) THEN
                    SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be NULL, NOW() or specify an existing table.',
                                             ' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT('...', SUBSTRING(v_quoted_table, -13)), v_quoted_table),
                                             ' does not exist.');
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = v_error_msg;
                END IF;
            END IF;
        WHEN in_action IN ('delta', 'save') THEN
            -- in_table must be an existing table
            IF (v_table_exists NOT IN ('TEMPORARY', 'BASE TABLE')) THEN
                SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be an existing table.',
                                         IF(in_table IS NOT NULL, CONCAT(' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT('...', SUBSTRING(v_quoted_table, -36)), v_quoted_table),
                                             ' does not exist.'), ''));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
            IF (in_action = 'delta' AND v_tmp_digests_table_exists <> 'TEMPORARY') THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'An existing snapshot generated with the statement_performance_analyzer() must exist.';
            END IF;
        WHEN in_action = 'create_tmp' THEN
            -- in_table must not exists as a temporary table
            IF (v_table_exists = 'TEMPORARY') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT('...', SUBSTRING(v_quoted_table, -69)), v_quoted_table),
                                         ' as it already exists.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'create_table' THEN
            -- in_table must not exists at all
            IF (v_table_exists <> '') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT('...', SUBSTRING(v_quoted_table, -49)), v_quoted_table),
                                         ' as it already exists',
                                         IF(v_table_exists = 'TEMPORARY', ' as a temporary table.', '.'));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'cleanup' THEN
            -- doesn't use any of the arguments
            DO (SELECT 1);
        ELSE
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = 'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot';
    END CASE;
    SET v_digest_table_template = 'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(64) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `COUNT_STAR` bigint unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint unsigned NOT NULL,
  `SUM_ERRORS` bigint unsigned NOT NULL,
  `SUM_WARNINGS` bigint unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint unsigned NOT NULL,
  `FIRST_SEEN` timestamp(6) NULL DEFAULT NULL,
  `LAST_SEEN` timestamp(6) NULL DEFAULT NULL,
  `QUANTILE_95` bigint unsigned NOT NULL,
  `QUANTILE_99` bigint unsigned NOT NULL,
  `QUANTILE_999` bigint unsigned NOT NULL,
  `QUERY_SAMPLE_TEXT` longtext,
  `QUERY_SAMPLE_SEEN` timestamp(6) NULL DEFAULT NULL,
  `QUERY_SAMPLE_TIMER_WAIT` bigint unsigned NOT NULL,
  INDEX (SCHEMA_NAME, DIGEST)
) DEFAULT CHARSET=utf8mb4';
    -- Do the action
    -- The actions snapshot, ... requires a fresh snapshot - create it now
    IF (v_force_new_snapshot
           OR in_action = 'snapshot'
           OR (in_action = 'overall' AND in_table IS NULL)
           OR (in_action = 'save' AND v_tmp_digests_table_exists <> 'TEMPORARY')
       ) THEN
        IF (v_tmp_digests_table_exists = 'TEMPORARY') THEN
            IF (@sys.debug = 'ON') THEN
                SELECT 'DROP TEMPORARY TABLE IF EXISTS tmp_digests' AS 'Debug';
            END IF;
            DROP TEMPORARY TABLE IF EXISTS tmp_digests;
        END IF;
        CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', 'tmp_digests'));
        SET v_sql = CONCAT('INSERT INTO tmp_digests SELECT * FROM ',
                           IF(in_table IS NULL OR in_action = 'save', 'performance_schema.events_statements_summary_by_digest', v_quoted_table));
        CALL sys.execute_prepared_stmt(v_sql);
    END IF;
    -- Go through the remaining actions
    IF (in_action IN ('create_table', 'create_tmp')) THEN
        IF (in_action = 'create_table') THEN
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', ''), '%{TABLE_NAME}', v_quoted_table));
        ELSE
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', v_quoted_table));
        END IF;
    ELSEIF (in_action = 'save') THEN
        CALL sys.execute_prepared_stmt(CONCAT('DELETE FROM ', v_quoted_table));
        CALL sys.execute_prepared_stmt(CONCAT('INSERT INTO ', v_quoted_table, ' SELECT * FROM tmp_digests'));
    ELSEIF (in_action = 'cleanup') THEN
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests;
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta;
    ELSEIF (in_action IN ('overall', 'delta')) THEN
        -- These are almost the same - for delta calculate the delta in tmp_digests_delta and use that instead of tmp_digests.
        -- And overall allows overriding the table to use.
        IF (in_action = 'overall') THEN
            IF (in_table IS NULL) THEN
                SET v_digests_table = 'tmp_digests';
            ELSE
                SET v_digests_table = v_quoted_table;
            END IF;
        ELSE
            SET v_digests_table = 'tmp_digests_delta';
            DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta;
            CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests;
            SET v_sql = CONCAT('INSERT INTO tmp_digests_delta
SELECT `d_end`.`SCHEMA_NAME`,
       `d_end`.`DIGEST`,
       `d_end`.`DIGEST_TEXT`,
       `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS ''COUNT_STAR'',
       `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS ''SUM_TIMER_WAIT'',
       `d_end`.`MIN_TIMER_WAIT` AS ''MIN_TIMER_WAIT'',
       IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS ''AVG_TIMER_WAIT'',
       `d_end`.`MAX_TIMER_WAIT` AS ''MAX_TIMER_WAIT'',
       `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS ''SUM_LOCK_TIME'',
       `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS ''SUM_ERRORS'',
       `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS ''SUM_WARNINGS'',
       `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS ''SUM_ROWS_AFFECTED'',
       `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS ''SUM_ROWS_SENT'',
       `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS ''SUM_ROWS_EXAMINED'',
       `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS ''SUM_CREATED_TMP_DISK_TABLES'',
       `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS ''SUM_CREATED_TMP_TABLES'',
       `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS ''SUM_SELECT_FULL_JOIN'',
       `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS ''SUM_SELECT_FULL_RANGE_JOIN'',
       `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS ''SUM_SELECT_RANGE'',
       `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS ''SUM_SELECT_RANGE_CHECK'',
       `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS ''SUM_SELECT_SCAN'',
       `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS ''SUM_SORT_MERGE_PASSES'',
       `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS ''SUM_SORT_RANGE'',
       `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS ''SUM_SORT_ROWS'',
       `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS ''SUM_SORT_SCAN'',
       `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS ''SUM_NO_INDEX_USED'',
       `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS ''SUM_NO_GOOD_INDEX_USED'',
       `d_end`.`FIRST_SEEN`,
       `d_end`.`LAST_SEEN`,
       `d_end`.`QUANTILE_95`,
       `d_end`.`QUANTILE_99`,
       `d_end`.`QUANTILE_999`,
       `d_end`.`QUERY_SAMPLE_TEXT`,
       `d_end`.`QUERY_SAMPLE_SEEN`,
       `d_end`.`QUERY_SAMPLE_TIMER_WAIT`
  FROM tmp_digests d_end
       LEFT OUTER JOIN ', v_quoted_table, ' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST`
                                                    AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME`
                                                          OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL)
                                                        )
 WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0');
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_runtimes_in_95th_percentile', in_views)) THEN
            SELECT 'Queries with Runtime in 95th Percentile' AS 'Next Output';
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 (
              cnt bigint unsigned NOT NULL,
              avg_us decimal(21,0) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_avg_latency_distribution1
SELECT COUNT(*) cnt,
       ROUND(avg_timer_wait/1000000) AS avg_us
  FROM ', v_digests_table, '
 GROUP BY avg_us');
            CALL sys.execute_prepared_stmt(v_sql);
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1;
            INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;
            CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us (
              avg_us decimal(21,0) NOT NULL,
              percentile decimal(46,4) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_95th_percentile_by_avg_us
SELECT s2.avg_us avg_us,
       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM ', v_digests_table, '), 0), 0) percentile
  FROM tmp_digest_avg_latency_distribution1 AS s1
       JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us
 GROUP BY s2.avg_us
HAVING percentile > 0.95
 ORDER BY percentile
 LIMIT 1');
            CALL sys.execute_prepared_stmt(v_sql);
            SET v_sql =
                REPLACE(
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_runtimes_in_95th_percentile'
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    ),
                    'sys.x$ps_digest_95th_percentile_by_avg_us',
                    '`sys`.`x$ps_digest_95th_percentile_by_avg_us`'
              );
            CALL sys.execute_prepared_stmt(v_sql);
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us;
        END IF;
        IF (FIND_IN_SET('analysis', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Ordered by Total Latency') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statement_analysis'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_errors_or_warnings', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Errors') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_errors_or_warnings'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_full_table_scans', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Full Table Scan') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_full_table_scans'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_sorting', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Sorting') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_sorting'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_temp_tables', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Internal Temporary Tables') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_temp_tables'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('custom', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Using Custom View') AS 'Next Output';
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SET @sys.statement_performance_analyzer.view = sys.sys_get_config('statement_performance_analyzer.view', NULL);
            END IF;
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.';
            END IF;
            IF (NOT INSTR(@sys.statement_performance_analyzer.view, ' ')) THEN
                -- No spaces, so can't be a query
                IF (NOT INSTR(@sys.statement_performance_analyzer.view, '.')) THEN
                    -- No . in the table name - use current database
                    -- DATABASE() will be the database of the procedure
                    SET v_custom_db   = DATABASE(),
                        v_custom_name = @sys.statement_performance_analyzer.view;
                ELSE
                    SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, '.', 1);
                    SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2);
                END IF;
                CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists);
                IF (v_custom_view_exists <> 'VIEW') THEN
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.';
                END IF;
                SET v_sql =
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    );
            ELSE
                SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table);
            END IF;
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
    END IF;
    -- Restore INSTRUMENTED for this thread
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql.sys`@`localhost` PROCEDURE `table_exists`(
        IN in_db VARCHAR(64), IN in_table VARCHAR(64),
        OUT out_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY')
    )
    SQL SECURITY INVOKER
    COMMENT '\nDescription\n-----------\n\nTests whether the table specified in in_db and in_table exists either as a regular\ntable, or as a temporary table. The returned value corresponds to the table that\nwill be used, so if there''s both a temporary and a permanent table with the given\nname, then ''TEMPORARY'' will be returned.\n\nParameters\n-----------\n\nin_db (VARCHAR(64)):\n  The database name to check for the existance of the table in.\n\nin_table (VARCHAR(64)):\n  The name of the table to check the existance of.\n\nout_exists ENUM('''', ''BASE TABLE'', ''VIEW'', ''TEMPORARY''):\n  The return value: whether the table exists. The value is one of:\n    * ''''           - the table does not exist neither as a base table, view, nor temporary table.\n    * ''BASE TABLE'' - the table name exists as a permanent base table table.\n    * ''VIEW''       - the table name exists as a view.\n    * ''TEMPORARY''  - the table name exists as a temporary table.\n\nExample\n--------\n\nmysql> CREATE DATABASE db1;\nQuery OK, 1 row affected (0.07 sec)\n\nmysql> use db1;\nDatabase changed\nmysql> CREATE TABLE t1 (id INT PRIMARY KEY);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> CREATE TABLE t2 (id INT PRIMARY KEY);\nQuery OK, 0 rows affected (0.08 sec)\n\nmysql> CREATE view v_t1 AS SELECT * FROM t1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''t1'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.00 sec)\n\n+------------+\n| @exists    |\n+------------+\n| TEMPORARY  |\n+------------+\n1 row in set (0.00 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''t2'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.00 sec)\n\n+------------+\n| @exists    |\n+------------+\n| BASE TABLE |\n+------------+\n1 row in set (0.01 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''v_t1'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.00 sec)\n\n+---------+\n| @exists |\n+---------+\n| VIEW    |\n+---------+\n1 row in set (0.00 sec)\n\nmysql> CALL sys.table_exists(''db1'', ''t3'', @exists); SELECT @exists;\nQuery OK, 0 rows affected (0.01 sec)\n\n+---------+\n| @exists |\n+---------+\n|         |\n+---------+\n1 row in set (0.00 sec)\n'
BEGIN
    DECLARE v_error BOOLEAN DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE;
    DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;
    SET out_exists = '';
    -- Verify whether the table name exists as a normal table
    IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN
        -- Unfortunately the only way to determine whether there is also a temporary table is to try to create
        -- a temporary table with the same name. If it succeeds the table didn't exist as a temporary table.
        SET @sys.tmp.table_exists.SQL = CONCAT('CREATE TEMPORARY TABLE `', in_db, '`.`', in_table, '` (id INT PRIMARY KEY)');
        PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL;
        EXECUTE stmt_create_table;
        DEALLOCATE PREPARE stmt_create_table;
        IF (v_error) THEN
            SET out_exists = 'TEMPORARY';
        ELSE
            -- The temporary table was created, i.e. it didn't exist. Remove it again so we don't leave garbage around.
            SET @sys.tmp.table_exists.SQL = CONCAT('DROP TEMPORARY TABLE `', in_db, '`.`', in_table, '`');
            PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL;
            EXECUTE stmt_drop_table;
            DEALLOCATE PREPARE stmt_drop_table;
            SET out_exists = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table);
        END IF;
    ELSE
        -- Check whether a temporary table exists with the same name.
        -- If it does it's possible to SELECT from the table without causing an error.
        -- If it does not exist even a PREPARE using the table will fail.
        SET @sys.tmp.table_exists.SQL = CONCAT('SELECT COUNT(*) FROM `', in_db, '`.`', in_table, '`');
        PREPARE stmt_select FROM @sys.tmp.table_exists.SQL;
        IF (NOT v_error) THEN
            DEALLOCATE PREPARE stmt_select;
            SET out_exists = 'TEMPORARY';
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `ecoplan`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecoplan` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ecoplan`;

--
-- Table structure for table `atividade`
--

DROP TABLE IF EXISTS `atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividade`
--

LOCK TABLES `atividade` WRITE;
/*!40000 ALTER TABLE `atividade` DISABLE KEYS */;
INSERT INTO `atividade` VALUES (1,'POSTO DE REVENDA DE COMBUSTÍVEIS'),(2,'INDÚSTRIA'),(3,'TRANSPORTE DE COMBUSTIVEIS'),(4,'LAVADOR DE VEÍCULOS'),(5,'MARMORARIA'),(6,'CONCESSIONÁRIA'),(7,'PISCICULTURA'),(8,'SERRARIA'),(9,'OFICINA MECANICA');
/*!40000 ALTER TABLE `atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_municipio` int DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_municipio_idx` (`id_municipio`),
  CONSTRAINT `fk_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,15,'NOVA CANAA'),(2,45,'ALTO GUANDU'),(3,45,'AMANCIO PIMENTA'),(4,45,'ARREPENDIDO'),(5,45,'BAIRRO DA GRAMA'),(6,45,'BELA VISTA'),(7,45,'BOA FE'),(8,45,'CAMPO VINTE'),(9,45,'CAMPO VINTE E UM'),(10,45,'CARIACICA'),(11,45,'CASA HOMEM DO CAMPO'),(12,45,'CENTRO'),(13,45,'COLINA DO CRUZEIRO'),(14,45,'CONSTANTINO DELPUPO'),(15,45,'CUSTODIO LEITE RIBEIRO'),(16,45,'DA GRAMA'),(17,45,'EMPOSSADO'),(18,45,'ESPLANADA'),(19,45,'FAZENDA GUANDU'),(20,45,'FLORESTA'),(21,45,'FORTALEZA'),(22,45,'GINASIO'),(23,45,'GRAMA'),(24,45,'ITAPOA'),(25,45,'JOAO DUARTE MANSO'),(26,45,'JOAO SOARES'),(27,45,'JOAO VALIM'),(28,45,'MORRO DA CESAN'),(29,45,'MORRO DO IPIRANGA'),(30,45,'MORRO DO QUEROZENE'),(31,45,'MORRO VILA NOVA'),(32,45,'PIRACEMA'),(33,45,'RIO DAS COBRAS'),(34,45,'SAO FRANCISCO'),(35,45,'SAO VICENTE'),(36,45,'SAO VICENTE DE BOLZA'),(37,45,'SEDE'),(38,45,'VARGEM ALTA'),(39,45,'VARGEM GRANDE'),(40,45,'VILA NOVA'),(41,45,'VILA PONTOES'),(42,45,'ZONA RURAL'),(43,49,'APARECIDINHA'),(44,49,'SAO BENTO DE URANIO'),(45,49,'ZONA RURAL'),(46,50,'CENTRO'),(47,51,'ALVORADA II'),(48,51,'CENTRO'),(49,53,'ABB'),(50,53,'ALDEIA CAIEIRAS VELHAS'),(51,53,'ALDEIA REAL'),(52,53,'AREA RURAL'),(53,53,'BAIRRO DE FATIMA'),(54,53,'BALNEARIO DE SANTA CRUZ'),(55,53,'BALNEARIO DO SAUE'),(56,53,'BALNEARIO SANTA CRUZ'),(57,53,'BARRA DO RIACHO'),(58,53,'BARRA DO SAHY'),(59,53,'BECO DO CAMPO DO BEIRA RIO'),(60,53,'BELA VISTA'),(61,53,'BIRIRICAS'),(62,53,'BOA VISTA'),(63,53,'CACHOEIRINHA'),(64,53,'CACHOEIRINHA DE SANTA CRUZ'),(65,53,'CAIEIRAS VELHAS'),(66,53,'CENTRO'),(67,53,'CLEMENTE'),(68,53,'COHAB I'),(69,53,'COHAB II'),(70,53,'COHAB III'),(71,53,'COHAB IV'),(72,53,'COLATINA'),(73,53,'CONJUNTO PADRE BAHUER'),(74,53,'CONJUNTO PEDRO BAUER'),(75,53,'CONJUNTO POR DO SOL'),(76,53,'CONJUNTO SAVASSI'),(77,53,'COQUEIRAL'),(78,53,'COQUEIRAL DE ARACRUZ'),(79,53,'COROADO'),(80,53,'CORREGO ALEGRE'),(81,53,'CORREGO DAGUA'),(82,53,'CUPIDO'),(83,53,'CUPIDO VISTA LINDA'),(84,53,'DE CARLI'),(85,53,'DE FATIMA'),(86,53,'ELIAS BRAGATTO'),(87,53,'FATIMA'),(88,53,'GINASIO'),(89,53,'GIUSEPPE TESTA'),(90,53,'GOIABAS'),(91,53,'GRAPUAMA'),(92,53,'GUANABARA'),(93,53,'GUARANA'),(94,53,'GUAXINDIBA'),(95,53,'IRAJA'),(96,53,'IRAJA I'),(97,53,'IRAJA II'),(98,53,'ITAPARICA'),(99,53,'ITAPUTERA'),(100,53,'JACUPEMBA'),(101,53,'JARDINS'),(102,53,'JEQUITIBA'),(103,53,'LIMAO'),(104,53,'LIMAO I'),(105,53,'LIMAO II'),(106,53,'LOT. POR DO SOL'),(107,53,'MAR AZUL'),(108,53,'MARANATA'),(109,53,'MARIA LOURO DOS SANTOS'),(110,53,'MORADA DO SAHY'),(111,53,'MOROBA'),(112,53,'MOROBAZINHO'),(113,53,'NOVA ARACRUZ'),(114,53,'NOVA COLATINA'),(115,53,'NOVA CONQUISTA'),(116,53,'NOVA CONQUISTA I'),(117,53,'NOVA CONQUISTA II'),(118,53,'NOVA ESPERANCA'),(119,53,'NOVA SANTA CRUZ'),(120,53,'NOVO IRAJA'),(121,53,'NOVO IRAJA II'),(122,53,'NOVO JEQUITIBA'),(123,53,'NOVO POLIVALENTE'),(124,53,'ORLY RAMOS'),(125,53,'PADRE BAHUER'),(126,53,'PARAISO'),(127,53,'PARQUE TROPICAL'),(128,53,'PAU PRETO'),(129,53,'PEDRINHAS BARRA DO SAHY'),(130,53,'PINDORAMA'),(131,53,'PLANALTO'),(132,53,'POLIVALENTE'),(133,53,'PONTAL DO PIRAQUEAÇU'),(134,53,'POR DO SOL'),(135,53,'PRAIA DE COQUEIRAL'),(136,53,'PRAIA DE PUTIRI'),(137,53,'PRAIA DO SAUE'),(138,53,'PRAIA DOS PADRES'),(139,53,'PRIMAVERA'),(140,53,'PUTIRI'),(141,53,'QUATRO IRMAOS'),(142,53,'RECANTO FELIZ'),(143,53,'RESIDENCIAL VALE VERDE'),(144,53,'RESIDENCIAL VISTA LINDA'),(145,53,'RETIRO'),(146,53,'RIBEIRAO DO MEIO'),(147,53,'RIBEIRAO DO SAPE'),(148,53,'SANTA CRUZ'),(149,53,'SANTA LUZIA'),(150,53,'SANTA MARIA DO LIMAO'),(151,53,'SANTA RITA'),(152,53,'SANTA ROSA'),(153,53,'SAO CAMILO'),(154,53,'SAO FRANCISCO'),(155,53,'SAO JORGE'),(156,53,'SAO JOSE'),(157,53,'SAO JOSE GUAXINDIBA'),(158,53,'SAO MARCOS'),(159,53,'SAO PEDRO'),(160,53,'SAPOLANDIA'),(161,53,'SAUACU'),(162,53,'SEGATO'),(163,53,'SOLAR BITTI'),(164,53,'TAQUARAL'),(165,53,'TREVO DO BELA VISTA'),(166,53,'TRIVILIN'),(167,53,'VILA DE GUARANA'),(168,53,'VILA DO RIACHO'),(169,53,'VILA GUARANA'),(170,53,'VILA NOVA'),(171,53,'VILA RICA'),(172,53,'VILA SANTA CRUZ'),(173,53,'VISTA LINDA'),(174,53,'XIQUE XIQUE'),(175,53,'ZONA RURAL'),(176,55,'ALTO GUANDU'),(177,55,'CENTRO'),(178,55,'MASCARENHAS'),(179,55,'MAUA'),(180,55,'MUTUM'),(181,55,'MUTUM PRETO'),(182,55,'OPERARIO'),(183,55,'RESIDENCIAL RICARDO HOLZ'),(184,55,'ROSARIO I'),(185,55,'ROSARIO II'),(186,55,'ROSARIO III'),(187,55,'SANTA MONICA'),(188,55,'SANTA ROSA'),(189,55,'SAO JOSE'),(190,55,'SAO PEDRO'),(191,55,'SAO PEDRO I'),(192,55,'SAO VICENTE'),(193,55,'SAPUCAIA'),(194,55,'URBANA'),(195,55,'VAL PARAISO'),(196,55,'VILA KENEDY'),(197,56,'BAMBE'),(198,56,'CENTRO'),(199,56,'VILA GONCALVES'),(200,56,'VILA PAULISTA'),(201,56,'ZONA RURAL'),(202,58,'NOVO HORIZONTE'),(203,58,'VILA TAVARES'),(204,60,'ALTO RANCHO DANTAS'),(205,60,'AREA RURAL'),(206,60,'BREJAUBINHA'),(207,60,'CENTRO'),(208,60,'COHAB'),(209,60,'CORREGO SERTAOZINHO'),(210,60,'FAZENDA BELA VISTA'),(211,60,'NOBRE'),(212,60,'RIBEIRAO DO MEIO'),(213,60,'SERTAOZINHO'),(214,60,'TRABALHISTA'),(215,60,'ULYANA'),(216,60,'VARGEM GRANDE'),(217,60,'VILA BREJAUBINHA'),(218,60,'VILA CEDRO'),(219,60,'VILA MADALENA'),(220,60,'ZONA RURAL'),(221,61,'AGOSTINHO SIMONATO'),(222,61,'ALTO CORONARA'),(223,61,'BNH'),(224,61,'CENTRO'),(225,61,'DACILEIA'),(226,61,'NOVO PARQUE'),(227,61,'SANTA HELENA'),(228,61,'SAO LUIZ GONZAGA'),(229,61,'VILAGE DA LUZ'),(230,62,'ALICE COUTINHO'),(231,62,'ALTO LAGE'),(232,62,'ALZIRA RAMOS'),(233,62,'ANTONIO FERREIRA BARBOSA'),(234,62,'ANTONIO FERREIRA BORGES'),(235,62,'APARECIDA'),(236,62,'AREINHA'),(237,62,'BANDEIRANTES'),(238,62,'BELA AURORA'),(239,62,'BELA VISTA'),(240,62,'BELA VISTA II'),(241,62,'BOA SORTE'),(242,62,'BOA VISTA'),(243,62,'BOM PASTOR'),(244,62,'BUBU'),(245,62,'CAMPINA GRANDE'),(246,62,'CAMPINA VERDE'),(247,62,'CAMPO BELO'),(248,62,'CAMPO BELO II'),(249,62,'CAMPO GRANDE'),(250,62,'CAMPO NOVO'),(251,62,'CAMPO VERDE'),(252,62,'CAPIXABA'),(253,62,'CARIACICA SEDE'),(254,62,'CASTELO BRANCO'),(255,62,'CENTRAL CARAPINA'),(256,62,'CENTRO'),(257,62,'COLINA'),(258,62,'CRUZEIRO DO SUL'),(259,62,'DEL PORTO'),(260,62,'DOM BOSCO'),(261,62,'ESTRELA DO SUL'),(262,62,'EXPEDITO'),(263,62,'FLEXAL'),(264,62,'FLEXAL I'),(265,62,'FLEXAL II'),(266,62,'FLOR DO CAMPO'),(267,62,'FLORIDA'),(268,62,'GRAUNA'),(269,62,'INDEPENDENCIA'),(270,62,'ITACIBA'),(271,62,'ITANGUA'),(272,62,'ITAPEMIRIM'),(273,62,'ITAQUARI'),(274,62,'JARDIM AMERICA'),(275,62,'JARDIM BOTANICO'),(276,62,'JARDIM BOTANICO II'),(277,62,'JARDIM CAMBURI'),(278,62,'JARDIM CAMPO GRANDE'),(279,62,'JARDIM CAMPO VERDE'),(280,62,'JARDIM DA MONTANHA'),(281,62,'JARDIM DE ALAH'),(282,62,'JARDIM DOS PALMARES'),(283,62,'LIBERDADE'),(284,62,'LIMAO'),(285,62,'LOTEAMENTO SANTO ANTONIO'),(286,62,'MARCILIO DE NORONHA'),(287,62,'MATA DA PRAIA'),(288,62,'MODELO'),(289,62,'MORADA DE CAMPO GRANDE'),(290,62,'MORADA DE SANTA FE'),(291,62,'MORRINHO'),(292,62,'MUCURI'),(293,62,'NELSON RAMOS'),(294,62,'NOVA BRASILIA'),(295,62,'NOVA CAMPO GRANDE'),(296,62,'NOVA CANAA'),(297,62,'NOVA ESPERANCA'),(298,62,'NOVA ESPERANCA I'),(299,62,'NOVA ESPERANCA II'),(300,62,'NOVA ROSA DA PENHA'),(301,62,'NOVA ROSA DA PENHA I'),(302,62,'NOVA ROSA DA PENHA II'),(303,62,'NOVA VALVERDE'),(304,62,'NOVO BRASIL'),(305,62,'OPERARIO'),(306,62,'ORIENTE'),(307,62,'PADRE GABRIEL'),(308,62,'PARQUE GRAMADO'),(309,62,'PARQUE RESIDENCIAL MARACANA'),(310,62,'PIRACEMA'),(311,62,'PIRANEMA'),(312,62,'PORTO BELO I'),(313,62,'PORTO BELO II'),(314,62,'PORTO DE CARIACICA'),(315,62,'PORTO DE SANTANA'),(316,62,'PORTO NOVO'),(317,62,'PROLAR'),(318,62,'PROLAR II'),(319,62,'RESIDENCIAL HORIZONTE'),(320,62,'RESIDENCIAL TIRADENTES'),(321,62,'RETIRO SAUDOSO'),(322,62,'RIO BRANCO'),(323,62,'RIO MARINHO'),(324,62,'ROSA DA PENHA'),(325,62,'SANTA ANA'),(326,62,'SANTA BARBARA'),(327,62,'SANTA CATARINA'),(328,62,'SANTA CATARINA I'),(329,62,'SANTA CECILIA'),(330,62,'SANTA FE'),(331,62,'SANTA LUZIA'),(332,62,'SANTA PAULA'),(333,62,'SANTA PAULA II'),(334,62,'SANTA ROSA'),(335,62,'SANTANA'),(336,62,'SANTO ANDRE'),(337,62,'SANTO ANTONIO'),(338,62,'SAO BENEDITO'),(339,62,'SAO CONRADO'),(340,62,'SAO FRANCISCO'),(341,62,'SAO GERALDO'),(342,62,'SAO GERALDO I'),(343,62,'SAO GERALDO II'),(344,62,'SAO JOAO BATISTA'),(345,62,'SEDE'),(346,62,'SOTEMA'),(347,62,'TABAJARA'),(348,62,'TREVO ALTO LAGE'),(349,62,'TUCUM'),(350,62,'VALE DOS REIS'),(351,62,'VALE DOS REIS II'),(352,62,'VALVERDE'),(353,62,'VASCO DA GAMA'),(354,62,'VERA CRUZ'),(355,62,'VEU PORJO'),(356,62,'VILA BANDEIRANTE'),(357,62,'VILA CAPIXABA'),(358,62,'VILA GRAUNA'),(359,62,'VILA INDEPENDENCIA'),(360,62,'VILA ISABEL'),(361,62,'VILA MARIA'),(362,62,'VILA MERLO'),(363,62,'VILA NOVA'),(364,62,'VILA PALESTINA'),(365,62,'VILA PROGRESSO'),(366,62,'VILA PRUDENCIO'),(367,62,'VISTA DOURADA'),(368,62,'VISTA LINDA'),(369,62,'VISTA MAR'),(370,62,'VISTA MAR II'),(371,62,'ZONA RURAL'),(372,63,'CASTELINHO'),(373,63,'CENTRO'),(374,63,'INDEPENDENCIA'),(375,63,'NITEROI'),(376,63,'NOSSA SENHORA APARECIDA'),(377,63,'NOSSA SENHORA DA APARECIDA'),(378,63,'POUSO ALTO'),(379,63,'RESIDENCIAL FRANCISCO DE SOUZA OLMO'),(380,63,'SANTO AGOSTINHO'),(381,63,'SANTO ANDREZINHO'),(382,63,'SAO MIGUEL'),(383,63,'VALTA REDONDA'),(384,63,'VILA ISABEL'),(385,63,'VILA MARIA'),(386,63,'VOLTA REDONDA'),(387,64,'15 DE OUTUBRO'),(388,64,'25 DE JANEIRO'),(389,64,'ACAMPAMENTO'),(390,64,'ADELIO GIUBERTI'),(391,64,'AEROPORTO'),(392,64,'AEROPORTO II'),(393,64,'AEROPORTO III'),(394,64,'ALTO DA LAGOA'),(395,64,'ALTO SAO VICENTE'),(396,64,'ALTO VICENTE'),(397,64,'ALTO VILA NOVA'),(398,64,'AMARILIO CAIADO FRAGA'),(399,64,'ANCHIETA'),(400,64,'ANGELO FRECHIANI'),(401,64,'ANTONIO DAMIANI'),(402,64,'APARECIDA'),(403,64,'ARANHA'),(404,64,'AYRTON SENNA'),(405,64,'BAIXO GUANDU'),(406,64,'BARBADOS'),(407,64,'BARREIO DE CIMA'),(408,64,'BAUNILHA'),(409,64,'BELA VISTA'),(410,64,'BENJAMIN CARLOS DOS SANTOS'),(411,64,'BOA ESPERAN€A'),(412,64,'BOAPABA'),(413,64,'CAMPESTRE'),(414,64,'CARLOS GERMANO NAUMANN'),(415,64,'CASTELO BRANCO'),(416,64,'CENTRO'),(417,64,'CLEMENTINA PANCOTTI'),(418,64,'COHAB'),(419,64,'COLATINA'),(420,64,'COLATINA VELHA'),(421,64,'COLIBRI'),(422,64,'COLUMBIA'),(423,64,'CORREGO DO OURO'),(424,64,'CORREGO SAO JOAO PEQUENO'),(425,64,'CORREGO SAO JULIAO'),(426,64,'CORREGO VAZANTE GRANDE'),(427,64,'ESPLANADA'),(428,64,'FAZENDA VITALI'),(429,64,'FIORAVANTE MARINO'),(430,64,'FRANCISCO SIMONASSI'),(431,64,'GORDIANO GUIMARAES'),(432,64,'HONORIO FRAGA'),(433,64,'HONÓRIO FRAGA'),(434,64,'IBC'),(435,64,'INDUSTRIAL ALVES MARQUES'),(436,64,'IPATINA'),(437,64,'ITAPINA'),(438,64,'JACARANDA'),(439,64,'JARDIM PLANALTO'),(440,64,'JOAO MANOEL MENEGUELLI'),(441,64,'JOAO MENEGHELLI'),(442,64,'JOSE DE ANCHIETA'),(443,64,'JOSE MENEGUELLI'),(444,64,'LACE'),(445,64,'LUIZ IGLESIAS'),(446,64,'MARIA DAS GRACAS'),(447,64,'MARIA DAS GRAÇAS'),(448,64,'MARIA ISMENIA'),(449,64,'MARILANDIA'),(450,64,'MARIO GIURIZATO'),(451,64,'MARISTA'),(452,64,'MARTINELLI'),(453,64,'MOACIR BROTAS'),(454,64,'MORADA DO SOL'),(455,64,'MORRO DO CAFE'),(456,64,'MOSCHEM'),(457,64,'NOSSA SENHORA APARECIDA'),(458,64,'NOSSA SENHORA DA PENHA'),(459,64,'NOVO HORIZONTE'),(460,64,'OLIVIO ZANOTELLI'),(461,64,'OPERARIOS'),(462,64,'PERPETUO SOCORRO'),(463,64,'PONTE DO PANCAS'),(464,64,'POR DO SOL'),(465,64,'RAUL GIUBERTI'),(466,64,'RECANTO DOS PASSAROS'),(467,64,'RESIDENCIAL NOBRE'),(468,64,'RESIDENCIAL RIVIEIRA'),(469,64,'RETA GRANDE'),(470,64,'RIVIERA'),(471,64,'RIVIERA II'),(472,64,'SANTA CECILIA'),(473,64,'SANTA HELENA'),(474,64,'SANTA JULIA'),(475,64,'SANTA LUZIA'),(476,64,'SANTA MARGARIDA'),(477,64,'SANTA MONICA'),(478,64,'SANTA RITA'),(479,64,'SANTA TERESINHA'),(480,64,'SANTA TEREZINHA'),(481,64,'SANTO ANTONIO'),(482,64,'SANTO ANTONIO DO CANAA'),(483,64,'SANTO ANTONIO DO MUTUM'),(484,64,'SANTOS DUMONT'),(485,64,'SAO BRAS'),(486,64,'SAO GABRIEL DE BAUNILHA'),(487,64,'SAO JOAO GRANDE'),(488,64,'SAO JOAO PEQUENO'),(489,64,'SAO JUDAS TADEU'),(490,64,'SAO MARCOS'),(491,64,'SAO MIGUEL'),(492,64,'SAO PEDRO'),(493,64,'SAO SALVADOR'),(494,64,'SAO SILVANO'),(495,64,'SAO VICENTE'),(496,64,'SIMONASSI'),(497,64,'TUCANOS'),(498,64,'VICENTE SUELLA'),(499,64,'VICENTE SUELLA II'),(500,64,'VILA AMELIA'),(501,64,'VILA JUQUITA'),(502,64,'VILA LENIRA'),(503,64,'VILA LIMEIRA'),(504,64,'VILA NOEMIA'),(505,64,'VILA NOVA'),(506,64,'VILA REAL'),(507,64,'VILAGE JARDIM'),(508,64,'VILLA VERDE'),(509,64,'VISTA DA SERRA'),(510,64,'VISTA LINDA'),(511,64,'ZONA RURAL'),(512,65,'SANTANA'),(513,65,'SAO JORGE'),(514,66,'ALTO RIBEIRAO DO MEIO'),(515,66,'ALVOREDO II'),(516,66,'ARTHUR SOARES'),(517,66,'BARRO BRANCO'),(518,66,'BOA ESPERANCA'),(519,66,'BRANCO'),(520,66,'CAMARGO'),(521,66,'CECILIA LARRIEU'),(522,66,'CENTRO'),(523,66,'COHAB'),(524,66,'COQUEIRAL'),(525,66,'ESTREITO'),(526,66,'INDAIA'),(527,66,'ITAMAR'),(528,66,'LARRIEU'),(529,66,'LOTEAMENTO CAMPO VERDE'),(530,66,'MATA FRIA'),(531,66,'NICOLAU DE VARGAS'),(532,66,'NICOLAU DE VARGAS E SILVA'),(533,66,'PARAISO'),(534,66,'PEDRA LIMPA'),(535,66,'PEDRO RIGO'),(536,66,'PINGA FOGO'),(537,66,'PRAIA DE COQUEIRAL'),(538,66,'RIBEIRAO DO MEIO'),(539,66,'SANTA CRUZ'),(540,66,'TAQUARUSSU'),(541,66,'VICOSA'),(542,66,'ZONA RURAL'),(543,66,'ZORZAL'),(544,69,'ALTO GUANDU'),(545,69,'ALTO JUCU'),(546,69,'ARACE'),(547,69,'AREA RURAL'),(548,69,'BARCELOS'),(549,69,'BENEDITA MONTEIRO'),(550,69,'BIRIRICAS'),(551,69,'BIRIRICAS DE CIMA'),(552,69,'CAMPESTRE'),(553,69,'CAMPINHO'),(554,69,'CENTRO'),(555,69,'CONJUNTO RESIDENCIAL'),(556,69,'COSTA PEREIRA'),(557,69,'DINA BORGES'),(558,69,'DISTRISTO DE ARACÊ'),(559,69,'FAZENDA DO ESTADO'),(560,69,'GALO'),(561,69,'INTERIOR'),(562,69,'JARDIM CAMPESTRE'),(563,69,'LOTEAMENTO CAMPINHO'),(564,69,'LOTEAMENTO PEDRA AZUL'),(565,69,'LOTEAMENTO VIVENDAS'),(566,69,'MANAIN'),(567,69,'MELGA€INHO'),(568,69,'MELGACO'),(569,69,'NOSSA SENHORA DO CARMO'),(570,69,'PARAJU'),(571,69,'PARQUE DOS NOBRES'),(572,69,'PEDRA AZUL'),(573,69,'PEROBAS'),(574,69,'PONTO ALTO'),(575,69,'PONTO ALTO II'),(576,69,'RIO BARCELOS'),(577,69,'RIO PONTE'),(578,69,'SANTA ISABEL'),(579,69,'SANTO ANTONIO'),(580,69,'SAO BENTO'),(581,69,'SAO BENTO DE URANIO'),(582,69,'SAO BENTO DO ALTO JUCU'),(583,69,'SAO MIGUEL'),(584,69,'SAO PAULO DO ARACE'),(585,69,'SEDE'),(586,69,'SETE'),(587,69,'SITIO MARIANELLI'),(588,69,'SITIO RIGAMONTE'),(589,69,'SITIO TAQUARAS'),(590,69,'SITIO VERDE'),(591,69,'SITIO VILA VERDE'),(592,69,'SOIDO'),(593,69,'SOIDO DE BAIXO'),(594,69,'SOIDO DE CIMA'),(595,69,'TIJUCO PRETO'),(596,69,'VALE DA ESTACAO'),(597,69,'VENDA NOVA DO IMIGRANTE'),(598,69,'VILA DA PAZ'),(599,69,'VILA MANAIN'),(600,69,'VILA VERDE'),(601,69,'VIVENDAS'),(602,69,'VIVENDAS DE PEDRA AZUL'),(603,69,'VIVENDAS DO IMPERADOR'),(604,69,'ZONA RURAL'),(605,71,'SANTA MONICA'),(606,71,'TRÒS BARRAS'),(607,75,'ALTO PIABAS'),(608,75,'AREA RURAL'),(609,75,'AZEIAS'),(610,75,'AZRIM CORREIA'),(611,75,'BEIRA LINHA'),(612,75,'BEIRA RIO'),(613,75,'CACHOEIRA'),(614,75,'CAMPESTRE'),(615,75,'CAMPESTRE I'),(616,75,'CAMPESTRE II'),(617,75,'CARNEIRO'),(618,75,'CENTRO'),(619,75,'CISQUINI'),(620,75,'COCAL'),(621,75,'DIRECAO'),(622,75,'DUAS BOCAS'),(623,75,'ENCANTADO'),(624,75,'GOVERNADOR LINDEMBERG'),(625,75,'INTERIOR'),(626,75,'INVASAO'),(627,75,'ITAPIRA'),(628,75,'MORADA DO SOL'),(629,75,'MUNITURA'),(630,75,'NOVA BRASILIA'),(631,75,'ORLY RAMOS'),(632,75,'OSEIAS'),(633,75,'OZEAS'),(634,75,'OZEIAS'),(635,75,'OZEIAS NETTO'),(636,75,'PASTO FUNDAO'),(637,75,'PIRANEMA'),(638,75,'PRAIA GRANDE'),(639,75,'SANTA ANTONIA'),(640,75,'SANTA MARIA'),(641,75,'SANTA MARTA'),(642,75,'SANTA MONICA'),(643,75,'SANTO ANTONIO'),(644,75,'SANTO ANTONIO I'),(645,75,'SANTO ANTONIO II'),(646,75,'SAO ANTONIO'),(647,75,'SAO GERALDO'),(648,75,'SÃO JOSE'),(649,75,'SAO JOSE'),(650,75,'SILVIO SISCHINI'),(651,75,'SISQUINI'),(652,75,'TIMBUI'),(653,75,'TRES BARRAS'),(654,75,'VALAO GRANDE'),(655,75,'ZONA RURAL'),(656,76,'AEROPORTO'),(657,76,'ALBUINO AZEVEDO'),(658,76,'ANCHIETA'),(659,76,'CENTRO'),(660,76,'GOVERNADOR LINDENBERG'),(661,76,'MOACIR'),(662,76,'MORADA DO SOL'),(663,76,'NOVA BRASILIA'),(664,76,'NOVO BRASIL'),(665,76,'POVOADO DE MOACIR'),(666,76,'SOL POENTE'),(667,76,'VILA DE GUARANA'),(668,76,'ZONA RURAL'),(669,77,'CENTRO'),(670,78,'ALTO PIABAS'),(671,78,'BELA VISTA'),(672,78,'CENTRO'),(673,78,'INDEPENDENCIA'),(674,78,'IPIRANGA'),(675,78,'IPÒ'),(676,78,'ITAPEBU€U'),(677,78,'ITAPEBUSSU'),(678,78,'JABARAI'),(679,78,'JARDIM BOA VISTA'),(680,78,'JARDIM EUROPA'),(681,78,'JARDIM SANTA ROSA'),(682,78,'LAGOA FUNDA'),(683,78,'MUQUI€ABA'),(684,78,'MUQUIÇABA'),(685,78,'OLARIA'),(686,78,'PARQUE AREIA PRETA'),(687,78,'PARQUE DA AREIA PRETA'),(688,78,'PORTAL DE GUARAPARI'),(689,78,'PRAIA DE UNA'),(690,78,'PRAIA DO MORRO'),(691,78,'PRAIA DO SOL'),(692,78,'RECANTO DA SEREIA'),(693,78,'RECREIO ATLANTICO'),(694,78,'SANTA LUZIA'),(695,78,'SANTA MARGARIDA'),(696,78,'SANTA RITA'),(697,78,'SAO MIGUEL'),(698,78,'SETIBA'),(699,78,'TODOS SANTOS'),(700,78,'VILLAGE DO SOL'),(701,78,'ZONA RURAL'),(702,79,'ALTO JATIBOCAS'),(703,79,'NOVO HORIZONTE'),(704,79,'SAO JOSE'),(705,80,'ALTO LAJE'),(706,80,'ALTO SOBREIRO'),(707,80,'AMERICO FREDERICO COSER'),(708,80,'AREA RURAL'),(709,80,'ARICANGA'),(710,80,'BARRAGEM'),(711,80,'BELA VISTA'),(712,80,'BOA VISTA'),(713,80,'BR 101'),(714,80,'CABOCLO BERNARDO'),(715,80,'CAMPAGNARO'),(716,80,'CENTENARIO'),(717,80,'CENTRO'),(718,80,'COHAB'),(719,80,'ELIAS BRAGATTO'),(720,80,'ERECINA PAGIOLA'),(721,80,'ERICINA MACEDO'),(722,80,'FRANCISCO CAMPAGNARO'),(723,80,'GUATEMALA'),(724,80,'IBIRACU'),(725,80,'ITACU'),(726,80,'ITAPIRA MIRIM'),(727,80,'JARDIM JANDIRA'),(728,80,'MULTIRAO'),(729,80,'NOSSA SENHORA DA SAUDE'),(730,80,'PALMEIRAS'),(731,80,'PEDRA BRANCA'),(732,80,'PEDRO PALACIOS'),(733,80,'PENDANGA'),(734,80,'PIABAS'),(735,80,'POLO INDUSTRIAL'),(736,80,'PROFESSOR ERICINA'),(737,80,'PROFESSORA ERICINA'),(738,80,'RESIDENCIAL'),(739,80,'RESIDENCIAL CAMPAGNARO'),(740,80,'RESIDENCIAL FRANCISCO CAMPAGNARO'),(741,80,'RIO PEROBAS'),(742,80,'SAO BENEDITO'),(743,80,'SAO CRISTOVAO'),(744,80,'VALADA MAFFEI'),(745,80,'VALE VERDE'),(746,80,'ZONA RURAL'),(747,82,'AMERICO FREDERICO COSER'),(748,84,'ALTO JATIBOCAS'),(749,84,'ALTO LIMOEIRO'),(750,84,'ALTO SOBREIRO'),(751,84,'AMERICO FREDERICO COSER'),(752,84,'ASSENTAMENTO'),(753,84,'BAIXO ITACU'),(754,84,'BALMEIRA'),(755,84,'BARRA BOM DESTINO'),(756,84,'BARRA DO SOBREIRO'),(757,84,'BARRO PRETO'),(758,84,'BEIRA RIO'),(759,84,'BELA VISTA'),(760,84,'BOA VISTA'),(761,84,'CAFUNDO'),(762,84,'CANTINHO FELIZ'),(763,84,'CANTO FELIZ'),(764,84,'CENTRO'),(765,84,'CINCO POTOES'),(766,84,'COHAB'),(767,84,'CONJUNTO BOA ESPERANCA'),(768,84,'CORREGO DAS FLORES'),(769,84,'CORREGO GRANDE'),(770,84,'COSTA DO SOL'),(771,84,'DO LIMOEIRO'),(772,84,'FAZENDA PORTELA'),(773,84,'FLORENCIO BERGER'),(774,84,'FLORENCIO HERZOG'),(775,84,'FREDERICO AMERICO COSER'),(776,84,'HABITACIONAL NOVA ITAGUACU'),(777,84,'ITA€U'),(778,84,'ITAÇU'),(779,84,'ITAIMBE'),(780,84,'ITAIPAVA'),(781,84,'ITAMBE'),(782,84,'ITAQUI'),(783,84,'LAJINHA'),(784,84,'LARANJA DA TERRA'),(785,84,'LIRIO DO CAMPO'),(786,84,'LUIZ HOFFMANN'),(787,84,'MATA PAU'),(788,84,'MORRO DO ESPORTE'),(789,84,'NITEROI'),(790,84,'NOVA ITAGUACU'),(791,84,'OTTO LUIZ HOFFMANN'),(792,84,'PALMEIRAS'),(793,84,'PARAJU'),(794,84,'POTUVERA'),(795,84,'PRETO'),(796,84,'QUEIRA DEUS'),(797,84,'RUA NOVA'),(798,84,'SANTA FE'),(799,84,'SANTA ROSA CRISTAL'),(800,84,'SANTA TERESINHA'),(801,84,'SAO BATISTA'),(802,84,'SAO JOAO BATISTA'),(803,84,'SAO JOSE'),(804,84,'SÃO JOSE'),(805,84,'SETE VOLTAS'),(806,84,'SITIO ALTO SOBREIRO'),(807,84,'SITIO BOA VISTA'),(808,84,'SITIO RUBENS BINDA'),(809,84,'SOBREIRO'),(810,84,'ZONA RURAL'),(811,86,'ACIOLI'),(812,86,'ALTO BOM DESTINO'),(813,86,'ALTO LIMOEIRO'),(814,86,'AREA RURAL'),(815,86,'BAIXO SOSSEGO'),(816,86,'BAIXO SOSSEGO RIZZI'),(817,86,'BANANAL'),(818,86,'BARRA DO SOSSEGO'),(819,86,'BARRA ENCOBERTA'),(820,86,'BOM DESTINO'),(821,86,'CASA DO JOSE CALISTO'),(822,86,'CENTRO'),(823,86,'CIDADE ALTA'),(824,86,'COAN'),(825,86,'COHAB'),(826,86,'ENSEADA'),(827,86,'FAZENDA BERGER'),(828,86,'ITARANINHA'),(829,86,'JARDIM ATLANTICO'),(830,86,'JATIBOCAS'),(831,86,'LIMOEIRO'),(832,86,'LIMOEIRO CARAVAGIO'),(833,86,'LIMOEIRO SANTO ANTONIO'),(834,86,'LORIATO ZONA RURAL'),(835,86,'MENEGHEL'),(836,86,'NITEROI'),(837,86,'NOVA COHAB'),(838,86,'NOVO BRASIL'),(839,86,'PALMITO'),(840,86,'PEDRA ALEGRE'),(841,86,'PRACA OITO'),(842,86,'QUILOMBO'),(843,86,'RESIDENCIAL ITARANINHA'),(844,86,'RIZZI'),(845,86,'RODOVIA'),(846,86,'RUA ANGELA FIOROT'),(847,86,'SANTA HELENA'),(848,86,'SANTA JOANA'),(849,86,'SANTA RITA'),(850,86,'SANTA TERESINHA'),(851,86,'SANTA TEREZINHA'),(852,86,'SANTO ANTONIO'),(853,86,'SOSSEGO'),(854,86,'TONIATO'),(855,86,'TRIUNFO'),(856,86,'VILA DE ITAUNAS'),(857,86,'VILA NOVA DO CARAVAGIO'),(858,86,'ZONA RURAL'),(859,87,'ACIOLI'),(860,87,'NOSSA SENHORA DA PENHA'),(861,88,'BAIRRO DE FATIMA'),(862,88,'BAIRRO FLORESTA'),(863,88,'BAIXA GRANDE'),(864,88,'CABOCLO BERNARDO'),(865,88,'PALMITO'),(866,90,'ACIOLI'),(867,90,'AREA RURAL'),(868,90,'BARRA DO TRIUNFO'),(869,90,'BELA VISTA'),(870,90,'CARRARETTO'),(871,90,'CENTRO'),(872,90,'COHAB'),(873,90,'COHAB I'),(874,90,'CRISTAL'),(875,90,'CRUBIXA'),(876,90,'CRUZEIRO'),(877,90,'DA PENHA'),(878,90,'DE FATIMA'),(879,90,'FATIMA'),(880,90,'FLORESTA'),(881,90,'GADIOLI'),(882,90,'INDUSTRIAL'),(883,90,'JEQUITIBA'),(884,90,'JOATUBA'),(885,90,'MONTE LIBANO'),(886,90,'MONTE SECO'),(887,90,'MORRO DO CRUZEIRO'),(888,90,'NITEROI'),(889,90,'NOSSA SENHORA DA PENHA'),(890,90,'PENHA'),(891,90,'PICADAO'),(892,90,'PIRAQUEACU'),(893,90,'RECANTO DOS POETAS'),(894,90,'RIBEIRAO DE CIMA'),(895,90,'RIBEIRAO DO MEIO'),(896,90,'ROBIXA'),(897,90,'SANTA LUCIA'),(898,90,'SANTA LUZIA'),(899,90,'SANTA LUZIA CADIOLI'),(900,90,'SANTO AFONSO'),(901,90,'SANTO ANTONIO'),(902,90,'SAO BRAS'),(903,90,'SAO CARLOS'),(904,90,'SAO CARLOS I'),(905,90,'SAO CARLOS II'),(906,90,'SOBREIRO'),(907,90,'TREVO'),(908,90,'TRIANGULO'),(909,90,'VILA NOVA'),(910,90,'VILA NOVA DE BAIXO'),(911,90,'VILA NOVA DE CIMA'),(912,90,'ZONA RURAL'),(913,91,'-'),(914,91,'BARRA DO TAQUARAL'),(915,91,'BELA VISTA'),(916,91,'CENTRO'),(917,91,'CORREGO DA MANTEIGA'),(918,91,'CORREGO DE SANTANA'),(919,91,'CRICIUMA'),(920,91,'DEZ DE MAIO'),(921,91,'DISTRITO SEDE'),(922,91,'JETIBA PEQUENO'),(923,91,'JOATUBA'),(924,91,'MATO DO CAMPO'),(925,91,'NITEROI'),(926,91,'PANDELO'),(927,91,'PICADAO'),(928,91,'RECANTO DOS POETAS'),(929,91,'RIBEIRAO'),(930,91,'SANTA LUZIA'),(931,91,'SAO LUIZ DE MIRANDA'),(932,91,'SOBREIRO'),(933,91,'VILA DE LARANJA DA TERRA'),(934,91,'VOLTA GRANDE / ZONA RURAL'),(935,91,'ZONA RURAL'),(936,92,'ALAGOINHA'),(937,92,'ALTO MARECHAL'),(938,92,'ARAÇÁ'),(939,92,'ARAGUAIA'),(940,92,'AV DESENGANO'),(941,92,'BAGUEIRA'),(942,92,'BEBEDOURO'),(943,92,'BNH'),(944,92,'CARACOL'),(945,92,'CENTRO'),(946,92,'COLINA'),(947,92,'COMUNIDADE SAO JUDAS TADEU'),(948,92,'DESENGANO'),(949,92,'FRANCO PLAZA'),(950,92,'HUMAITA'),(951,92,'INTERLAGOS'),(952,92,'JAPIRA'),(953,92,'JARDIM LAGUNA'),(954,92,'LINHARES 5'),(955,92,'MOVELAR'),(956,92,'NOSSA SENHORA DA CONCEIÇÃO'),(957,92,'NOVA BETANIA'),(958,92,'NOVO HORIZONTE'),(959,92,'PATRIMONIO DE HUMAITA'),(960,92,'PONTAL DO IPIRANGA'),(961,92,'REGENCIA'),(962,92,'RIO DAS PALMAS'),(963,92,'RIO QUARTEL'),(964,92,'RIO QUARTEL DE CIMA'),(965,92,'SAO JOSE'),(966,92,'SAO JUDAS TADEU'),(967,92,'SAO RAFAEL'),(968,92,'SHELL'),(969,92,'SOIDO BAIXO'),(970,92,'SOORETAMA'),(971,92,'TRES BARRAS'),(972,92,'VALE DAS PALMAS'),(973,92,'VILA DAS ORQUIDEAS'),(974,92,'ZONA RURAL'),(975,93,'ALTO SANTA MARIA'),(976,93,'CENTRO'),(977,94,'BARRA DO ITAPEMIRIM'),(978,94,'WANDA MARIA SILVA'),(979,95,'ALTO BANANAL'),(980,95,'ALTO MARECHAL'),(981,95,'AREA RURAL'),(982,95,'BATATAL'),(983,95,'CENTRO'),(984,95,'VILA DAS ORQUIDEAS'),(985,95,'ZONA RURAL'),(986,96,'AEROPORTO'),(987,96,'ASSUNCAO'),(988,96,'CASAS POPULARES'),(989,96,'CENTRO'),(990,96,'CONJUNTO HABITACIONAL'),(991,96,'CONJUNTO HABITACIONAL HONORIO PASSAMANI'),(992,96,'CONJUNTO HABITACIONAL POR DO SOL'),(993,96,'CORREGO ALEGRIA'),(994,96,'CORREGO DO CALADO'),(995,96,'CORREGO LIMOEIRO'),(996,96,'CORREGO TAQUARA'),(997,96,'ELIAS BRAGATO'),(998,96,'GUARANTEED'),(999,96,'HONORIO PASSAMANI'),(1000,96,'INDUSTRIAL'),(1001,96,'LOTE DO ROVETA'),(1002,96,'MARIA DAS GRA€AS'),(1003,96,'MARILANDIA'),(1004,96,'MORRAO'),(1005,96,'PATRAO MOR'),(1006,96,'PATRIMONIO DO RADIO'),(1007,96,'POPULAR'),(1008,96,'POR DO SOL'),(1009,96,'SANTA CRUZ'),(1010,96,'SANTA ROSA'),(1011,96,'SAO MARCOS'),(1012,96,'SAPUCAIA'),(1013,96,'VILA PALMEIRA'),(1014,96,'VILA PALMIRA'),(1015,96,'VILA REAL'),(1016,96,'VISTA BELA'),(1017,96,'ZONA RURAL'),(1018,100,'CENTRO'),(1019,100,'FRANCHIANI'),(1020,100,'LAJINHA'),(1021,100,'OPERARIO'),(1022,100,'VILA NOVA'),(1023,102,'ARACE'),(1024,102,'BEIRA RIO'),(1025,102,'CENTRO'),(1026,102,'VIVENDAS'),(1027,102,'ZONA RURAL'),(1028,103,'ACAIACA'),(1029,103,'ACAICA'),(1030,103,'CENTRO'),(1031,103,'JARDIM MAYLY'),(1032,103,'LAGINHA'),(1033,103,'OTALIO FIGUEIRA DE BARROS'),(1034,103,'VILA VERDE'),(1035,103,'ZONA RURAL'),(1036,105,'CAMPO GRANDE'),(1037,106,'CENTRO'),(1038,106,'DUQUE CAXIAS'),(1039,106,'ESCALADA'),(1040,106,'JARDIM BELO HORIZONTE'),(1041,106,'LAGO AZUL'),(1042,106,'PAVUNA'),(1043,106,'PENHA'),(1044,106,'RIO COMPRIDO'),(1045,106,'SANTA CRUZ'),(1046,106,'ZONA RURAL'),(1047,113,'CENTENARIO'),(1048,113,'SAO JORGE TIRADENTES'),(1049,113,'SÃO SEBASTIÃO'),(1050,115,'AREA RURAL'),(1051,115,'BARRA DE MANGARAI'),(1052,115,'BRAGANCA'),(1053,115,'CARAMURU'),(1054,115,'CARAMURU DE BAIXO'),(1055,115,'CENTRO'),(1056,115,'CHAVES'),(1057,115,'CRUBIXA'),(1058,115,'ENCRUSO'),(1059,115,'HOLANDINHA'),(1060,115,'LUXEMBURGO'),(1061,115,'MEIA LEGUA'),(1062,115,'MOXAFONGO'),(1063,115,'OLARIA'),(1064,115,'PEDRA BRANCA'),(1065,115,'PONTE DO BALANCO'),(1066,115,'PONTE DO BALANÇO'),(1067,115,'PONTE DO FUNIL'),(1068,115,'POSTO FISCAL'),(1069,115,'RECREIO'),(1070,115,'RIBEIRAO DOS PARDOS'),(1071,115,'RIBEIRAOZINHO'),(1072,115,'RIO BONITO'),(1073,115,'RIO DA PRATA'),(1074,115,'RIO DAS FARINHAS'),(1075,115,'RIO DAS PEDRAS'),(1076,115,'RIO DAS PEDRAS / ZONA RURAL'),(1077,115,'RIO DO NORTE'),(1078,115,'SANTA LEOPOLDINA'),(1079,115,'SANTA MARIA'),(1080,115,'SAO LUIZ'),(1081,115,'SITIO BORCHARDT'),(1082,115,'SUICA'),(1083,115,'TRES PONTES'),(1084,115,'VILA JETIBA'),(1085,115,'VILA NOVA'),(1086,115,'ZONA RURAL'),(1087,116,'25 DE JULHO'),(1088,116,'AGOSTINI'),(1089,116,'ALTO CALDEIRAO'),(1090,116,'ALTO DA PENHA'),(1091,116,'ALTO GOIPABOACU'),(1092,116,'ALTO RECREIO'),(1093,116,'ALTO RIO LAMEGO'),(1094,116,'ALTO RIO POSSMOSER'),(1095,116,'ALTO SANTA MARIA'),(1096,116,'ALTO SAO LUIZ'),(1097,116,'ALTO SAO SEBASTIAO'),(1098,116,'APARECIDINHA'),(1099,116,'AREA RURAL'),(1100,116,'AUTO RIO POSSMOSER'),(1101,116,'BAIXO SAO SEBASTIAO'),(1102,116,'BARRA DO RIO POSSMOSER'),(1103,116,'BARRACAO'),(1104,116,'BARRO BRANCO'),(1105,116,'BEIRA RIO'),(1106,116,'BELEM'),(1107,116,'BRAGANCA'),(1108,116,'CARAMURU'),(1109,116,'CENTRO'),(1110,116,'CORREGO BEIRA RIO'),(1111,116,'CORREGO DO OURO'),(1112,116,'CORREGO JAPÃO'),(1113,116,'ESTRADA RIO POSMOSSER'),(1114,116,'FAZENDA GOLCALVES'),(1115,116,'GARRAFAO'),(1116,116,'GLORIA'),(1117,116,'HORTO'),(1118,116,'ILHA BERGER'),(1119,116,'LUIS POTRATZ'),(1120,116,'MANGUEIRA'),(1121,116,'MARISTELA'),(1122,116,'RECREIO'),(1123,116,'REINALDO BERGER'),(1124,116,'RIO BONITO'),(1125,116,'RIO CLARO'),(1126,116,'RIO CRISTAL'),(1127,116,'RIO DAS PEDRAS'),(1128,116,'RIO LAMEGO'),(1129,116,'RIO LAUREGO'),(1130,116,'RIO POSSMOSER'),(1131,116,'RIO VIADO'),(1132,116,'RUA NOVA'),(1133,116,'SANTA CRUZ'),(1134,116,'SANTA LUZIA'),(1135,116,'SANTA LUZIA II'),(1136,116,'SAO BELEM'),(1137,116,'SAO JOAO DO GARRAFAO'),(1138,116,'SAO JOAO GARRAFAO'),(1139,116,'SAO JOSE DO RIO CLARO'),(1140,116,'SAO LUIS'),(1141,116,'SAO LUIZ'),(1142,116,'SAO PEDRO'),(1143,116,'SAO RAFAEL'),(1144,116,'SAO SEBASTIAO'),(1145,116,'SAO SEBASTIAO DE BELEM'),(1146,116,'SAO SEBASTIAO DO BELEM'),(1147,116,'SAO SEBASTIAO DO MEIO'),(1148,116,'SÇO SEBASTIÇO DO MEIO'),(1149,116,'SITIO BEIRA RIO'),(1150,116,'SITIO VALE VERDE'),(1151,116,'STO ANTONIO CANAA'),(1152,116,'VILA BETHANIA'),(1153,116,'VILA CARAIPE'),(1154,116,'VILA DE CIMA'),(1155,116,'VILA DOS ITALIANOS'),(1156,116,'VILA GARRAFAO'),(1157,116,'VILA ITALIANOS'),(1158,116,'VILA JETIBA'),(1159,116,'VILA NASS'),(1160,116,'VILA NOVA'),(1161,116,'VILA PAVAO'),(1162,116,'VILA RAMMER'),(1163,116,'VILA VERDE'),(1164,116,'VIRADA'),(1165,116,'ZONA RURAL'),(1166,117,'25 DE JULHO'),(1167,117,'ALTO CALDEIRAO'),(1168,117,'ALTO LOMBARDIA'),(1169,117,'ALTO RIO PERDIDO'),(1170,117,'ALTO SANTO ANTONIO'),(1171,117,'ALTO SAO LOURENCO'),(1172,117,'ALTO VARZEA ALEGRE'),(1173,117,'ALVORADA'),(1174,117,'APARECIDINHA'),(1175,117,'AREA RURAL'),(1176,117,'BARRACAO'),(1177,117,'BERNARDINO MONTEIRO'),(1178,117,'BICUIBA'),(1179,117,'CALDEIRAO'),(1180,117,'CALDEIRAO DE SAO JOSE'),(1181,117,'CANAA'),(1182,117,'CANTINA DO MATIELO'),(1183,117,'CAPIVARA'),(1184,117,'CASTELINHO'),(1185,117,'CENTENARIO'),(1186,117,'CENTRO'),(1187,117,'COELHO'),(1188,117,'COLIBRI'),(1189,117,'CORREGO SANTO ANSELMO'),(1190,117,'CORREGO SAO JOAO DE PETROPOLIS'),(1191,117,'CORREGO SECO'),(1192,117,'DA PENHA'),(1193,117,'DISTRITO'),(1194,117,'DO ECO'),(1195,117,'DOIS PINHEIROS'),(1196,117,'ECO'),(1197,117,'ENCANTADO'),(1198,117,'ITANHANGA'),(1199,117,'JARDIM DA MONTANHA'),(1200,117,'JOAO JULIO MIGLIORELLI'),(1201,117,'LADEIRA ALMEIDA REIS'),(1202,117,'LOMBARDIA'),(1203,117,'MORRO ALTO'),(1204,117,'MORRO DO ATALAIA'),(1205,117,'MORRO DO RAMIRO'),(1206,117,'NITEROI'),(1207,117,'NOVA LOMBARDIA'),(1208,117,'NOVA VALSUGANA'),(1209,117,'PARQUE SANTA FELICIA'),(1210,117,'PEDRA ALEGRE'),(1211,117,'PELACANE'),(1212,117,'PENHA'),(1213,117,'POSTO DOIS PINHEIROS'),(1214,117,'RECANTO DO VALE'),(1215,117,'RECREIO'),(1216,117,'RESIDENCIAL SAO LOURENCO'),(1217,117,'RIO BONITO'),(1218,117,'RIO PERDIDO'),(1219,117,'RIO SALTINHO'),(1220,117,'RIO SALTIR'),(1221,117,'SANTA BARBARA'),(1222,117,'SANTA LUCIA'),(1223,117,'SANTA MARIA VARZEA'),(1224,117,'SANTA TERESA'),(1225,117,'SANTA TERESINHA'),(1226,117,'SANTO ANTONIO'),(1227,117,'SANTO ANTONIO DO CANAÃ'),(1228,117,'SANTO ANTONIO DO CANAA'),(1229,117,'SANTO HILARIO'),(1230,117,'SAO DOMINGOS'),(1231,117,'SAO JOAO DE PETROPOLIS'),(1232,117,'SAO JOAO DE VICOSA'),(1233,117,'SAO LOUREN€O'),(1234,117,'SÃO LOURENÇO'),(1235,117,'SAO LOURENCO'),(1236,117,'SÃO PEDRO'),(1237,117,'SAO PEDRO'),(1238,117,'SAO ROQUE DO CANAA'),(1239,117,'SERRA DO GELO'),(1240,117,'SERRA DOS PREGOS'),(1241,117,'SERTAO MARUIM'),(1242,117,'SITIO BELA VISTA'),(1243,117,'SITIO BOSA'),(1244,117,'SITIO ZINGER'),(1245,117,'STO ANTONIO DO CANAA'),(1246,117,'TABOCAS'),(1247,117,'VALAO DE SAO PEDRO'),(1248,117,'VALE DO CANAÃ'),(1249,117,'VALE DO CANAA'),(1250,117,'VALSUGANA'),(1251,117,'VALSUGANA VELHA'),(1252,117,'VARZEA ALEGRE'),(1253,117,'VILA BETANIA'),(1254,117,'VILA FARTURA'),(1255,117,'VILA MILITAR'),(1256,117,'VILA NOVA'),(1257,117,'VILA VARZEA ALEGRE'),(1258,117,'ZONA RURAL'),(1259,118,'CACIQUE'),(1260,118,'CENTRO'),(1261,118,'COABE'),(1262,118,'LAGOS DOS CISNES'),(1263,118,'SERNAMBY'),(1264,119,'BAMBE'),(1265,119,'BOA VISTA'),(1266,119,'CENTRO'),(1267,119,'GURIRI'),(1268,119,'OCULARE'),(1269,119,'POPULARE'),(1270,119,'SANTA TERESINHA'),(1271,119,'VILA COMBONI'),(1272,119,'ZONA RURAL'),(1273,121,'AROEIRA'),(1274,121,'BOA VISTA'),(1275,121,'CENTRO'),(1276,121,'CHACARA ITAIM'),(1277,121,'CIDADE MONCOES'),(1278,121,'COTIA'),(1279,121,'FATIMA'),(1280,121,'GURIRI'),(1281,121,'GURIRI SUL'),(1282,121,'ITAIMBIBI'),(1283,121,'ITAQUERA'),(1284,121,'JABAQUARA'),(1285,121,'JARDIM CECI'),(1286,121,'LAGO DOS CISNES'),(1287,121,'NESTOR GOMES'),(1288,122,'5 CAZINHAS'),(1289,122,'AGROVILA'),(1290,122,'ALTEROSAS'),(1291,122,'ALTO SANTA JULIA'),(1292,122,'ANDRE CARLONI'),(1293,122,'BACAXA'),(1294,122,'BAIXO SANTA JULIA'),(1295,122,'BARRA DE MANGARAI'),(1296,122,'BRANCO'),(1297,122,'CARAMURU'),(1298,122,'CENTRO'),(1299,122,'CINCO CASINHAS'),(1300,122,'CORREGO ALTO MISTERIOSO'),(1301,122,'CORREGO DA SAUDE'),(1302,122,'CORREGO MISTERIOSO'),(1303,122,'CORREGO SAO BENTO'),(1304,122,'CORREGO SAO ROQUE'),(1305,122,'DAS LARANJEIRAS'),(1306,122,'DE FATIMA'),(1307,122,'ESTRADA SAO BENTO'),(1308,122,'FRANCISCO TOREZANI'),(1309,122,'LADEIRA NOSSA SENHORA DAS GRACAS'),(1310,122,'NOSSA SENHORA DAS GRACAS'),(1311,122,'PALMARES'),(1312,122,'PATRIMONIO'),(1313,122,'PICADAO'),(1314,122,'RECREIO'),(1315,122,'SANTA JULIA'),(1316,122,'SANTA LUZIA'),(1317,122,'SANTO ANTONIO DO CANAA'),(1318,122,'SAO BENTO'),(1319,122,'SAO DALMACIO'),(1320,122,'SAO JACINTO'),(1321,122,'SAO ROQUE DO CANAA'),(1322,122,'SAO ROQUINHO'),(1323,122,'SITIO RECREIO'),(1324,122,'VILA ESPANHOLA'),(1325,122,'VILA PICADAO DO MUTUM'),(1326,122,'VILA TOREZANI'),(1327,122,'VILA VERDE'),(1328,122,'ZONA RURAL'),(1329,123,'ACIOLI'),(1330,123,'ALTEROSAS'),(1331,123,'ANDRE CARLONE'),(1332,123,'ANDRE CARLONI'),(1334,123,'BALNEARIO DE CARAPEBUS'),(1335,123,'BARCELONA'),(1336,123,'BARRO BRANCO'),(1337,123,'BELVEDERE'),(1338,123,'BICANGA'),(1339,123,'BOA VISTA'),(1340,123,'BOA VISTA DE NOVA ALMEIDA'),(1341,123,'BOA VISTA II'),(1342,123,'CACAROLA'),(1343,123,'CAMPINHO DA SERRA I'),(1344,123,'CAMPINHO DA SERRA II'),(1345,123,'CAMPINHO I'),(1346,123,'CANTINHO DO CEU'),(1347,123,'CANTRAL DE CARAPINA'),(1348,123,'CAPINHO DA SERRA II'),(1349,123,'CARAPINA'),(1350,123,'CARAPINA GRANDE'),(1351,123,'CARAPINA I'),(1352,123,'CARATOIRA'),(1353,123,'CASCATA'),(1354,123,'CASCATA I'),(1355,123,'CASCATA II'),(1356,123,'CASTELANDIA'),(1357,123,'CATARATA'),(1358,123,'CENTRAL CARAPINA'),(1359,123,'CENTRAL DE CARAPINA'),(1360,123,'CENTRAL DE CARVALHO'),(1361,123,'CENTRO'),(1362,123,'CENTRO DA SERRA'),(1363,123,'CENTRO RESIDENCIAL DA SERRA'),(1364,123,'CHACARA MARINGÁ'),(1365,123,'CHACARA PARREIRAL'),(1366,123,'CHACARA SERRA DOURADA I'),(1367,123,'CHAPADA GRANDE'),(1368,123,'CIDADE CONTINENTAL'),(1369,123,'CIDADE CONTINENTAL SETOR EUROPEU'),(1370,123,'CIDADE POMAR'),(1371,123,'CIVIT II'),(1372,123,'COLINA DA SERRA'),(1373,123,'COLINA DE LARANJEIRAS'),(1374,123,'COMENDADOR RAFAEL'),(1375,123,'CONJUNTO CARAPINA'),(1376,123,'CONJUNTO CARAPINA I'),(1377,123,'COSTA DOURADA'),(1378,123,'DAS LARANJEIRAS'),(1379,123,'DE FATIMA'),(1380,123,'DIAMANTINA'),(1381,123,'DIRECAO'),(1382,123,'DIVINOPOLIS'),(1383,123,'EL DORADO'),(1384,123,'ELDORADO'),(1385,123,'ENSEADA DE JACARAIPE'),(1386,123,'ESTANCIA MONAZITICA'),(1387,123,'EURICO SALLES'),(1388,123,'FEU ROSA'),(1389,123,'GAIVOTAS'),(1390,123,'GUARACIABA'),(1391,123,'HELIO FERRAZ'),(1392,123,'HELIO FERRAZ II'),(1393,123,'JABOUR'),(1394,123,'JACARAIPE'),(1395,123,'JARDIM ATLANTICO'),(1396,123,'JARDIM BELA VISTA'),(1397,123,'JARDIM CARAPINA'),(1398,123,'JARDIM DA SERRA'),(1399,123,'JARDIM DAS LARANJEIRAS'),(1400,123,'JARDIM GUANABARA'),(1401,123,'JARDIM LARANJEIRAS'),(1402,123,'JARDIM LIMOEIRO'),(1403,123,'JARDIM TROPICAL'),(1404,123,'JOSE DE ANCHIETA'),(1405,123,'JOSE DE ANCHIETA II'),(1406,123,'JOSE DE ANCHIETA III'),(1407,123,'LAGOA DE CARAPEBUS'),(1408,123,'LAGOA DE JACARAIPE'),(1409,123,'LARANJEIRAS'),(1410,123,'LARANJEIRAS II'),(1411,123,'LARANJEIRAS VELHA'),(1412,123,'MANOEL PLAZA'),(1413,123,'MARAJA'),(1414,123,'MARIA NOBRE'),(1415,123,'MARIA ORTIZ'),(1416,123,'MARINGA'),(1417,123,'MATA DA SERRA'),(1418,123,'MESTRE ALVARO'),(1419,123,'MORADA DE LARANJEIRAS'),(1420,123,'NOSSA SENHORA DA CONCEICAO'),(1421,123,'NOVA ALMEIDA'),(1422,123,'NOVA CARAPINA'),(1423,123,'NOVA CARAPINA I'),(1424,123,'NOVA CARAPINA II'),(1425,123,'NOVA ZELANDIA'),(1426,123,'NOVO HORIZONTE'),(1427,123,'NOVO PORTO CANOA'),(1428,123,'OURIMAR'),(1429,123,'PALMEIRAS'),(1430,123,'PARQUE DAS GAIVOTAS'),(1431,123,'PARQUE JACARAIPE'),(1432,123,'PARQUE RESIDENCIAL DE TUBARAO'),(1433,123,'PARQUE RESIDENCIAL LARANJEIRAS'),(1434,123,'PARQUE RESIDENCIAL MESTRE ALVARO'),(1435,123,'PARQUE RESIDENCIAL NOVA ALMEIDA'),(1436,123,'PARQUE RESIDENCIAL TUBARAO'),(1437,123,'PITANGA'),(1438,123,'PLANALTO DE CARAPINA'),(1439,123,'PLANALTO SERRANO'),(1440,123,'PLANALTO SERRANO BLOCO A'),(1441,123,'PLANALTO SERRANO BLOCO B'),(1442,123,'PLANALTO SERRANO BLOCO C'),(1443,123,'PLANICIE DA SERRA'),(1444,123,'POMAR'),(1445,123,'PORTAL DO JACARAIPE'),(1446,123,'PORTO CANOA'),(1447,123,'PRAIA DA BALEIA'),(1448,123,'PRAIA DE CARAPEBUS'),(1449,123,'PRAIAMAR'),(1450,123,'PUTIRI'),(1451,123,'REIS MAGOS'),(1452,123,'RESIDENCIAL CENTRO DA SERRA'),(1453,123,'RESIDENCIAL JACARAIPE'),(1454,123,'RESIDENCIAL SOLAR DE JACARAIPE'),(1455,123,'RESIDENCIAL VISTA DO MESTRE'),(1456,123,'RESIDENCIAL VIVER SERRA'),(1457,123,'RESISTENCIA'),(1458,123,'ROSARIO DE FATIMA'),(1459,123,'SANTA JULIA'),(1460,123,'SANTA LUZIA'),(1461,123,'SANTA MARIA'),(1462,123,'SANTA RITA DE CASSIA'),(1463,123,'SANTIAGO'),(1464,123,'SANTIAGO DA SERRA'),(1465,123,'SANTO ANTONIO'),(1466,123,'SAO DIOGO'),(1467,123,'SAO DIOGO I'),(1468,123,'SAO DIOGO II'),(1469,123,'SAO DOMINGOS'),(1470,123,'SAO FRANCISCO'),(1471,123,'SÃO GERALDO'),(1472,123,'SAO GERALDO'),(1473,123,'SÃO JOAO'),(1474,123,'SAO JOAO'),(1475,123,'SAO JUDAS TADEU'),(1476,123,'SAO LOURENCO'),(1477,123,'SAO LUIZ'),(1479,123,'SÃO MARCOS'),(1480,123,'SAO MARCOS I'),(1481,123,'SAO MARCOS II'),(1482,123,'SAO MARCOS III'),(1483,123,'SAO PATRICIO'),(1484,123,'SAO TORQUATO'),(1485,123,'SEDE'),(1486,123,'SERRA DOURADA I'),(1488,123,'SERRA DOURADA II'),(1489,123,'SERRA DOURADA III'),(1490,123,'SERRAMAR'),(1491,123,'SOLAR DE ANCHIETA'),(1492,123,'TAQUARA I'),(1493,123,'TAQUARA II'),(1494,123,'VALPARAISO'),(1495,123,'VALPARAISO I'),(1496,123,'VALPARAISO II'),(1497,123,'VILA MARIA NIOBE'),(1498,123,'VILA NOVA'),(1499,123,'VILA NOVA DE COLARES'),(1500,123,'VILA PAVAO'),(1501,123,'VISTA DA SERRA'),(1502,123,'VISTA DA SERRA I'),(1503,123,'VISTA DA SERRA II'),(1504,123,'VISTA DA SERRA O'),(1505,123,'VISTA DO MESTRE'),(1506,124,'CENTRO'),(1507,124,'COMENDADOR RAFAEL'),(1508,124,'SANTA MARIA DE JETIBA'),(1509,124,'VILA NOVA'),(1510,125,'ALTO CAXIXE'),(1511,125,'BANANEIRAS'),(1512,125,'BICUIBA'),(1513,125,'CASTELINHO'),(1514,125,'CENTRO'),(1515,125,'SAO PEDRO'),(1516,125,'VILA BETANIA'),(1517,125,'VILA MARIA'),(1518,126,'ALTO BANANEIRAS'),(1519,126,'ALTO CAXIXE'),(1520,126,'ALTO CAXIXE FRIO'),(1521,126,'ALTO JUCU'),(1522,126,'ALTO PROVIDENCIA'),(1523,126,'ALTO SAUDE'),(1524,126,'ALTO TAPERA'),(1525,126,'ALTO VICOSA'),(1526,126,'AREINHA'),(1527,126,'ARLINDO VILLASHI'),(1528,126,'BANANEIRAS'),(1529,126,'BELA AURORA'),(1530,126,'BICUIBA'),(1531,126,'BOM PASTOR'),(1532,126,'BRAMBILA'),(1533,126,'BREJETUBA'),(1534,126,'CABRAL'),(1535,126,'CAMARGO'),(1536,126,'CAMPO VERDE'),(1537,126,'CANAA'),(1538,126,'CASTELINHO'),(1539,126,'CAXIXE'),(1540,126,'CAXIXE FRIO'),(1541,126,'CENTRO'),(1542,126,'ELDORADO'),(1543,126,'ESPLANADA'),(1544,126,'FAZENDA PIDOBRAS'),(1545,126,'FORMATE'),(1546,126,'INDUSTRIAL'),(1547,126,'IPANEMA'),(1548,126,'ITAPERA'),(1549,126,'JARDIM DA GLORIA'),(1550,126,'LARIEL'),(1551,126,'LAVRINHAS'),(1552,126,'LOTEAMENTO J. MINETE'),(1553,126,'LOTEAMENTO PETERLE'),(1554,126,'MARCILIO DE NORONHA'),(1555,126,'MARMIM'),(1556,126,'MICUIBA'),(1557,126,'MINETE'),(1558,126,'PEDRO ALTOE'),(1559,126,'PINDOBAS'),(1560,126,'PROVIDENCIA'),(1561,126,'RESIDENCIAL DO BOSQUE'),(1562,126,'SANTA CRUZ'),(1563,126,'SANTO ANTONIO DA SERRA'),(1564,126,'SANTO ANTONIO DO ORIENTE'),(1565,126,'SANTO ANTONIO DO SENA'),(1566,126,'SAO BENTO DE URANIO'),(1567,126,'SAO BENTO DO ARACE'),(1568,126,'SAO JOAO'),(1569,126,'SAO JOAO DE VICOSA'),(1570,126,'SAO JOSE DE VICOSA'),(1571,126,'SAO JOSE DO ALTO VICOSA'),(1572,126,'SAO MIGUEL'),(1573,126,'SAO PAULINHO DO ARACE'),(1574,126,'SAO PAULO DO ARACE'),(1575,126,'SÃO PEDRO'),(1576,126,'SAO PEDRO'),(1577,126,'SAO RAFAEL'),(1578,126,'SAO ROQUE'),(1579,126,'SAUDE'),(1580,126,'SOARES'),(1581,126,'TAPERA'),(1582,126,'TAPÉRA'),(1583,126,'ULIANA'),(1584,126,'VARGEM GRANDE'),(1585,126,'VICENTE ZANDONADE'),(1586,126,'VICOZINHA'),(1587,126,'VILA BETÂNEA'),(1588,126,'VILA BETANIA'),(1589,126,'VILA DA MATA'),(1590,126,'VILA DE SAO MIGUEL'),(1591,126,'VILA DORDENONE'),(1592,126,'VILA MARIA'),(1593,126,'VILA MATA'),(1594,126,'VILA SANTA CRUZ'),(1595,126,'VILA SANTANA CRUZ'),(1596,126,'VILA SAO MIGUEL'),(1597,126,'VILA SAO PEDRO'),(1598,126,'VILA TADERLONE'),(1599,126,'ZONA RURAL'),(1600,127,'1§ DE MAIO'),(1601,127,'23 DE MAIO'),(1602,127,'ALECRIM'),(1603,127,'ALTO LAJE'),(1604,127,'ALVORADA'),(1605,127,'ANDRE CARLONE'),(1606,127,'BOM PASTOR'),(1607,127,'CAMPO VERDE'),(1608,127,'CANAA'),(1609,127,'CENTRO'),(1610,127,'ELDORADO'),(1611,127,'GLORIA'),(1612,127,'ILHA DOS AIRES'),(1613,127,'INDUSTRIAL'),(1614,127,'IPANEMA'),(1615,127,'ITAPOA'),(1616,127,'MARCILIO DE NORONHA'),(1617,127,'MARCÖLIO DE NORONHA'),(1618,127,'MORADA BETHANIA'),(1619,127,'MORADA DE BETHANIA'),(1620,127,'NOVA BETHANIA'),(1621,127,'NOVA VIANA'),(1622,127,'PARQUE FLAMENGO'),(1623,127,'PRAIA DA COSTA'),(1624,127,'SANTA TERESINHA'),(1625,127,'SANTO AGOSTINHO'),(1626,127,'SANTO ANTONIO'),(1627,127,'SOTECO'),(1628,127,'UNIVERSAL'),(1629,127,'VALE DO SOL'),(1630,127,'VIANA SEDE'),(1631,127,'VILA AREINHA'),(1632,127,'VILA BETHANIA'),(1633,127,'VILA NOVA'),(1634,127,'VILA VELHA'),(1635,127,'XURI'),(1636,127,'ZONA RURAL'),(1637,128,'CENTRO'),(1638,129,'ARIBIRI'),(1639,130,'ALAGOANO'),(1640,130,'ALECRIM'),(1641,130,'ALTO ITARARE'),(1642,130,'ALVORADA'),(1643,130,'ANDORINHAS'),(1644,130,'ARA€AS'),(1645,130,'ARACAS'),(1646,130,'ARGOLAS'),(1647,130,'ARIBIRI'),(1648,130,'ARIOVALDO FAVALESSA'),(1649,130,'ATAIDE'),(1650,130,'ATLANTICA VILE'),(1651,130,'BALNEARIO PONTA DA FRUTA'),(1652,130,'BARRA DO JUCU'),(1653,130,'BARRAMARES'),(1654,130,'BARRO VERMELHO'),(1655,130,'BELO AZUL ARGOLAS'),(1656,130,'BERTOLO MALACARNE'),(1657,130,'BOA VISTA'),(1658,130,'BOA VISTA I'),(1659,130,'BOA VISTA II'),(1660,130,'BRISAMAR'),(1661,130,'BRUNELAS'),(1662,130,'CENTRO'),(1663,130,'CENTRO COMERCIAL DA GLORIA'),(1664,130,'CENTRO PRAINHA'),(1665,130,'CIDADE DA BARRA'),(1666,130,'COBILANDIA'),(1667,130,'COCAL'),(1668,130,'COQUEIRAL DE ITAPARICA'),(1669,130,'CRISTOVAO COLOMBO'),(1670,130,'DA PENHA'),(1671,130,'DARLY SANTOS'),(1672,130,'DE FATIMA'),(1673,130,'DIVINO ESPIRITO SANTO'),(1674,130,'DOM JOAO BATISTA'),(1675,130,'FERREIRA'),(1676,130,'GAROTO'),(1677,130,'GLÓRIA'),(1678,130,'GLORIA'),(1679,130,'GUARANHUNS'),(1680,130,'IBES'),(1681,130,'ILHA DA CONCEICAO'),(1682,130,'ILHA DAS FLORES'),(1683,130,'ILHA DOS AIRES'),(1684,130,'ILHA DOS BENTOS'),(1685,130,'ILHA DOS REIS'),(1686,130,'INDUSTRIAL'),(1687,130,'INTERLAGOS'),(1688,130,'INTERLAGOS I'),(1689,130,'IPANEMA'),(1690,130,'IPESSA'),(1691,130,'ITAPARICA'),(1692,130,'ITAPOA'),(1693,130,'ITAPOÃ'),(1694,130,'ITAPUÃ'),(1695,130,'JABAETE'),(1696,130,'JABURUNA'),(1697,130,'JARDIM ASTECA'),(1698,130,'JARDIM COLORADO'),(1699,130,'JARDIM DO VALE'),(1700,130,'JARDIM GUADALAJARA'),(1701,130,'JARDIM GUARANHUNS'),(1702,130,'JARDIM MARILANDIA'),(1703,130,'JARDIM SÃO PAULO'),(1704,130,'JARDIM SAO PAULO'),(1705,130,'JOAO GOULART'),(1706,130,'JOAO GOULART II'),(1707,130,'JOCKEY DE ITAPARICA'),(1708,130,'LOURDES'),(1709,130,'MARADA DA BARRA'),(1710,130,'MORADA DA BARRA'),(1711,130,'MORADA DO SOL'),(1712,130,'MORRO DA LAGOA'),(1713,130,'MORRO DO MORENO'),(1714,130,'NORMILIA CUNHA'),(1715,130,'NORMILIA CUNHA SANTOS'),(1716,130,'NOSSA SENHORA DA PENHA'),(1717,130,'NOSSA SENHORA DA PENHA I'),(1718,130,'NOVA AMERICA'),(1719,130,'NOVA ITAPARICA'),(1720,130,'NOVO MÉXICO'),(1721,130,'NOVO MEXICO'),(1722,130,'OLARIA'),(1723,130,'PARQUE DAS GAIVOTAS'),(1724,130,'PAUL'),(1725,130,'PLANALTO'),(1726,130,'PONTA DA FRUTA'),(1727,130,'PRAIA DA COSTA'),(1728,130,'PRAIA DAS GAIVOTAS'),(1729,130,'PRAIA DE ITAPARICA'),(1730,130,'PRAIA DE ITAPOA'),(1731,130,'PRAIA DO CANTO'),(1732,130,'PRAIA ITAPOA'),(1733,130,'PRAINHA'),(1734,130,'PRIMEIRO DE MAIO'),(1735,130,'REPUBLICA'),(1736,130,'RESIDENCIAL COQUEIRAL'),(1737,130,'RESIDENCIAL ITAPARICA'),(1738,130,'RIO MARINHO'),(1739,130,'RIVIERA DA BARRA'),(1740,130,'SAGRADA FAMILIA'),(1741,130,'SANTA CLARA'),(1742,130,'SANTA INES'),(1743,130,'SANTA MÔNICA'),(1744,130,'SANTA MONICA'),(1745,130,'SANTA PAULA'),(1746,130,'SANTA PAULA II'),(1747,130,'SANTA RITA'),(1748,130,'SANTOS DUMONT'),(1749,130,'SAO CONRADO'),(1750,130,'SAO CRISTOVAO'),(1751,130,'SAO PAULO'),(1752,130,'SAO ROQUE DO CANAA'),(1753,130,'SÃO TORQUARTO'),(1754,130,'SAO TORQUATO'),(1755,130,'SOTECO'),(1756,130,'TERRA VERMELHA'),(1757,130,'ULISSES GUIMARAES'),(1758,130,'VALE ENCANTADO'),(1759,130,'VILA BATISTA'),(1760,130,'VILA CONCEI€AO'),(1761,130,'VILA DAS GARCAS'),(1762,130,'VILA GARRIDO'),(1763,130,'VILA GUARANHUNS'),(1764,130,'VILA NOVA'),(1765,130,'VINTE E TRES DE MAIO'),(1766,130,'VISTA DA PENHA'),(1767,130,'ZUMBI DOS PALMARES'),(1768,131,'ANDORINHAS'),(1769,131,'BAIRRO DE LOURDES'),(1770,131,'BARRO VERMELHO'),(1771,131,'BELA VISTA'),(1772,131,'BENTO FERREIRA'),(1773,131,'BOA VISTA'),(1774,131,'BOA VISTA DE NOVA ALMEIDA'),(1775,131,'BOMFIM'),(1776,131,'BONFIM'),(1777,131,'CARATOIRA'),(1778,131,'CENTRAL'),(1779,131,'CENTRO'),(1780,131,'CONDUSA'),(1781,131,'CONQUISTA'),(1783,131,'CONSOLAÇÃO'),(1784,131,'CONSOLADO'),(1785,131,'CRUZAMENTO'),(1786,131,'DE LOURDES'),(1787,131,'DOIS PINHEIROS'),(1788,131,'ENSEADA DO SUÁ'),(1789,131,'ENSEADA DO SUA'),(1790,131,'ESTRELINHA'),(1791,131,'FILIAL'),(1792,131,'FLEXAL'),(1794,131,'FORTE SAO JOAO'),(1795,131,'FRADINHOS'),(1796,131,'GOIABEIRAS'),(1797,131,'GOIABEIRAS VELHA'),(1798,131,'GRANDE VITORIA'),(1799,131,'GURIGICA'),(1800,131,'HORTO'),(1801,131,'ILHA DAS CAIEIRAS'),(1802,131,'ILHA DE SANTA MARIA'),(1803,131,'ILHA DO PRINCIPE'),(1804,131,'ILHA MONTE BELO'),(1805,131,'ILHA SANTA MARIA'),(1806,131,'INHANGUETA'),(1807,131,'ITACIBA'),(1808,131,'ITARARÉ'),(1810,131,'JABOUR'),(1811,131,'JABURUNA'),(1812,131,'JARDIM AMERICA'),(1813,131,'JARDIM CAMBURI'),(1814,131,'JARDIM DA PENHA'),(1815,131,'JESUS DE NAZARETH'),(1816,131,'JOANA D\'ARC'),(1817,131,'JUCUTUQUARA'),(1818,131,'MARIA ORTIZ'),(1819,131,'MARUIPE'),(1820,131,'MATA DA PRAIA'),(1821,131,'MONTE BELO'),(1822,131,'MORADA DE CAMBURI'),(1823,131,'MORRO DO MOSCOSO'),(1824,131,'MORRO DO QUADRO'),(1825,131,'NAZARETH'),(1826,131,'NOSSA SENHORA DA CONSOLAÇÃO'),(1827,131,'NOSSA SENHORA DA CONSOLACAO'),(1828,131,'NOVA PALESTINA'),(1829,131,'PARQUE MOSCOSO'),(1830,131,'PARQUE RESIDENCIAL BARREIROS'),(1831,131,'PORTO CANOA'),(1832,131,'PORTO DE SANTANA'),(1833,131,'PRAIA DE SANTA HELENA'),(1834,131,'PRAIA DO CANTO'),(1835,131,'PRAIA DO SUA'),(1836,131,'QUADRO'),(1837,131,'REDENCAO'),(1838,131,'REPUBLICA'),(1839,131,'RESISTENCIA'),(1840,131,'ROMAO'),(1841,131,'SANTA CECILIA'),(1843,131,'SANTA LÚCIA'),(1845,131,'SANTA LUZIA'),(1846,131,'SANTA MARIA'),(1847,131,'SANTA MARTHA'),(1848,131,'SANTA RITA'),(1849,131,'SANTA TERESA'),(1851,131,'SANTO ANDRE'),(1852,131,'SANTO ANTONIO'),(1853,131,'SANTOS DUMONT'),(1854,131,'SANTOS REIS'),(1855,131,'SÃO BENEDITO'),(1856,131,'SAO CAMATA'),(1857,131,'SAO CRISTOVAO'),(1858,131,'SAO JOSE'),(1859,131,'SAO PEDRO'),(1860,131,'SAO PEDRO III'),(1861,131,'SAO PEDRO V'),(1862,131,'SAO TORQUATO'),(1863,131,'SOLON BORGES'),(1864,131,'TABUAZEIRO'),(1865,131,'TERRA VERMELHA'),(1866,131,'UNIVERSITARIO'),(1867,131,'VILA RUBIM'),(2048,97,'DISTRITO DE PONTE DE ITABAPOANA'),(2049,117,'CENTRO'),(2050,129,'CENTRO'),(2051,79,'CENTRO'),(2052,102,'SÃO CRISTOVÃO'),(2053,102,'SÃO FRANCISCO'),(2054,104,'CENTRO'),(2055,116,'CENTRO'),(2056,116,''),(2057,97,'ZONA RURAL'),(2058,58,'SÃO JOÃO DO SOBRADINHO'),(2071,52,'CENTRO'),(2072,127,'RIBEIRA'),(2073,99,'CENTRO'),(2074,71,'CENTRO'),(2075,78,'NOVA GUARAPARI'),(2076,78,''),(2077,124,'CENTRO'),(2078,71,'ZONA RURAL'),(2079,124,'RIO ALEGRE'),(2080,62,''),(2081,105,'CENTRO'),(2082,127,'GUARATIAS'),(2083,56,'NOVA BARRA'),(2084,121,'VILA NOVA'),(2085,102,'AEROPORTO'),(2086,121,'SERNAMBY'),(2087,55,'INDUSTRIAL'),(2088,128,'ZONA RURAL'),(2089,102,'SANTA LUZIA'),(2090,65,'BRAÇO DO RIO PRETO'),(2091,127,'BUIAIARAS'),(2092,127,'BUIAIARAS'),(2093,123,'TINS'),(2094,130,'POLO EMPRESARIAL NOVO MEXICO'),(2099,131,'SANTA HELENA'),(2100,131,'AEROPORTO'),(2101,129,'SANTA HELENA'),(2102,48,'SEDE'),(2103,61,'CORONEL BORGES'),(2104,81,'CENTRO'),(2105,68,'SANTA CRUZ'),(2106,85,'GARRAFÃO'),(2107,85,'GARRAFÃO'),(2108,85,'GRAUNA'),(2109,55,''),(2110,79,'ZONA RURAL'),(2111,131,'SANTA LUIZA'),(2112,81,'SANTA MARTA'),(2113,81,'SANTA MARTA'),(2114,59,'CENTRO'),(2115,97,'CENTRO- SEDE'),(2116,97,' CONCEICAO DE MUQUI'),(2117,97,'CONCEICAO DE MUQUI'),(2124,55,'	 SAPUCAIA'),(2125,123,''),(2126,78,'ENSEADA AZUL'),(2127,123,'TERMINAL INTERMODAL DA SERRA'),(2128,61,'GILBERTOMACHADO'),(2129,61,'GILBERTO MACHADO'),(2130,61,'SAFRA'),(2131,126,''),(2132,92,'CANIVETE'),(2133,92,'CANIVETE'),(2134,92,''),(2135,59,'AV. MAJOR BLEY'),(2136,71,'VILA NOVA'),(2137,48,''),(2138,48,'CENTRO'),(2139,44,'CENTRO'),(2143,85,'FAZENDA MARAVILHA'),(2144,85,'FAZENDA MARAVILHA'),(2145,49,'ZONA RURAL'),(2146,97,'PRATINHA'),(2147,46,'GOVERNADOR LACERDA DE AGUIAR'),(2148,77,'SÃO JOSE'),(2149,77,'SAO JOSE'),(2150,78,'SANTA MONICA'),(2151,78,'VARZEA NOVA'),(2152,78,'AEROPORTO'),(2153,55,'ZONA RURAL'),(2154,78,'MEAIPE'),(2155,78,'MEAÍPE'),(2156,123,'MANGUINHOS'),(2157,117,'DOIS PINHEIROS'),(2158,48,'CHARQUEADA');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (5,'ANUAL'),(6,'BIANUAL'),(1,'ORIENTATIVA'),(2,'PRAZO UNICO'),(7,'QUADRIENAL'),(4,'SEMESTRAL'),(3,'TRIMESTRAL');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_atividade`
--

DROP TABLE IF EXISTS `cliente_atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_atividade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_atividade` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_atividade`
--

LOCK TABLES `cliente_atividade` WRITE;
/*!40000 ALTER TABLE `cliente_atividade` DISABLE KEYS */;
INSERT INTO `cliente_atividade` VALUES (4,1,1),(5,154,1),(6,2,1),(7,6,1),(8,7,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,1),(15,16,1),(16,153,1),(17,17,1),(18,152,1),(19,18,1),(20,19,1),(21,20,1),(22,151,1),(23,21,1),(24,22,1),(25,23,1),(26,24,1),(27,25,1),(28,26,1),(29,27,1),(30,28,1),(31,29,1),(32,30,1),(33,150,1),(34,149,1),(35,100,1),(36,148,1),(37,31,1),(38,101,1),(39,147,1),(40,32,1),(41,102,1),(42,146,1),(43,103,1),(44,33,1),(45,145,1),(46,34,1),(47,73,1),(48,36,1),(49,37,1),(50,38,1),(51,39,1),(52,40,1),(56,41,1),(57,42,1),(58,105,1),(59,106,1),(60,87,1),(61,44,1),(62,46,1),(63,47,1),(64,48,1),(65,49,1),(66,50,1),(67,51,1),(68,52,1),(69,88,1),(70,53,1),(71,90,1),(72,91,1),(73,54,1),(74,55,5),(75,57,1),(76,58,1),(77,59,1),(78,60,1),(79,61,1),(80,62,1),(81,75,1),(82,76,1),(83,77,1),(84,78,1),(85,79,1),(86,80,1),(87,81,1),(88,82,1),(89,84,1),(90,83,1),(91,85,1),(92,86,1),(93,93,1),(94,94,1),(95,95,1),(96,97,1),(97,98,1),(98,99,1),(99,107,1),(100,108,1),(101,109,1),(102,110,1),(103,111,1),(104,112,1),(105,113,1),(106,114,1),(107,115,1),(108,116,1),(109,117,1),(110,118,1),(111,119,1),(112,120,1),(113,121,1),(114,122,1),(115,123,1),(116,124,1),(117,124,NULL),(118,125,1),(119,126,1),(120,127,1),(121,128,1),(122,134,1),(123,136,1),(124,137,1),(125,138,1),(126,139,1),(127,140,1),(128,141,1),(129,142,1),(130,143,1),(131,144,1),(132,26,4),(133,162,1),(135,0,1),(136,185,1),(137,190,1),(138,184,1),(139,71,1),(140,192,1),(141,193,1),(142,70,1),(143,35,1),(144,43,1),(145,64,6),(146,72,1),(147,65,6),(148,67,1),(149,66,1),(150,68,1),(151,194,1),(152,197,1),(153,198,1),(154,202,1),(155,203,1),(156,204,1),(157,205,1),(158,206,1),(159,63,1),(160,207,1),(161,208,1),(162,209,1),(163,210,1),(164,211,1),(165,212,1),(166,0,1),(167,0,1),(168,213,1),(169,225,1),(170,232,1),(171,234,1),(172,236,1),(173,237,1),(174,0,4),(175,238,4),(176,239,6),(177,240,6),(178,241,1),(179,242,7),(180,135,1),(181,129,1),(182,132,1),(183,243,1),(184,244,1),(185,245,6),(186,246,1),(187,247,1),(188,248,1),(189,249,1),(190,250,1),(191,0,1),(192,251,1),(193,252,6),(194,253,1),(195,254,1),(196,255,1),(197,256,1),(198,257,6),(199,258,4),(200,259,1),(201,260,1),(202,261,1),(203,262,8),(204,263,1),(205,264,1),(206,265,1),(207,0,1),(208,266,1),(209,267,6),(210,268,1),(211,269,1),(212,270,1),(213,271,1),(214,272,1),(215,277,1),(216,278,1),(217,279,1),(218,280,1),(219,281,1),(220,282,1),(221,283,1),(222,286,1),(223,0,4),(224,287,4),(225,288,9),(226,0,1),(227,289,1);
/*!40000 ALTER TABLE `cliente_atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condicionante`
--

DROP TABLE IF EXISTS `condicionante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condicionante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_licenca` int NOT NULL,
  `numero` varchar(6) DEFAULT NULL,
  `descricao` mediumtext NOT NULL,
  `cumprida` char(1) DEFAULT NULL,
  `dt_venc` date DEFAULT NULL,
  `dt_cumprimento` date DEFAULT NULL,
  `dt_aviso` date DEFAULT NULL,
  `id_responsavel` int DEFAULT NULL,
  `id_executor` int DEFAULT NULL,
  `protocolo` varchar(512) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `prazo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_licenca_idx` (`id_licenca`),
  KEY `fk_condicionante_executor_idx` (`id_executor`),
  KEY `fk_condicionante_categoria_idx` (`id_categoria`),
  CONSTRAINT `fk_condicionante_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_condicionante_executor` FOREIGN KEY (`id_executor`) REFERENCES `usuario` (`id`),
  CONSTRAINT `fk_condicionante_licenca` FOREIGN KEY (`id_licenca`) REFERENCES `licenca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4915 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condicionante`
--

LOCK TABLES `condicionante` WRITE;
/*!40000 ALTER TABLE `condicionante` DISABLE KEYS */;
INSERT INTO `condicionante` VALUES (4433,318,'07','07- Apresentar a cada 04 anos os testes relativos á integridade dos sistemas de armazenamento e distribuição de combustíveis (tanques e tubulações), emitido por empresa ou profissional habilitado e acompanhado da devida ART. \r\n\r\nPRAZO: 90 DIAS','N','2024-02-22',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4434,318,'08','08- Apresentar laudo técnico de conformidade de acordo com as normas vigentes. Deverá ser emitido por empresa ou profissional habilitado e acompanhado da devida ART. Encaminhar resultados a cada 04 anos.\r\n\r\nPRAZO: 90 DIAS','N','2024-02-22',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4435,318,'09','09- Os estudos premilinares de passivos ambientais (VOC) devem ser apresentados a cada 04 anos.\r\n\r\nPRAZO: 90 DIAS','N','2024-02-22',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4436,318,'10','10- Realizar a análise do efluente final na saída do sistema separador de água e óleo (SSAO) por empresa especializada atestando a efiência do sistema em acordo com os parâmetros contidos na Resolução CONAMA 430/11.\r\n\r\nPRAZO: ANUALMENTE\r\n\r\nPRIMEIRA APRESENTAÇÃO: 90 DIAS','N','2024-02-22',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4437,318,'11','11- Realizar de forma adequada o gerenciamento, armazenamento e destinação dos resíduos sólidos, domésticos e industriais gerados, realizando a coleta seletiva em atendimento ao Plano de Resíduos Sólidos - PNRS Lei 12.305/2010.\r\n\r\n\r\nPRAZO: 90 DIAS ','N','2024-02-22',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4438,318,'12','12- Realizar o armazenamento de todo o óleo usado e demais resíduos sóidos contaminados em locais com piso impermeabilizado, sistema de contenção e cobertura. Os resíduos oleosos utilizados deverão ser armazenados em tambores portados de tampas. Apresentar documentação comprobatória.\r\n\r\nPRAZO: 90 DIAS','N','2024-02-22',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4439,318,'13','13- Destinar todo o óleo usado e demais resíduos sólidos contaminados, somente a empresa devidamente licenciadas.\r\n\r\nPRAZO: ANUALMENTE','N','2024-11-22',NULL,'2024-11-01',7,7,NULL,NULL,NULL),(4440,318,'16','16- Encaminhar, com dados mensais, relatório de movimentação de resíduos e encaminhar documentos comprobatórios (certificados, manifesto de empresas recptoras, noas fiscais de venda ou recibos de doação, destinação final. todos devidamente assinados pelo recebedor) de movimentação e destinação dos resíduos sólidos de origem industrial, além dos subprodutos ou resíduos diversos.\r\n\r\n\r\nPRAZO: ANUALMENTE','N','2024-11-22',NULL,'2024-11-01',7,7,NULL,NULL,NULL),(4441,318,'17','17- Realizar a limpeza e manutenção do sistema de drenagem pluvial bem como das caixas separadoras de água e óleo (SSAO), e do sistema Sumps das bombas de abastecimento, a fim de manter a eficiencia das mesmas, armazenando adequadamente os resíduos gerados. Comprovar via relatório fotográfico.\r\n\r\nPRAZO: ANUALMENTE','N','2024-11-22',NULL,'2024-11-01',7,7,NULL,NULL,NULL),(4442,318,'18','18- Apresentar alvará válido do corpo de bombeiros.\r\n\r\nPRAZO: ANUALMENTE','N','2024-11-29','2023-11-29','2024-10-29',7,7,NULL,NULL,NULL),(4443,319,'02','02- Armazenar, adequadamente e encaminhar para empresa devidamente licenciada pelo órgão ambiental competente, todos os resíduos Classe I - Perigosos e apresentar comprovantes.','N','2024-11-24',NULL,'2024-11-01',7,7,NULL,NULL,NULL),(4444,319,'03','03- Manter as áreas interna e externa do empreendimento nas melhores condicões de higiene, limpeza e arrumação. \r\nFotos do local de resíduo.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4445,319,'06','06- Tanto a areia contaminada quanto a lama/borra retiradas do sistema separador de água e óleo deverão ser destinadas a aterro industrial licenciado ambientalmente.\r\n\r\nPrazo: anualmente','N','2024-11-24',NULL,'2024-11-01',7,7,NULL,NULL,NULL),(4446,319,'11','11- Apresentar documento comprobatório referente á destinação final dos efluentes líquidos e dos resíduos sólidos gerados no empreendimento.\r\n\r\n\r\nPRAZO: ANUALMENTE','N','2024-11-24',NULL,'2024-11-01',7,7,NULL,NULL,NULL),(4447,319,'15','15- Apresentar o monitoramento do efluente final do sistema separador de água e óleo (SSAO), composto pela caracterização físico-quimica dos efluentes líquidos provenientes do sistema separador de água e óleo, devendo ser verificada sua eficiencia, através da investigação dos seguintes parametros: óleos e graxas, fenóis totais, surfactantes, sólidos sedimentáveis e suspensos.\r\n\r\nPRAZO: SEMESTRAL','N','2024-05-17',NULL,'2024-05-01',7,7,NULL,NULL,NULL),(4448,319,'18','18- Apresentar no momento de pedido de renovação desta licença ambiental, relatório de cumprimento de condicionantes ambientais - RCCA, com vinculação e assinatura do responsável técnico e recolhimento de documento de responsabilidade junto ao conselho competente.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4449,319,'19','19- Apresentar junto á abertura do processo de renovação, que deverá ser requerida com antecedencia mínima de 120 dias antes.\r\n\r\na) Laudo Técnico de estanqueidade dos sistemas de armazenamento e distribuição de combustíveis.\r\n\r\nb)Laudo técnico conclusivo da Avaliação Preliminar - etapa 1 A e investigação por compostos ôrganicos voláteis (VOCs) - etapa 1B.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4451,320,'07','07- Afixar na entrada do empreendimento placa informativa.\r\n\r\nPRAZO: 30 DIAS','N','2023-12-13',NULL,'2023-12-01',7,7,NULL,NULL,NULL),(4452,320,'08','08- O cumprimento da condicionante 7 pode ser substituida pela apresentação da licença simplificada ou cópia em moldura.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4453,320,'09','09- Apresentar a fixação da placa informativa, relatório fotográfico que comprove o cumprimento da condicionante 7 ou 8.','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4454,320,'10','10- Todos os resíduos Classe I gerados durante a execução das atividades deverão ser destinados á empresa devidamente licenciada e apresentar as cópias das notas fiscais ou contrato firmado com a mepresa coletora de resíduos.\r\n\r\n\r\nPRAZO: ANUALMENTE','N','2024-05-13',NULL,'2024-05-21',7,7,NULL,NULL,NULL),(4455,321,'01','01- Publicar comunicado de obtenção desta licença em jornal de grande circulação e diário oficial do estado.\r\n\r\n\r\nPRAZO: 30 DIAS','N','2023-11-06',NULL,NULL,7,7,NULL,NULL,NULL),(4456,321,'02','02- Instalar na entrada do empreendimento, uma placa informativa, de fácil visualização e leitura, com fundo branco, nas dimensões mínimas de 1,20m x 0,80m.\r\n\r\nPRAZO: 30 dias','N','2023-11-06',NULL,NULL,7,7,NULL,NULL,NULL),(4457,321,'03','03- Apresentar ART/RRT do resposável técnico eplo atendimento das condicionantes ambientais.\r\n\r\nPRAZO: 60 DIAS','N','2023-12-06',NULL,NULL,7,7,NULL,NULL,NULL),(4458,321,'05','05- Apresentar comprovação de interligação do efluente doméstico na rede pública de coleta de esgoto.\r\n\r\nPRAZO: 60 DIAS','N','2023-12-06',NULL,NULL,7,7,NULL,NULL,NULL),(4459,321,'06','06- A empresa deverá desenvolver e apoiar programas e projetos voltados á educação ambiental, visando a sustentabilidade local e em parceria com a comunidade. Para tanto a empresa deverá buscar junto ao DEA propostas e projetos para apoio.\r\n\r\nPRAZO: OUTUBRO/24','N','2024-10-01',NULL,'2024-09-01',7,7,NULL,NULL,NULL),(4460,321,'07','07- Apresentar nesta SEMMA, a cada 2 anos, teste de estanqueidade de todos os tanques e de suas tubulações, realizada por empresa credenciadas pelo INMETRO, e com a devida ART.\r\n\r\nPRAZO: BIANUALMENTE','N','2024-09-01',NULL,'2024-08-01',7,7,NULL,NULL,NULL),(4461,321,'08','08- Apresentar análise físico-química dos efluentes provenientes da caixa separadora de água e óleo, através dos parametros: pH, DQO, DBO, sólidos suspensos, sólidos sedimentáveis, fenóis, óleos minerais, óleos vegetais e surfactantes.\r\n\r\nPRAZO: SEMESTRALMENTE','N','2023-12-06',NULL,NULL,7,7,NULL,NULL,NULL),(4462,321,'09','09- Promover a limpeza da caixa separadora de água e óleo realizada por empresa licenciada ambientalmente. Apresentando nesta SEMMA os comprovantes de limpeza e destinação dos resíduos.\r\n\r\nPRAZO: SEMESTRALMENTE','N','2023-12-06',NULL,NULL,7,7,NULL,NULL,NULL),(4463,321,'10','10- Promover a limpeza e manutenção das câmaras de contenção das unidades de abastecimento, descarga, unidade de filtragem de disel e nas boca-de-visita dos tanques.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4464,321,'17','17- Manter organizada e limpa a área de operacionalização, realizando a segregação dos resíduos sólidos gerados durante as atividades, fazendo uso permanente da coleta seletiva, preferencialmente conforme RESOLUÇÃO CONAMA n° 275/2001 e suas atualizações, obedecida sua classificação conforme a norma ABNT NBR N° 10.004. Comprovar, por meio de relatório fotográfico a existencia de local e recipientes adequados para acondicionamento e armazenamento temporário dos resíduos sólidos e comprovar por meio de relatório descritivo fotográfico.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4465,321,'17','17- Apresentar os certificados de destinação final - CDF de resíduos gerados no empreendimento, em local licenciado por órgão ambiental competente, por meio do MTR/IEMA.\r\n\r\n\r\nPRAZO: ANUALMENTE','N','2024-10-01',NULL,NULL,7,7,NULL,NULL,NULL),(4466,322,'01','01 - Renovar a cada 04 anos os testes de estanqueidade.\r\n\r\n\r\nPrazo\r\nQUANDO SOLICITAR A  PRÓXIMA RENOVAÇÃO DA LICENÇA DE OPERAÇÃO.','N','2027-06-11',NULL,'2027-05-11',6,6,NULL,NULL,NULL),(4467,322,'05','05 - Realizar levantamento de passivos ambientais por VOC.\r\n\r\n\r\nPrazo:\r\nQUANDO SOLICITAR A PRÓXIMA RENOVAÇÃO DA LICENÇA.','N','2027-06-11',NULL,'2027-05-11',6,6,NULL,NULL,NULL),(4468,322,'08','08- Instalar sistema de captação de água pluvial visando ao seu reuso conforme estabelece a Lei Estadual 10.624/2017, o projeto deverá ser elaborado por profissional habilitado e acompanhado da respectiva ART, os projetos deverão seguir as orientações das ABNT/NBR 10844/89 e 15527/07, apresentando relatório fotográfico descritivo da instalação.\r\n\r\n','N','2024-04-11',NULL,'2024-03-11',6,6,NULL,NULL,NULL),(4469,322,'09','09- Apresentar relatório fotográfico que comprovante a colocação, na entrada do empreendimento de uma placa informativa.','N','2023-11-11',NULL,'2023-11-01',6,6,NULL,NULL,NULL),(4470,322,'10','10- Apresentar folha original de publicação, tornando público à obtenção da Licença Municipal de Operação, no diário oficial e em jornal de grande circulação, no local de abrangência da atividade licenciada.','N','2023-11-11',NULL,'2023-11-01',6,6,NULL,NULL,NULL),(4471,322,'13','13- Apresentar nota fiscal dos tanques de armazenamento de combustíveis ou laudo de conformidade.','N','2023-11-11',NULL,'2023-11-01',6,6,NULL,NULL,NULL),(4472,322,'14','14- Identificar os tambores/caixas para acondicionamento temporário de resíduos de acordo com a sua tipologia, conforme o sistema adotado pelo Município (seco e úmido) estes resíduos deverão ser disponibilizados para coleta conforme cronograma estabelecido pela Prefeitura. Apresentar relatório fotográfico.','N','2023-11-11',NULL,'2023-11-01',6,6,NULL,NULL,NULL),(4473,322,'19','19- Apresentar a SEMA cópia da licença ambiental e contrato das empresas responsáveis pela coleta e destinação final dos resíduos Classe I (perigosos).','N','2023-11-11',NULL,'2023-11-01',6,6,NULL,NULL,NULL),(4474,322,'22','22- Apresentar relatório de movimentação de todos os resíduos sólidos gerados de acordo com a tabela que consta no Anexo I.\r\n\r\n- ANUALMENTE -\r\n\r\n','N','2024-10-11',NULL,'2024-09-11',6,6,NULL,NULL,NULL),(4475,322,'25','25 - Apresentar anuência para lançamento de efluentes oriundo do Sistema do SAO na rede de coleta e tratamento de esgoto, obter junto a concessionária de água e esgoto ou equivalente.\r\n\r\n\r\nPrazo:\r\n15 dias após o recebimento da mesma.','N','2024-02-11',NULL,'2024-02-01',6,6,NULL,NULL,NULL),(4476,322,'26','26- Em caso de negativa da empresa gestora para recebimento dos efluentes oriundos do SSAO, não sendo autorizado o lançamento em sumidouro ou redes de drenagem pluvial. Será solicitado, que a empresa implante na saída do SSAO, um sistema de tratamento e reutilização do efluente industrial gerado ou implante uma caixa/compartimento estanque e destine o efluente para empresa ambientalmente licenciada ou apresentar uma solução ambientalmente adequada elaborada por profissional habilitado e acompanhado de projeto com memorial de cálculo e descritivo acompanhado de ART de elaboração e execução e relatório fotográfico comprobatório da execução do projeto.\r\n\r\nPrazo: 120 dias','N','2024-02-11',NULL,'2024-02-01',6,6,NULL,NULL,NULL),(4477,322,'27','27- Realizar limpeza e manutenção das caixas separadoras de água e óleo. Deverá ser apresentado relatório fotográfico comprobatório das etapas antes, durante e depois da limpeza.\r\n\r\n\r\n- SEMESTRALMENTE -\r\n','N','2023-11-11',NULL,'2023-11-01',6,6,NULL,NULL,NULL),(4478,322,'28','28- Realizar caracterização físico-química dos efluentes das caixas separadoras de água e óleo.\r\n\r\n- ANUALMENTE -\r\n\r\n','N','2024-04-11',NULL,'2024-03-11',6,6,NULL,NULL,NULL),(4479,319,NULL,'Publicação.','S','2023-12-17','2023-12-01','2023-12-01',6,6,NULL,NULL,NULL),(4480,323,'06','06- Apresentar licença ambiental da empresa terceirizada contratada para realizar a lavagem de veículos leves e pesados.\r\n\r\nPRAZO: 180 DIAS','N','2024-05-14',NULL,'2024-04-01',7,7,NULL,NULL,NULL),(4481,323,'07','07- Apresentar contrato de aluguel da área de lavagem de veiculos.\r\n\r\nPRAZO: 30 DIAS','N','2023-12-14',NULL,NULL,7,7,NULL,NULL,NULL),(4482,323,'09','09- Realizar periodicamente a limpeza e manutenção das câmaras de contenção sob as unidades de abastecimento, sump´s das bombas, descarga, unidade de filtragem de diesel e nas bocas-de-visita dos tanques. Apresentar relatório fotográfico.\r\n\r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-05-14',NULL,'2024-04-01',7,7,NULL,NULL,NULL),(4483,323,'10','10- Armazenar todo óleo usado e demais resíduos sólidos contaminados Classe I, preferencialmente em tambores e em área impermeabilizada e coberta, dotada de bacia de contenção estanque. Apresentar relatório fotográfico.\r\n\r\nPRAZO: 30 DIAS','N','2023-12-14',NULL,NULL,7,7,NULL,NULL,NULL),(4484,323,'12','12- Apresentar cópia dos comprovantes de destinação final dos resíduos Classe I, emitido por empresa licenciada para tal finalidade. Para comprovação da destinação deverá ser apresentado um relatório especificando o tipo e volume de resíduo coletado, a identificação da empresa com cópia da licença ambiental, bem como cópia das notas fiscais de alienação e contrato firmado com a empresa coletora de resíduos.\r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-05-14',NULL,'2024-04-01',7,7,NULL,NULL,NULL),(4485,323,'13','13- Implantar a segregação seletiva do lixo reciclável, utilizando recipientes devidamente identificado por cores, conforme Resolução Conama n° 275/2001 e assegurar o envio dos resíduos segregados para reciclagem. Apresentar relatório fotográfico.','N','2024-02-14',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4486,323,'14','14- Apresentar comprovante de interligação dos efluentes tratados do empreendimento (fossa séptica e SSAO) á rede de esgoto (acompanhado do traçado da rede, desde o ponto de lançamento da saída do sistema de tratamento até a rede de esgoto). Apresentar anuência da companhia de saneamento do município (CESAN) para fins de utilização da estrutura de coleta de esgoto para o lançamento de efluentes doméstico e industrial tratado na rede.\r\n\r\n\r\nPRAZO: 90 DIAS','N','2024-02-14',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4487,323,'15','15- Caso a CESAN não conceda a anuência solicitada na condicionante anterior, implantar destinação ambientalmente adequada de destinação final de efluentes. Apresentar relatório fotográfico comprobatório e descritivo das medidas adotadas, acompanhado de projeto e ART de elaboração e execução.\r\n\r\n\r\nPRAZO: 180 DIAS','N','2024-05-14',NULL,'2024-04-01',7,7,NULL,NULL,NULL),(4488,323,'17','17- Realizar a limpeza do sistema de tratamento doméstico (fossa séptica) sempre que houver necessidade. Substituir as tampas do sistema por tampas metálicas articuladas e sem avarias, a fim que seja facilitada a fiscalização e manutenção preventiva. Apresentar relatório fotográfico da colocação das novas tampas no sistema de tratamento.\r\n\r\nPRAZO: 30 DIAS','S','2023-12-14','2024-01-11','2023-12-01',7,7,NULL,NULL,NULL),(4489,323,'18','18- Realizar a caracterização físico-quimica do efluente do SSAO (entrada e saída), a fim de verificar sua eficiencia, através da investigação dos parâmetros pH, sólidos sedimentáveis, sólidos suspensos, óleos e graxas e surfactantes.\r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-05-14',NULL,'2024-04-01',7,7,NULL,NULL,NULL),(4490,323,'19','19- Realizar a cada 4 anos e apresentar laudo relativo á integridade dos sistemas de armazenamento e distribuição de combustíveis (tanques e tubulações) emitido por profissional habilitado e empresa certificada pelo INMETRO, acompanhado da devida ART. Os testes deverão observar as recomendações da NBR n° 13.784/2019.\r\n\r\n\r\nPRAZO: JULHO/2026','N','2026-07-14',NULL,'2026-07-01',7,7,NULL,NULL,NULL),(4491,323,'20','20- Realizar a cada 04 anos e apresentar laudo emitido por empresa certificada pelo INMETRO, ou entidade por ele credenciada, atestando que o posto possui todos os equipamentos e sistemas obrigatórios de acordo com a classe 03, conforme preconiza a NBR n° 16.764/2019 ou a que vier a substitui-lá, e ainda a conformidade quanto a fabricação, montagem e comissionamento dos equipamentos e sistemas de abastecimento subterrâneo de combustíveis. O laudo deve estar acompanhado de atestado da conformidade de serviço realizado, com assinatura do repesentante da empresa de instalação e retirada de sistema de abastecimento subterrâneo de combustível (SASC), conforme preconiza a portaria do INMETRO 009/2011.\r\n\r\nPRAZO: JANEIRO/2025','N','2025-01-14',NULL,'2025-01-01',7,7,NULL,NULL,NULL),(4492,323,'21','21- Instalar sensor de monitoramento intersticial no reservatório de monitoramento intersticial e spill de monitoramento. Apresentar cópia da nota fiscal de compra do aparelho e/ou nota fiscal emitida pelo instalador, desde que conste a identificação do fabricante, o modelo e o número de série dos equipamentos, e laudo informando que o aparelho esta instalado e em funcionamento.\r\n\r\n\r\nPRAZO: 30 DIAS','N','2023-12-14',NULL,NULL,7,7,NULL,NULL,NULL),(4493,323,'22','22- Realizar a limpeza e manutenção do SSAO através de empresa especializada e licenciada ambientalmente, a fim de manter a eficiência do mesmo. Apresentar relatório fotográfico comprobatório das etapas de antes, durante e depois da limpeza, acompanhado da licença ambiental válida da empresa prestadora do serviço e das notas fiscais referentes ao serviço realizado.\r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-05-14',NULL,'2024-05-01',7,7,NULL,NULL,NULL),(4494,323,'23','23- Renovar o alvará do corpo de bombeiros.','S',NULL,'2023-12-18',NULL,7,7,NULL,NULL,NULL),(4495,323,'24','24- Apresentar o Registro na ANP.\r\n\r\nPRAZO: 60 DIAS','S','2024-01-14','2023-12-18',NULL,7,7,NULL,NULL,NULL),(4496,323,'25','25- Manter atualizada a declaração de uso de água subterrânea emitida pela AGERH.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4497,323,'26','26- Acrescentar no relatório técnico de vistoria do poço de captação de água um relatório fotográfico da cabeça do poço de água subterrânea identificando a colocação da tampa e lacre, e ainda da laje de proteção de concreto. Apresentaro relatório supracitado com as adequações ou apresentar novo relatório, acompanhado de ART, atestando que o poço para captação de água subterrânea está em conformidade com os preceitos construtivos descritos nas NBR 12.244/92 e NBR 12.212/92, destacando no relatório que o poço contém o solicitado nesta condiconante.\r\n\r\nPRAZO: 90 DIAS','N','2024-02-14',NULL,'2024-02-01',7,7,NULL,NULL,NULL),(4498,323,'27','27- Apresentar comprovação da realização de treinamento de pessoal em operação e resposta a incidentes/emergencia, atestado por profissional habilidade.\r\n\r\n\r\nPRAZO: 60 DIAS','N','2024-01-14',NULL,'2024-01-01',7,7,NULL,NULL,NULL),(4499,323,'28','28- Desenvolver palestra de educação ambiental com os colaboradores do empreendimento, abordando os aspectos do licenciamento ambiental e de como este se relaciona com a atividade em que trabalham, dando clareza sobre os impactos ambientais decorrentes da atividade, bem como as medidas de controle a serem adotadas, especificando as condicionantes exigidas pelo órgão ambiental. Apresentar relatório descritivo e fotográfico das ações tomadas para execução do programa de educação ambiental.\r\n\r\nPRAZO: 90 DIAS PARA O PRIMEIRO RELATÓRIO\r\n\r\nPRAZO: ANUALMENTE','N','2024-02-14',NULL,'2024-01-01',7,7,NULL,NULL,NULL),(4500,323,'29','29- Apresentar relatório válido de inspeção do compressor utilizado pela empresa, acompanhado de ART assinada por profissional devidamente habilitado.\r\n\r\nPRAZO: ANUALMENTE','N','2024-01-14',NULL,'2024-01-02',7,7,NULL,NULL,NULL),(4501,323,'40','40- Apresentar relatório fotográfico que comprove a colocação, na entrada do empreendimento, de uma placa informativa, de fácil visualização e leitura, nas dimensões 1,10m x 0,80m, em fundo branco e letras azuis.\r\n\r\nPRAZO: 30 DIAS','S','2023-12-14','2024-01-11',NULL,7,7,NULL,NULL,NULL),(4502,323,'44','44- Apresentar folha de publicação, tornando público a obtenção desta licença ambiental, em jornal oficial e em jornal de circulação local ou regional.\r\n\r\nPRAZO: 30 DIAS','S','2023-12-14','2023-12-18',NULL,7,7,NULL,NULL,NULL),(4504,324,'03','Cond. 03: Apresentar Relatório fotográfico da instalação da placa informativa na entrada do empreendimento (à margem da rua principal), com fundo branco, nas dimensões mínimas de 1,20 m x 0,80 m, contendo o seguinte texto:\r\n\r\n“Nome: Altoé Revendedora de Combustíveis LTDA.\r\nCNPJ: 03.570.327/0001-97.\r\nLicença de Operação Nº 022/2023.\r\nVálida até 12/12/2027.\r\nProcesso SEMMA Nº 585.061/2023.\r\nTelefone da SEMMA: (27) 3772-5134 – Fiscalização”\r\n','N','2024-01-11',NULL,'2023-12-11',2,6,NULL,2,30),(4505,324,'04','Cond. 04: Apresentar, SEMESTRALMENTE, as cópias das notas fiscais da destinação dos resíduos sólidos contaminados ou contrato firmado com a empresa coletora de resíduos Classe I.','N','2024-03-11',NULL,'2024-02-11',1,6,NULL,4,90),(4506,324,'07','Cond. 07: Realizar, SEMESTRALMENTE, caracterização-físico química dos efluentes do SSAO (entrada e saída).','N','2024-03-11',NULL,'2024-02-11',1,6,NULL,4,90),(4507,324,'08','Cond.08: Realizar, SEMESTRALMENTE, a limpeza do sistema separador de água e óleo. Apresentar relatório fotográfico, comprovante de coleta e destinação dos resíduos e licença ambiental da empresa que realizou o serviço. Em caso de contrato com a empresa coletora dos resíduos, apresenta-lo em conjunto.','N','2024-04-10',NULL,'2024-03-10',2,6,NULL,4,120),(4508,324,'09','Cond. 09: Realizar e Apresentar a cada 04 anos o teste de estanqueidade.','N','2025-06-30',NULL,'2025-05-30',2,6,NULL,7,0),(4509,324,'10','Cond. 10: Realizar e Apresentar a cada 04 anos laudo de conformidade atestando que o posto possui todos os equipamentos e obrigatórios de acordo com a Classe 03.\r\n','N','2025-07-30',NULL,'2025-06-30',2,6,NULL,7,0),(4510,324,'11','Cond. 11: Realizar e Apresentar a cada 04 anos levantamento de passivos ambientais por VOC na área do empreendimento.','N','2025-07-30',NULL,'2025-06-30',2,6,NULL,7,0),(4511,324,'12','Cond.12: Renovar e Enviar anualmente a SEMMA o Alvará do Corpo de Bombeiros.\r\n\r\n','N','2024-03-11',NULL,'2024-02-11',2,6,NULL,5,90),(4512,324,'19','Cond. 19: Apresentar folha de publicação, em jornal de grande circulação e no diário oficial.','N','2024-01-11',NULL,'2023-12-11',1,6,NULL,2,30),(4513,324,'34','Cond. 34: Realizar programa de treinamento pessoal conforme Anexo 04 da IN IEMA nº 12/2006.\r\n\r\n','N','2024-06-09',NULL,'2024-05-09',2,6,NULL,2,180),(4514,324,'35','Cond. 35: Apresentar registro da ANP. ','N','2024-06-09',NULL,'2024-05-09',2,6,NULL,2,180),(4515,324,'36','Cond. 36: Instalar sistema e equipamentos para captação e armazenamento de água das chuvas visando seu reuso. Apresentar projeto acompanhado de ART com memorial de cálculo descritivo e relatório fotográfico da instalação do sistema.','N','2024-12-11',NULL,'2024-11-11',2,6,NULL,2,365),(4516,324,'37','Cond. 37: Apresentar Anuência da ligação do sistema de tratamento de esgoto à rede de coleta pública, emitida pela concessionária local.','N','2024-01-11',NULL,'2023-12-11',2,6,NULL,2,30),(4517,325,'38/39','38 e 39- Destinar todos os resíduos oleosos e demais resíduos sólidos Classe I, somente para empresa devidamente licenciada para tal atividade, enviando a SEMAG as cópias das notas fiscais de alienação e cópia da licença ambiental da empresa.       \r\n\r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4518,325,'40','40- Manter a coleta seletiva, separando o lixo seco passível de reciclagem do lixo úmido, armazenando temporariamente os resíduos passíveis de reciclagem em local coberto e dotado de piso impermeável, destinando os mesmos ás Associação dos Catadores de Materiais Recicláveis de Guarapari – ASSCAMARG. Apresentar comprovante de destinação emitido pela ASSCAMARG.      \r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4519,325,'41','41- Apresentar comprovante de limpeza e da cópia da licença ambiental da empresa responsável pela limpeza, transporte e destinação final do SSAO.  \r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4520,325,'42','42- Realizar a caracterização físico-química dos efluentes da caixa separadora de água e óleo, através de laboratório credenciados para a realização das análises físico-química dos efluentes. Devendo ser verificada sua eficiência através da investigação dos parâmetros: pH, óleos e graxas, sólidos sedimentáveis e sólidos suspensos. \r\n\r\nPRAZO: ANUALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4521,325,'43','43- Renovar os testes de estanqueidade para as tubulações e tanques a cada 04 anos, enviando a documentação com sua respectiva ART.\r\n\r\nPRAZO: 60 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4522,325,'44/50','44/50- Deverá ser apresentado Relatório de Investigação Ambiental Preliminar contendo informações a respeito das instalações, dos compostos orgânicos voláteis – VOC, vazamentos e derramamentos.\r\n\r\nPRAZO: 60 DIAS','N','2024-02-01',NULL,NULL,7,7,NULL,NULL,NULL),(4523,325,'45','45- Realizar manutenção dos equipamentos obrigatórios (sump, descarga selada, sistema separador de água e óleo – SSAO) conforme IN 12/06 e NBR 13786/97.    \r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4524,325,'46','46- A manutenção preventiva será feita de acordo com a recomendação e procedimentos contidos no manual do fabricante. Após a manutenção de cada equipamento, será emitido relatório constando todas as peças trocadas/recuperadas. Estes relatórios deverão ser arquivados junto ao contrato da empresa prestadora da manutenção, e apresentados ao órgão fiscalizador sempre que solicitado. Apresentar relatório constando todas as informações dos procedimentos/ocorrências realizadas.  \r\n\r\nPRAZO: ANUALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4525,325,'47','47- Apresentar cópia da licença ambiental e do contrato firmado entre a empresa responsável pela coleta, transporte e destinação final com o empreendedor responsável, pela destinação final do resíduo Classe I.\r\n\r\nPRAZO: 30 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4526,325,'48','48- Apresentar inventário de resíduos gerados pelo empreendimento, junto a cópia dos comprovantes da destinação final dos mesmos com as respectivas cópias da licença ambiental da empresa supracitada.\r\n\r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4527,325,'49','49- Realizar a limpeza/manutenção na caixa separadora de água e óleo, destinando o resíduo para empresa licenciada ambientalmente e apresentar os comprovantes de coleta e destinação do resíduo.   \r\n\r\nPRAZO:SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4528,325,'51','51-Realizar periodicamente limpeza e manutenção das câmaras de contenção sob as unidades de abastecimento, sob a unidade de filtragem de diesel e nas bocas de visita dos tanques. Apresentar relatório fotográfico.    \r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4529,325,'52','52- Apresentar tabela com dados mensais, contendo as seguintes informações: A) identifcação e quantificação (quantidades mensais) dos produtos químicos utilizados no tratamento dos efluentes industriais, acompanhado de nota fiscal de compra dos produtos; B) quantdade mensal do lodo gerado; C) quantidade mensal de telas lavadas (n° de peças/mês); D) produçãomensal (n° de peças/mês).\r\n\r\nPRAZO: ANUALMENTE\r\n\r\nSolicitar desconsideração.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4530,325,'53','53- Manter toda área de armazenamento dos produtos químicos sinalizada com placas indicativas das classes de risco dos produtos, sendo que o armazenamento deve respeitar tais placas e todo produto deve serarmazenado com rótulos visiveis e apresentar relatório fotográfico.\r\n\r\n\r\nPRAZO: 30 DIAS\r\n\r\nSolicitar desconsideração.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4531,325,'54','54- Manter o serviço de dedetização de toda área do empreendimento, a fim de conter a proliferação de roedores e insetos. Armazenando os comprovantes de realização dos serviços prestados e apresentando os mesmos a SEMAG.    \r\n\r\nPRAZO: SEMESTRALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4532,325,'55','55- Apresentar cópia da licença ambiental da empresa responsável pela execução da dedetização. Deve ser apresentado junto com os comprovantes da realização do serviço prestado.','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4533,325,'56','56- Apresentar os comprovantes de limpeza e destinação final do sistema de fossa filtro e sumidouro do empreendimento, deverão ser armazenados e apresentados ao setor de licenciamento ambiental.  \r\n\r\n\r\nPRAZO: ANUALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4534,325,'57','57- Realizar a caracterização físico-química do efluente doméstico a fim de verificar sua eficiência, através de investigação dos parâmetros: pH, sólidos sedimentáveis, DBO, DQO, coliformes totais, conforme descritos na Resolução CONAMA 430/2011, apresentando limites de detecção utilizada, laudo técnico responsável pelo ensaio e pelo laboratório com ART.  \r\n\r\n\r\nPRAZO: ANUALMENTE','N','2024-06-01',NULL,NULL,7,7,NULL,NULL,NULL),(4535,325,'58','58- Apresentar cópia do alvará do corpo de bombeiros válido.\r\n\r\nPRAZO: ANUALMENTE','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4536,325,'59','59- Apresentar alvará de funcionamento válido.\r\n\r\nPRAZO: ANUALMENTE','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4537,325,'60','60- Apresentar registro na ANP.\r\n\r\nPRAZO: 30 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4538,325,'61','61- Apresentar cópia do certificado de controle emitido pelo IBAMA.\r\n\r\nPRAZO: 30 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4539,325,'62','62- Apresentar anualmente relatório das condicionantes cumpridas.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4540,325,'63','63- Apresentar folha original de publicação, no diario oficial e jornal de circulação, comunicando a obtenção da licença ambiental.\r\n\r\nPRAZO: 30 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4541,325,'64','64- Deverá ser fixada uma placa informativa na entrada do empreendimento.\r\n\r\nPRAZO: 15 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4542,325,'66','\r\nCond. 66- Todas atividades que compõe ou que estejam dentro da área do posto deve ser regularizada. Qual seja, em vistoria foi informado que o lavador de carro foi terceirizado. Devendo o mesmo ser regularizado.\r\n','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4543,325,'67','67- Laudo emitido por empresa certificada pelo Instituto Nacional de Metrologia, Normatização e Qualidade Industrial – INMETRO, ou entidade por ele credenciada atestando que o posto possui todos os equipamentos e sistemas obrigatórios de acordo com sua Classe, conforme preconiza a NBR 13786/05 ou a que vier substitui-la, acompanhado de ART.\r\n\r\n\r\nPRAZO: 15 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4544,325,'68','68- Laudo emitido por empresa certificada pelo Instituto Nacional de Metrologia, Normatização e Qualidade Industrial – INMETRO, ou entidade por ele credenciada, atestando a conformidade quanto à fabricação, montagem e comissionamento dos equipamentos e sistemas de abastecimento subterrâneo de combustíveis, acompanhado de ART.\r\n\r\nPRAZO: 15 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4545,325,'69','69- Comprovar o tipo e ano de instalação de todos os tanques de combustíveis, por meio de notas fiscais de compra dos equipamentos e/ou apresentação de ART de instalação de todos os tanques de combustíveis.\r\n\r\nPRAZO: 15 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4546,325,'70','70- Apresentar relatório fotográfico das estruturas do empreendimento, devendo as imagens apresentadas estarem legíveis e identificadas. \r\n\r\na)Visão frontal do empreendimento – fachada\r\nb)Visão lateral e dos fundos do empreendimento;\r\nc)Visão da área de abastecimento, tanques e descarga, contemplando imagem das bombas;\r\nd)Visão do piso da área de abastecimento, tanques e descarga (mostrando em detalhe a canaleta de drenagem oleosa);\r\ne)Visão do separador de água e óleo (aberto);\r\nf)Visão da área do lavador (diversos ângulos que contemplem piso, rampa, cobertura e outros;\r\ng)Visão da área de troca de óleo (diversos ângulos que contemplem piso, rampa, cobertura e outros);\r\nh)Visão dos SUMPS de tanque de descarga de bombas;\r\ni)Imagem do ”Google Earth” com ralo de abrangência de no mínimo 100m no entorno do empreendimento.\r\n\r\n\r\nPRAZO: 30 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4547,325,'71','71- Laudo de profissional habilitado, acompanhado de ART atestando que a proteção acústica para o compressor, atende aos critérios da norma ABNT NBR 10151 ou a regulamento Municipal e que os ruídos foram avaliados, conforme a ABNT NBR 10152, ou normas que vier a sucederem.\r\n\r\nPRAZO: 15 DIAS','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4548,325,'72','72- Executar o Projeto de Educação Ambiental para os trabalhadores (PEAT) de 40 horas anualmente e apresentar as documentações comprobatórios (cronograma, lista de presença, relatório fotográfico, ART do profissional responsável pelo treinamento.\r\n\r\nPRAZO: ANUALMENTE','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4549,325,'73','73- Adotar junto a equipe de gerência de Educação Ambiental da SEMAG, Projeto de Educação Ambiental para execução no Município. Devendo o projeto ser retirado junto a Gerencia de Licenciamento Ambiental.','N','2024-01-01',NULL,NULL,7,7,NULL,NULL,NULL),(4559,322,'29','29- Realizar periodicamente limpeza e manutenção das câmaras de contenção da descarga de combustível, das bombas de abastecimento, unidade de filtragem e da câmara de acesso à boca-de-visita dos tanques, armazenando adequadamente os resíduos gerados. Apresentar relatório da realização da limpeza. \r\n\r\n- SEMESTRALMENTE -\r\n\r\n','N','2023-12-11',NULL,'2023-12-01',6,6,NULL,NULL,NULL),(4560,322,'33','33- Realizar treinamento com todos os funcionários da empresa, quanto à importância da proteção ambiental, mitigação dos impactos causados pela atividade e segregação dos resíduos gerados e sua destinação correta, principalmente os resíduos oleosos. O treinamento deverá contemplar, também as orientações listadas nas condicionantes desta licença. Deverá ser apresentado relatório fotográfico da execução e conteúdo de capacitação. \r\n\r\n- ANUALMENTE -','N','2024-10-11',NULL,'2024-09-11',6,6,NULL,NULL,NULL),(4561,327,'03','03- Realizar publicação em Impresa Oficial de acordo com o modelo contido no Anexo II do Decreto Municipal n° 519/2022.\r\n\r\n\r\nPRAZO: 15 DIAS','S','2023-12-20','2024-01-10',NULL,7,7,NULL,NULL,NULL),(4562,327,'09','09- A destinação final dos resíduos (lama abrasiva, restos de corte, cacos, dentre outros) deverá ser comprovada, por meio de recibo e/ou notas fiscais. A destinação de todos resíduos somente poderão ser encaminhadas á empresas devidamente licenciadas para á atividade, enviando a SECMAM as cópias das notas fiscais e/ou recibos de alienação ou contrato firmado com a empresa coletora, assim como cópia da licença ambiental da mesma.\r\n\r\nPRAZO: ANUAL','N','2024-11-20',NULL,'2024-10-01',7,7,NULL,NULL,NULL),(4563,327,'13','13- As águas residuárias, antes do descarte, deverão ser monitoradas quanto aos seguintes parâmetros: volume, pH,  alcalinidade, dureza, ferro soluvel, crmo, fenóis, cloretos, sódio, aluminio, os demais estabelecidos pela legislação vigente, quando constituintes dos insumos utilizados. Providenciar e encaminhar relatório apresentando os parâmetros antes do descarte das águas residuárias, caso o empreendimento faça o descarte.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4564,327,'16','16- A destinação dos mateirais recicláveis deverá ser priorizado áAssociação de Catadores do Municipio de Santa Maria de Jetibá - ASCA. Caso ocorrer.','N',NULL,NULL,NULL,7,7,NULL,NULL,NULL),(4570,329,'02','02 - Realizar a cada dois meses, a limpeza do Sistema Separador de Água e Óleo por meio de empresa licenciada para esta atividade. Os comprovantes deverão ser encaminhados à SEMMA.\r\n\r\n- ANUALMENTE - ','N','2024-01-30',NULL,'2023-12-30',8,8,NULL,NULL,NULL),(4571,329,'03','03 - Apresentar, anualmente, as renovações do Alvará de Licença emitido pelo Corpo de Bombeiros.\r\n\r\n- ANUALMENTE - ','N','2024-01-30',NULL,'2023-12-30',8,8,NULL,NULL,NULL),(4572,329,'04','04 - Realizar melhorias nas tampas das bocas de visita dos tanques, por meio da instalação de alças ou outra estrutura que torne a sua abertura mais fácil, para que a manutenção que deve ser constante aconteça com mais facilidade.  - APRESENTAR RELATÓRIO FOTOGRÁFICO - \r\n\r\nPrazo: 60 (sessenta) dias. ','N','2024-01-30',NULL,'2023-12-30',8,8,NULL,NULL,NULL),(4573,329,'05','05 - Manter as bocas de visita, de monitoramento, e de descarga selada, assim, como ps Sumps das bombas e do filtro de Diesel livres de qualquer acúmulo de líquidos. \r\n','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4574,329,'06','06 - Realizar manutenção nas canaletas existentes na área de descarga e na pista de abastecimento, de modo a remover os resíduos ali acumulados, deixando-as livres para o escoamento de efluentes em direção ao SSAO.  - APRESENTAR RELATÓRIO FOTOGRÁFICO - \r\n\r\nPrazo: 15 (quinze) dias. \r\n','N','2024-01-30',NULL,'2023-12-30',8,8,NULL,NULL,NULL),(4575,329,'07','07 - Realizar, semestralmente, a caracterização da qualidade do efluente oriundo dos Sistemas Separadores de Água e Óleo (SSAO), conforme Resolução CONAMA nº 430/2011. \r\n\r\n- Pontos Amostrados: ENTRADA e SAÍDA SSAO \r\n- Paramêtros: PH, SÓLIDOS SEDIMENTÁVEIS (MG/L), ÓLEOS E GRAXAS e SÓLIDOS SUSPENSOS. \r\n\r\n- PRAZO: Ficam estipulados os meses de MAIO e NOVEMBRO para entrega dos laudos - ','N','2024-05-30',NULL,'2024-04-30',8,8,NULL,NULL,NULL),(4576,329,'08','08 - Dar manutenção nas bocas de visita e nas de descarga selada de modo a retirar toda água acumulada, bem como identificar e sanar quaisquer avarias que a oxidação possa ter causado nos equipamentos por ela atingidos. Esse tipo de manutenção deve ser constante, a fim de evitar quaisquer danos aos equipamentos. - APRESENTAR RELATÓRIO FOTOGRÁFICO -\r\n\r\nPrazo: 15 (quinze) dias.  \r\n','N','2024-01-30',NULL,NULL,8,8,NULL,NULL,NULL),(4577,329,'09','09 - Apresentar portaria de Outroga, requerida junto a AGERH para lançamento de efluentes no Rio Fruteiras. \r\n\r\nPrazo: Fica estipulado o ano de 2025 para entrega. ','N','2025-01-30',NULL,'2024-12-30',8,8,NULL,NULL,NULL),(4578,329,'10','10 - Realizar e apresentar laudo relativo à integridade dos sistemas de armanezamento e distribuição de combustiveis (tanques e tubulações), emitido por empresa ou profissional habilitado e acompanhado da decida ART. Os testes deverão observar as recomendações da NBR nº 13.784/2014, ou a que vier substitui-lá, preenchendo-se o laudo de estanqueidade do SASC, conforme recomenda a NBR 13784:2014, ou a que vier substituí-lá. \r\n\r\nPRAZO: Os laudos devem ser feitos ANUALMENTE. Fica estipulado o mês de Dezembro, a começar de 2023. ','N','2023-12-30',NULL,'2023-11-30',8,8,NULL,NULL,NULL),(4579,329,'11','11 - Realizar e apresentar laudo relativo à integralidade dos sistemas de tubulação de pressão positiva - interligação entre as unidades de filtragem e abastecimento, emitido por profissional habilitado e empresa certificado INMETRO, acompanhado de devida ART. Os testes deverão observar as recomendações de NBR 13784:2014, ou a que vier a substituí-lá. \r\n\r\n\r\nPRAZO: Os laudos devem ser feitos ANUALMENTE. Fica estipulado o mês de Dezembro, a começar de 2023. ','N','2023-12-30',NULL,'2023-11-30',8,8,NULL,NULL,NULL),(4580,329,'12','12 - Realizar e apresentar laudo relativo à integralidade dos sistemas de tubulação de respiro, de descarga, retorno da unidade de filtragem e do eliminador de ar, emitido por profissional habilitado e empresa certificada pelo INMETRO, acompanhado da devia ART. Os testes e peridiocidade decerão observar as orientações da NBR 13784:2014, ou a que vier substituí-lá. \r\n\r\n\r\nPRAZO: Os laudos devem ser feitos ANUALMENTE. Fica estipulado o mês de Dezembro, a começar de 2023. ','N','2023-12-30',NULL,'2023-11-30',8,8,NULL,NULL,NULL),(4581,329,'13','13 - Realizar levantamento de passivos ambientais por VOC na área do empreendimento, seguindo os termos de Instrução Normativa do IEMA nº 02 de 22 de Janeiro de 2007, apresentando resultados à SEMMA acompanhados da devida ART de elaboração e execução dos serviços, emitida por profissional habilitado, observando qua as leituras deverão ser executadas a ccada 01 (um) metro perfurado, até 04 (quatro) metros de profundidade.  No caso de leituras possitivas, a investigação deverá prosseguir em profundudade até a ausência de valores mensurávéis de VOC ou até a ocorrência de três leituras consecutivas decrescentes, devendo-se, posteriormente, proceder à amostragem de solo e água subterranêa para analise laboratorial por cromotografia (Etapa 02) nos pontos de maior medição de VOC.\r\n\r\nPRAZO: 120 dias ','N','2024-03-30',NULL,'2024-02-28',8,8,NULL,NULL,NULL),(4582,329,'14','14 - Apresentar laudos de analises laboratoriais de amostras de solo e água envolvendo minimamente os seguintes parametros: BTEX e PAHs e TPHs, para amostras de SOLO, e BTEX e PAHS para amostras de ÁGUA, conforme prevê o inciso II do art. 14 da Resolução CONAMA nº 420/2009. OS pontos amostrados deverão ser definidos a partir do levantamento de passivos ambientais  por VOC e identificados pro meio de coordenadas geograficas no relatório. O laboratório selecionado deve possuir procedimentos especificos de controle de qualidade analitica e utilizar metodos de analise 8021, 8270, 8015 estabelecidos na versão mais recente do manual SW846 (Test Methods for Evaluating Solid Wastes Physical/Chemical Methods, EPA), ou que venham a ser posteriormente indicados ou atualizados pela EPA (Environmental Protection Agency - EUA). \r\n\r\nPRAZO: 120 dias ','N','2024-05-30',NULL,'2024-04-30',8,8,NULL,NULL,NULL),(4583,329,'15','15 - No que diz respeito ao item anterior, o relatório de análise deve especificar os procedimentos adotados para amostragem, trazer registro fotográfico da campanha de amostragem e uma tabela de valores dos resultados das análises laboratoriais das amostras, bem coo sua comparação com valores orientadores, apresentados na Decisão de Diretoria Nº 195-2005-E, de 23 de Novembro de 2005, CETESB-SP, ou a qye vier substituí-lá, além de cópias dos relatorios de análises cromatográficas assinadas por tecnicos de laboratório envolvido e cópia da cadeia de custódia. Deverá ser registrada claramente no relatório a constatação da presença de produto (combustível , óleo lubrificante) em fase livre e/ou residual e/ou dissolvida na água subterrânea ou nos interstícios do solo, assim como o(s) ponto(s) e profundidade(s) referentes, conforme determina a Instrução Normativa IEMA nº 02, de 22 de Janeiro de 2007; ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4584,329,'16','16 - Apresentar relatório anual, com dados mensais, de geração e destinação de todos os residuos gerados nos empreendimento, conforme tabela abaixo. \r\n\r\nMÊS/ TIPO DE RESÍDUO/GERAÇÃO (KG, T , M³, L ou UNIDADE)/CLASSE DO RESÍDUO/ACONDICIONAMENTO/DESTINAÇÃO\r\n\r\n\r\nPRAZO: Fica estituplado o mês para a entrega do relatório referente ao ano anterior a começar em 2024. \r\n\r\n- ANUALMENTE - ','N','2024-05-30',NULL,'2024-04-30',8,8,NULL,NULL,NULL),(4585,329,'17','17 - Os resíduos sólidos gerados no empreendimento (plástico, papel, papelão, metal, etc.) deverão ser armazenados e destinados adequadamente. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4586,329,'18','18 - Destinar os residuos oleosos (óleo usado, areia contaminada, filtros, trapos, sucatas metálicas contaminadas, etc) somente a empresas devidamente licenciadas para atividade, mantendo os comprovantes arquivados no no empreeendimento para apresentação à SEMMA, quando solicitado. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4587,329,'19','19 - A empresa não poderá encaminhar para a Coleta Pública Municipal os resíduos Classe I - Perigosos, tais como: trapos de tecidos, EPI\'s, plásticos, papelões, peças inutilizadas e sedimentos, impregnados com óleo e/ou tintas; vasilhames de produtos de pintura e assemelhados, devendo esses rediduos serem destinados e/ou comercializadaos com empresas licenciadas pelo Orgão Ambiental, mantendo arquivados os documentos que comprovem a efetiva comercialização. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4588,329,'20','20 - Fica a empresa obrigada a zelar pela higiene, segurança, proteção ambiental e aspecto visual da área, acondicionando para destinação adequada os lixos, sucatas, e outros resíduos gerados pela atividade, dando especial atenção aos materiais passiveis de reciclagem. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4589,329,'21','21 - É vedada a queima a céu aberto de material potencialmente poluídor.','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4590,329,'22','22 - Fica proibida toda e qualquer intervenção em Área de Preservação Permanente. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4591,329,'23 ','23 - No prazo de 60 (sessenta) dias, apresentar relatório fotográfico que comprove a colocação, na entrada da propriedade (à margem da estrada vicinal), de uma placa informativa, com fundo de fácil visualização e leitura, nas dimensões mínimas de 1,20 m X 0,80 m. \r\n\r\n\r\nPRAZO: 60 DIAS','N','2024-01-30',NULL,'2023-12-30',8,8,NULL,NULL,NULL),(4592,329,'24','24 - Apresentar folha original de publicação, tornando pública, a obtenção desta Licença, em jornal de grande circulação, no local de abrangencia da atividade licenciada e ainda no Diario Oficial do Estado. \r\n\r\nPRAZO: 30 dias.','N','2023-12-30',NULL,'2023-11-30',8,8,NULL,NULL,NULL),(4593,329,'25','25 - Apresentação obrigatória da Licença expedida pela SEMMA - Vargem Alta sempre que a atividade for vistoriada. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4594,329,'26','26 - Toda documentação apresentada em atendimento as exigências feitas pela SEMMA deverá mencionar explicitamente o numero da condicionante, do ofício, da notificação e/ou qualquer instrumento a que se refere. Os documentos deverão estar devidamente rubricados, asinado e em suas vias originais acompanhados da respectiva Anotação de Responsabilidade Técnica, quando couber. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4595,329,'27','27 - A contagem do prazo desta licença e das condicionantes acima se inicia a partir do recebimento da mesma. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4596,329,'28','28 - Requerer renovação desta licença 120 (cento e vinte) dias antes do vencimento. ','N','2027-07-30',NULL,'2027-06-30',8,8,NULL,NULL,NULL),(4597,329,'29','29 - O não cumprimento das condicionantes acima penalizará a empresa com imposição das penalidades de multa e/ou interdição/embargo das atividades/obras conforme a legislação pertinente, e ainda determinará a suspensão ou cassação da Licença. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4598,329,'30','30 - A construção, reforma, ampliação, instalação ou funcionamento dos estabelecimentos, obras ou serviços potencialemtne poluidores, contrariando as normas legais e regulamentadores pertinentes, constitui crime contra o meio ambiente, sujeito a pena de detenção de um a seis messes, nos termos do art. 60 da Lei 9.605/98.','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4599,330,'02','02 - APRESENTAR, NO PRAZO DE 30 DIAS, RELATÓRIO FOTOGRAFICO QUE COMPROVA A COLOCAÇÃO, NA ENTRADA DO EMPREENDIMENTO (COM FACE PARA VIA PÚBLICA), DE UMA PLACA INFORMATIVA COM FUNDO BRANCO, DE FÁCIL VISUALIZAÇÃO E LEITURA, NAS DIMENSÕES MINIMAS DE 120CM X 80CM, COM O SEGUINTE TEXTO: \r\n\r\nNOME: POSTO VILA ISABEL COMÉRCIO DE DERIVADOS DE PETRÓLEO LTDA \r\nLICENÇA PARA ATIVIDADE DE IMPACTO DETERMINADO Nº: 49/2022 EMITIDA PELA PREFEITURA MUNICIPAL DE CARIACICA \r\nPROCESSO LICENCIAMENTO AMBIENTAL Nº: 20693/2022\r\nFISCALIZAÇÃO: (27) 3354-5400 / (27) 3354-5411\r\nDATA RECEBIMENTO DA LICENÇA: 01/09/2022\r\nVALIDADE: 3650 DIAS ','N','2022-10-01',NULL,NULL,8,8,NULL,NULL,NULL),(4600,330,'03','03 - APRESENTAR FOLHA DA PUBLICAÇÃO NO DIARIO OFICIAL DO ESTADO E EM JORNAL DE GRANDE CIRCULAÇÃO, INFORMANDO A OBTENÇÃO DA LICENÇA AMBIENTAL. \r\n\r\nPRAZO: 30 DIAS ','N','2022-10-01',NULL,NULL,8,8,NULL,NULL,NULL),(4601,330,'04','04 - REQUERER RENOVAÇÃO DESTA LICENÇA 120 DIAS ANTES DO SEU VENCIMENTO.','N','2032-06-01',NULL,NULL,8,8,NULL,NULL,NULL),(4602,330,'05','05 - RENOVAR ALVARÁ DE LICENÇA DE CORPO DE BOMBEIROS MILITAR SEMPRE QUE NECESSARIO E MANTÊ-LO ARQUIVADO NO EMPREEENDIMENTO. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4603,330,'06','06 - RENOVAR ALVARÁ DE FUNCIONAMENTO DA PREFEITURA MUNICIPAL DE CARIACICA SMEPRE QUE NECESSARIO E MANTÊ-LO ARQUIVADO NO EMPREENDIMENTO.','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4604,330,'07','07 - TODA DOCUMENTAÇÃO A SER APRESENTADA EM ATENDIMETNO AO CUMPRIMENTO DE CONDICIONANTES DESTA LICENÇA AMBIENTAL DEVERÁ SEGUIR OS PRECEITOS ESTABELECIDOS PELA PORTARIA SEMDEC Nº 07, DE 30 DE JULHO DE 2019, OU A QUE VIER SUBSTITUÍ-LA. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4605,330,'08','08 - CASO SEJA VERIFICADA A NECESSIDADE, DURANTE TODO PERIODO DE VIGÊNCIA DESTA LICENÇA, A SEMDEC PODERÁ SOLICITAR A REALIZAÇÃO DE NOVOS ESTUDOS, ANÁLISES, ADEQUAÇÕES OU MELHORIAS QUE NÃO CONSTAM NESTA LICENÇA. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4606,330,'09','09 - CASO HAJA INTERESSE EM REALIZAR REFORMA, AMPLIAÇÃO, ALTERAÇÃO NOS PROJETOS E CRONOGRAMAS APRESENTAFOS OUS REALIZAR ATIVIDADES DIFERENTES DAS ESPECIFICADAS NESTA LLICENA, O  EMPREENDEDOR DEVERÁ COMUNICAR PRECIAMENTE À SEMDEC/SUBSECRETARIA DE MEIO AMBIENTE, QUE EXIGIRÁ OS DOCUMENTOS/PROJETOS COMPLEMENTARES PARA POSTERIOR AUTORIZAÇÃO.','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4607,330,'10','10 - EM CASO DE ENCERRAMENTO OU PARALISAÇÃO DAS ATIVIDADE ESPECIFICAS NESTA LICENÇA, A SEMDEC/SUBSECRETARIA DE MEIO AMBIENTE DEVERÁ SER PREVIAMENTE COMUNICADA, PARA ADOÇÃO DAS MEDICAS CABÍVEIS. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4608,330,'11','11 - A CONSTRUÇÃO, REFROMA, AMPLIAÇÃO, INSTALAÇÇAO OU FUNCIONAMENTO DE ESTABELECIMENTOS, OSBRAS OU SERVIÇOS POTENCIALMENTE POLUÍDORES, COTRARIANDO AS NORMAS LEGAIS E REGULARMENTE PERTINETES, CONSTITUI CRIME CONTRA O MEIO AMBIENTE. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4609,330,'12','12 - A OBTENÇAO DE LIENÇA NÃO EXIME O TITULAR DA APRESNETAÇÃO DE OUTROS DOCUMENTOS LEGAMENTE EXIGÍVEIS AOS DEMAIS ORGÃOS COMPETENTES, NÃO INIBE OU RESTRINGE A AÇÃO DOS DEMAIS ORGÃOS E INSTITUIÇÕES FISCALIZADORAS, NEM DESOBRIGA AA EMPRESA DA OBTENÇÃO DE AUTORIZAÇÕES, ANUÊNCIAS, LAUDOS, CERTIDÕES, CRETIFICADOS OU OUTROS DOCUMENTOS PREVISTOS NA LEGISLAÇÃO VIGENTE, SENDO SUA RESPONSABILIDADE A ADOÇÃO DE QUALQUER PROVIDÊNCIA NESSE SENTIDO. ESTA LICENÇA SE REFERE APENAS AOS ASPECTOS AMBIENTAIS DA ATIVIDADE EM QUESTÃO.','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4610,330,'13','13 - A SEMDEC NÃO POSSUI RESPONSABILIDADE TÉCNICA SOBRE OS PREJETOS DE SISTEMAS DE CONTROLE AMBIENTAL E PROGRAMAS APRESENTADOS, SENDO A EXECUÇÃO, OPERAÇÃO, COMPROVAÇÃO DE EFICIÊNCIA E/OU GERENCIAMENTO DOS MESMOS, DE INTEIRA RESPONSABILIDADE DO PRÓPIO EMPREENDEDOR E RESPONSÁVEIS TÉCNICOS.  ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4611,330,'14','14 - O NÃO CUMPRIMENTO DAS CONDICIONANTES PENALIZARÁ A EMPRESA COM A IMPOSIÇÃO DAS SANÇÕES PENAIS E ADMINISTRATIVAS PREVISTAS NA LEGISLAÇÃO AMBIENTAL VIGENTE. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4612,330,'15','15 - APRESENTAR E IMPLANTAR PROJETO DE ADEQUAÇÃO DA CALÇADA DO EMPREENDIMENTO, APROVADO PELA GERÊNCIA DE APROVAÇÃO DE PROJETOS DA PREFEITURA DE CARIACICA, CONFORME DISPOSTO NA LEI MUNICIPAL Nº 5.732/2017 E NA ABNT NBR Nº 9.050/2015.\r\n\r\nPRAZO PARA APRESENTAÇÃO DO PROJETO APROVADO 90 DIAS.\r\n\r\nPRAZO PARA APRESENTAÇÃO DO RELATÓRIO FOTOGRÁFICO DE IMPLANTAÇÃO DA CALÇADA: ANTES DO INÍCIO DA OPERAÇÃO DO EMPREENDIMENTO. ','N','2022-12-01',NULL,NULL,8,8,NULL,NULL,NULL),(4613,330,'16','16 - APRESENTAR COMPROVANTES DE DESTINAÇÃO DOS RESTOS DE CONSTRUÇÃO CIVIL REFERENTE À EDIFICAÇÕES EXISTENTES NO TERRENO. O COMPROVANTE DEVE ESTAR ACOMPANHANDO DA LICENÇA AMBIENTAL DA EMPRESA DE DESTINAÇÃO DOS RESÍDUOS. \r\n\r\nPRAZO: 120 DIAS\r\n','N','2023-01-01',NULL,NULL,8,8,NULL,NULL,NULL),(4614,330,'17','17 - FICA PROIBIDA QUALQUER INTERVENÇÃO EM FAIXA DE DOMÍNIO DE RODOVIA ESTATUAL OU FEDERAL (DER, DNIT, ETC) OU FAIXA DE SERVIDÃO/SEGURANÇA DE REDE DE ENERGIA ELÉTRICA (EDP, ESCELSA, FURNAS CENTRAIS ELÉTRICAS, ETC) SEM PRÉVIA AUTORIZAÇÃO DOS ÓRGÃOS RESPONSÁVEIS. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4615,330,'18','18 - FICA PROIBIDA QUALQUER INTERVENÇÃO EM ÁREA DE PRESERVAÇÃO PERMANENTE (APP).','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4616,330,'19','19 - COMUNICAR À SEMDEC/SUBSECRETARIA DE MEIO AMBIENTE O INICIO DAS ATIVIDADES. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4617,330,'20','20 - APRESENTAR ART DO PROFISISONAL RESPONSAVÉL PELA EXECUÇÃO DA OBRA. \r\n\r\nPRAZO: 30 DIAS APÓS O INICIO DA INSTALAÇÃO. ','N','2022-10-01',NULL,NULL,8,8,NULL,NULL,NULL),(4618,330,'21','21 - O EMPREENDIMENTO DEVERÁ POSSUIM LOCAL ESPECÍFICO, COM COLETORES IDENTIFICADOS E ADEQUADOS PARA O ACONDICIONAMENTO E ARMAZENAMENTO DE TODOS OS RESÍDUOS GERADOS NA FASE DE INSTALAÇÃO, IMCLUINDO OS RESÍDUOS DE CONSTRUÇÃO CIVIL.','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4619,330,'22','22 - NAS CAÇAMBAS ESTACIONÁRIAS DEVERÁ CONSTAR, DE FORMA LEGÍVEL E EM LOCAL VISÍVEL, O NOME DA EMPRESA COLETORA COM O NÚMERO DE SU CNPJ, O NÚMERO DA CAÇAMBA E O NÚMERO DA LICENÇA AMBIENTAL DA EMPRESA. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4620,330,'23','23 - MANTER ARQUIVADO NO EMPREENDIMENTO, PARA FINS DE FISCALIZAÇÃO, O MANIFESTO DE TRANSPORTE DE RESÍDUOS (MTR) DE TODOS OS RESÍDUOS GERADOS, ACOMPANHADO DA LICENÇA AMBIENTAL DA EMPRESA RESPONSAVÉL PELO TRANSPORTE E PELA DESTINAÇÃO FINAL. O MTR DEVERÁ CONTER NO MININO OS SEGUINTES DADOS: IDENTIFIAÇÃO DO RESÍDUO, CLASSIFICAÇÃO CONFORME A NORMA ABNT NBR 10.004, PESO OU VOLUME E DADOS DO GERADOR, DO TRANSPORTADOR E DO RESPONSÁVEL PELA DESTINAÇÃO FINAL. \r\n\r\n','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4621,330,'24','24 - OS RESÍDUOS DE CONSTRUÇÃO CIVIL DEVERÃO SER GERENCIADOS E DESTINADOS DE ACORDO COM CRITÉRIOS ESTABELECIDOS NA RESOLUÇÃO DO CONAMA Nº 307/2002 OU QUE VIER A SUBSTITUI-LA. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4622,330,'25','25 - OS RESÍDUOS CLASSE I - PERIGOSOS, OU POR ESTES CONTAMINADOS, DEVERÃO SER DESTINADOS EXCLUSIVAMENTE A EMPRESSAS LICENCIADAS AMBIENTALMENTE PARA TAL ATIVIDADE. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4623,330,'26','26 - O ARMAZENAMENTO DOS PRODUTOS QUIMICOS DEVERA CORRER EM LOCAL DOTADO DE IDENTIFICAÇÃO, COBERTURA, PISO IPERMEABILIZADO E BACIA DE CONTENÇÃO, RESPEITANDO AS INCOMPATIBILIDADES QUÍMICAS DOS PRODUTOS. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4624,330,'27','27 - O TRANSPORTE DE PRODUTOS DE ORIGEM MINERAL EM BRUTO (AREIA, BRITA, TERRA E SIMILARES) DEVERÁ SER REALIZADO POR MEIO DE VEICULOS DOTADOS DE SISTEMA DE PROTEÇÃO QUE IMPEÇA A DISOERSÃO DO MATERERIAL EM VIAS PÚBLICAS. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4625,330,'28','28 - EXECUTAR MEDIDAS QUE IMPEÇAM O CARREGAMENTO DE SEDIMENTOS E MATERIAIS PARA AS VIAS PUBLICAS, TERRENOS NO ENTRONO, REDES DE DRENAGEM, REDES COLETORAS DE ESGOTO, POSSIVEIS AREAS NATURAIS E DEMAIS ÁREAS DE INFLUÊNCIA DIRETA. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4626,330,'29','29 - EXECUTAR MEDIDAS QUE GARANTAM, DE FORMA EFICIENTE, O CONTROLE DE MISSÃO DE POEIRA E MATERIAL PARTICULADO EMITIDOS DURANTE A EXECUÇÃO DA OBRA. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4627,330,'30','30 - OS RUÍDOS GERADOS DEVERÃO ATENDER AOS LIMITES ESTABELECIDOS PELAS NORMAS E LEGISLAÇÃO VIGENTE. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4628,330,'31','31 - EVITAR EVENTUAIS TRANSTORNOS AOS VIZINHOS E AO MEIO AMBIENTE, PROVOCADOS POR QUALQUER TIPO DE POLUIÇÃO. ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4629,330,'32','32 - CASO ESTEJA PREVISTA A INSTALAÇÃO DE SISTEMA DE TRATAMENTO DE EFLUENTES DOMÉSTICOS, IMPLANTÁ-LO CONFORME O PROJETO APRESENTADO. \r\n\r\nPRAZO: ANTES DO INICIO DA OPERAÇÃO ','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4630,330,'33 ss','33 - CASO HAJA TERRAPLANAGEM (CORTE E/OU ATERRO): \r\n\r\n33.1 - DELIMITAR OS VÉRTICES DA ÁREA A SER TERRAPLANADA, APRESENTAR O RELATÓRIO FOTOGRÁFICO COMPROBATÓRIO. \r\nPRAZO PARA APRESENTAÇÃO DO RELATÓRIO: ANTES DO INICIO DA TERRAPLANAGEM. \r\n\r\n33.2 - EXECUTAR A ESTABILIZAÇÃO DOS TALUDES GERADOS CONFORME PROJETO APRESENTADO. \r\nPRAZO: ANTES DO INCIO DA OPERAÇÃO DO EMPREENDIMENTO. \r\n\r\n33.3 - EM CASO DE CORTE, FICA PROIBIDA A COMERCIALIZAÇÃO DA TERRA EXCEDENTE, SENDO PERMITIDO SEU USO SOMENTE NO PRÓPRIO EMPREENDIMENTO OU EM ÁREA LICENCIADA PARA RECEBIMENTO DA MESMA, DEVENDO SER APRESENTADO, ANTES DO INICO DA TERRAPLANAGEM, CONTRATO DE DOAÇÃO, NO QUAL DEVERÁ CONSTAR. \r\n\r\n\r\n33.3.1 - COMO DOADOR O TITULAR DA PRESENTE LICENÇA E COMO DONATÁRIO O TITULAR DA LICENÇA AMBIENTAL DA ÁREA RECEPTORA. \r\n\r\n33.3.2 - O VOLUME (EM M³) DA QUANTIDADE DE TERRA A SER DOADA. \r\n\r\n33.3.3 - O NÚMERO DA PRESENTE LICENÇA AMBIENTAL E O NÚMERO DA LICENÇA AMBIENTAL DA ÁREA RECEPTORA. \r\n\r\n33.3.4 - CÓPIA DA LICENÇA AMBIENTAL DA ÁREA RECEPTORA. \r\n\r\n33.3.5 - RECONHECIMENTO DE FIRMA EM CARTÓRIO DO DOADOR E DO DONATÁRIO. \r\n\r\n33.4 - EM CASO DE ATERRO E NECESSIDADE DE ÁREA DE EMPRÉSTIMO, APRESENTAR, ANTES DO INICIO DA TERRAPLANAGEM, CONTRATO DE RECEBIMENTO DA TERRA, O QUAL DEVERÁ CONSTAR: \r\n\r\n33.4.1 - COMO DONATÁRIO DO TITULAR DA PRESENTE LICENÇA E COMO DOADOR O TITULO DA LICENÇA DA ÁREA QUE FORNECERÁ A TERRA. \r\n\r\n33.4.2 - O VOLUME (EM M³) DA QUANTIDADE DE TERRA A SER RECEBIDA. \r\n\r\n33.4.3 - O NÚMERO DA PRESENTE LICENÇA AMBIENTAL E O NÚMERO DA LICENÇA DA ÁREA DOADORA. \r\n\r\n33.4.4 - CÓPIA DA LICENÇA AMBIENTAL DA ÁREA DOADORA. \r\n\r\n33.4.5 - RECONHECIMENTO DE FIRMA EM CATORIO DO DOADOR E DO DONATÁRIO. \r\n\r\n33.5 - O ATERRO DEVERÁ SER REALIZADO EXCLUSIVAMENTE COM MATERIAL TERROSO NÃO CONTAMINADO, SENDO PROIBIDO O USO DE OUTROS MATERIAIS (ESCÓRIA DE ACIARIA, RESÍDUOS DE CONTRUÇÃO CIVIL, RESÍDUOS SÓLIDOS URBANOS, RESÍDUOS HOSPITALARES, ETC)\r\n\r\n33.6 - VERIFICANDO-SE A EXISTÊNCIA DE OUTROS TIPOS DE MATERIAIS (AREIA, ROCHAS, ETC) NÃO PREVISTOS NO PROJETO DE TERRAPLANAGEM APRESENTADO NO REQUERIMENTO DE LICENÇA, A OBRA DEVERÁ SER PARALISADA E A SEMDEC DEVERÁ SER COMUNICADA PARA QUE AS MEDIDAS DE CONTROLE NECESSARIAS SEJAM EXIGIDAS. \r\n\r\n','N',NULL,NULL,NULL,8,8,NULL,NULL,NULL),(4631,226,'16','16- Apresentar o Alvará de Bombeiro válido.\r\n\r\nPrazo: anualmente','N','2024-07-18',NULL,NULL,7,7,NULL,NULL,NULL),(4632,330,'34 SS','34. CANTEIROS DE OBRAS:\r\n\r\n34.1. CASO HAJA CONTRATAÇÃO DE BANHEIROS QUIMICOS, MANTER ARQUIVADOS NO EMPREENDIMENTO, PARA FINS DE FISCALIZAÇÃO, O MANIFETO DE TRANSPORTE DE RESÍDUOS (MTR) DOS RSÍDUOS GERADOS PELOS BRASILEIROS, ACOMPANHADO DAS LICENÇAS AMBIENTAIS DAS EMPRESAS RESPONSÁVEIS PELO TRASNPORTE E DESTINAÇÃO FINAL. OS MANIFESTOS DEVERÃO CONTER O TIPO DE EFLUENTE/RESÍDUOS, A QUANTIDADE/VOLUME RECOLHIDO, DATA E LOCAL DA COLETA, DADOS DO GERADOR, DO TRANSPORTADOR E DO RESPONSÁVEL PELA DESTINAÇÃO FINAL;\r\n\r\n34.2. CASO HAJA UTILIZAÇÃO DE SISTEMA DE TRATAMENTO DE EFLUENTES SANITÁRIOS, MANTER ARQUIVADOS NO EMPREENDIMENTO, PARA FINS DE FISCALIZAÇÃO, OS COMPROVANTES DE DESTINAÇÃO DOS RESÍDUOS E EFLUENTES GERADOS, ACOMPANHADO DA LICENÇA AMBIENTAL DA EMPRESA COLETORA. OS COMPROVANTES DEVERÃO CONTER O TIPO DE EFLUENTE/RESÍDUO, A QUANTIDADE/VOLUME RECOLHIDO, DATA E LOCAL DA COLETA, DADOS DO GERADOR, DO TRASNPORTADOR E DO RESPONSÁVEL PELA DESTINAÇÃO FINAL;\r\n\r\n34.3. A EXACUÇÃO DE ATIVIDADES DE APOIO (MANUTENÇÃO, ABASTECIMENTO, LAVAGEM DE VEÍCULOS E SIMILARES) FICA CONDICIONADA À PRÉVIA COMUNICAÇÃO À SEMDEC E APRESENTAÇÃO DE DOCUMENTOS E PROJETOS ACOMPANHADOS DE ANOTAÇÃO FR RESPONSABILIDADE TÉCNICA (ART) PARA POSTERIOR AUTORIZAÇÃO DESTA SECRETARIA; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4633,330,'35','35. ADQUIRIR TAMQUES SUBTERRÂNEOS DE PAREDE DUPLA JAQUETADOS (PARA COMBUSTÍVEL E, SE FOR O CASO, PARA ÓLEO LUBRIFICANTE USADO), OS QUAIS DEVEM PERMITIR O MONITORAMENTO INTERSTICIAL, COM O PROPOSITO DE DETCÇÃOO DE EVENTUAIS VAZAMENTOS E EVITAR A CONTAMINAÇÃO DO SOLO, FABRICADOS DE ACORDO COM A NORMA DA ABNT NBR N° 16161, OU A QUE VIER SUBSTITUI-LA. APRESENTAR AS NOTAS FISCAIS DOS TANQUES E SUAS FICHAS DE ACOMPANHAMENTO. AS NOTAS FISCAIS DEVERÃO ESTAR COM O NOME E O EDEREÇO DO EMPRRENDIMENTO OBJETO DESTA LICENÇA AMBIENTAL.\r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO; ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4634,330,'36','36. ADQUIRIR TODOS OS EQUIPAMENTOS OBRIGATÓRIOS DO SISTEMA D ARMAZENAMENTO SUBTERRÂNEO DE COMBUSTÍVEIS (SASC) PARA POSTOS CLASSE 3, CONFORME PRECONIZA A NORMA ABNT NBR N° 13786, OU A QUE VIER SUBSTITUÍ-LA. APRESENTAR AS NOTAS FISCAIS DOS EQUIPAMENTOS OU NOTA FISCAL EMITIDA PELO INSTALADOR, DESDE QUE CONSTE A IDENTIFICAÇÃO DO FABRICANTE, O MODELO E NÚMERO DE SÉRIE. AS NOTAS FISCAIS DEVEREÃO ESTAR COM O NOME E O ENDEREÇO DO EMPREENDIMENTO OBJETO DESTA LICENÇA AMBIENTAL. \r\n\r\nPRAZO: ANTES  DO INÍCIO DA OPERAÇÃO. ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4635,330,'37','37. INSTALAR OS TANQUES E TODOS OS EQUIPAMENTOS DO SISTEMA DE ARMAZENAMENTO SUBTERRÂNEO DE COMBUSTÍVEIS (SASC) CONFORME AS DIRETRIZES DA NORMA ABNT NBR N° 16764, OU A QUE VIER SUBSTITUÍ-LA. ESSA ATIVIDADE DEVERÁ SER REALIZADA POR EMPRSA CERTIFICADA PELO INMETRO, OU ENNTIDADE POR ELE CREDENCIADA, CONFORME DETERMINADO PELA PORTARIA DO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, CONFORME DETERMINADO PELA PORTARIA DO IMETRO N° 009/2011, OU A QUE VIER SUBSTITUI-LA. APRESENTAR RELATÓRIO DESCRITIVO E FOTOGRÁFICO DA INSTALAÇÃO DOS TANQUES E EQUIPAMENTOS, ART DE EXECUÇÃO DO PROFISSIONAL RESPONSÁVEL PELA INSTALAÇÃO E DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL DO INMETRO. \r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4636,330,'38','38. APRESENTAR LAUDO EMITIDO POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, ATESTANDO A CONFROMIDADE QUANTO A FABRICAÇÃO, MONTAGEM, INSTAÇÃO, COMISSIONAMENTO E PRESENÇA DE TODOS OS EQUIPAMENTOS OBRIGATÓRIOS PARA POSTOS CLASSE 3 (TANQUES DE PAREDE DUPLA, MONITORAMENTO INTERSTICIAL, CÂMARAS DE CONTENÇÃO ETC.), EXIGIDOS PLA NORMA DA ABNT NBR N° 13786, OU A QUE VIER SUBSTITUÍ-LA, E LEGISLAÇÃO VIGENTE. O LAUDO DEVERÁ DESCREVER TAMBÉM O MODELO DE CADA EQUIPAMENTO E ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL E DE DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL DO INMETRO. \r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO. ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4637,330,'39','39. REALIZAR ENSAIO DE ESTANQUEIDADE DOS SISTEMAS DE ARMAZENAMENTO E DISTRIBUIÇÃO DE COMBUSTÍVEIS (TANQUES DE COMBUSTÍVEIS E DE ÓLEO LUBRIFICANTE USADO, TUBULAÇÕES ETC.) A SER REALIZADO POR PROFISSIONAL DE NÍVEL SUPERIOR HABILITADO E EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, E APRESENTAR O LAUDO. OS TESTES DEVERÃO OBSERVAR AS RECOMENDAÇÕES DA NORMA ABNT NBR N° 13.784, OU A QUE VIER SUBSTITUI-LA, PREENCHENDO-SE O LAUDO DE ESTANQUEIDADE DOS SISTEMAS CONFORME A REFERIDA NORMA. O LAUDO DEVE ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL E DE DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL PELO INMETRO. \r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4638,330,'40','40. CASO HAJA INSTALAÇÃO DE SISTEMA DE ABASTECIMENTO DE GÁS NATURAL VEICULAR (GNV), APRESENTAR ART DE PROJETO E DE EXECUÇÃO DAS INSTALAÇÕES DE GNV, CONFORME A NORMA DA ABNT NBR N° 12236. \r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO;\r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4639,330,'41','41. APRESENTAR LAUDO EMITIDO POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, ATESTANDO A CONFORMIDADE QUANTO AO COMISSIONAMENTO DO SISTEMA DE ABASTECIMENTO DE GÁS NATURAL VEICULAR, CONFORME DETERMINADO PELA PORTARIA DO INMETRO N° 111/2005. O LAUDO DEVERÁ ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL E DE DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL NO INMETRO. \r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4640,330,'42','42. OBTER A APRESENTAR O ALVARÁ DE LICENÇA DO CORPO DE BOMBEIROS MILITAR QUE CONTEMPLE TODA A ÁREA E ATIVIDADES REALIZADAS PELO EMPREENDIMENTO. \r\n\r\nPRAZO: ANTES DO INÍCIO DA OPERAÇÃO; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4641,330,'43','43. CASO SEJA NECESSÁRIO O LANÇAMENTO DE EFLUENTES NÃO DOMÉSTICOS NA REDE COLETORA DE ESGOTO, APRESENTAR ANUÊNCIA DA CESAN; ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4642,330,'44','44. DEFINIR LOCAL ESPECÍFICO COM RECIPIENTES IDENTIFICADOS E ADEQUADOS PARA O ACONDICIONAMENTO E ARMAZENAMENTO DE TODOS OS RESÍDUOS GERADOS (CLASSE I E II), QUE SEJA DOTADO DE IDENTIFICAÇÃO, COBERTURA, PISO IMPERMEABILIZADO E BACA DE CONTENÇÃO (BACIA PARA RESÍDUOS LÍQUIDOS), SEGUINDO OS PRECEITOS DAS NORMAS ABNT NBR 10.004, 11.174 E 1.235, OU AS QUE VIEREM SUBSTITUI-LAS. APRESENTAR RELATÓRIO FOTOGRÁFICO COMPROBATÓRIO. \r\n\r\nPRAZO: 90 (NOVENTA) DIAS; \r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4643,330,'45','45. MANTER A CORRETA SEGREGAÇÃO, IDENTIFICAÇÃO, ACONDICIONAMENTO, ARMAZENAMENTO E DESTINAÇÃO FINAL DE TODOS OS RESÍDUOS GERADOS PELO EMPREENDIMENTO, RESPEITANDO A CLASSIFICAÇÃO DE CADA UM, CONFORME AS NORMAS E DISPOSITIVOS LEGAIS VIGENTES; ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4644,330,'46','46. APRESENTAR, ANUALMENTE, RELATÓRIO DE MOVIMENTAÇÃO DE TODOS OS RESÍDUOS GERADOS (ESTOPAS, ÓLEO LUBRIFICANTE, BORRA DO SSAO ETC.), CONTENDO NO MÍNIMO OS SEGUINTES DADOS: IDENTIFICAÇÃO DO RESÍDUO, FONTE DE GERAÇÃO, QUANTIDADE, FORMAS DE ACONDICIONAMENTO E ARMAZENAMENTO E DESTINAÇÃO FINAL. OS COMPROVANTES DA DESTINAÇÃO DOS RESÍDUOS A EMPRESAS LICENCIADAS DEVERÃO SER ARQUIVADOS NA EMPRESA PARA FINS DE FISCALIZAÇÃO, JUNTAMENTE COM A LICENÇA AMBIENTAL DA EMPRESA COLETORA, NÃO SENDO NECESSÁRIO APRESENTÁ-LOS. \r\n\r\nPRAZO: 90 (NOVENTA) DIAS; \r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4645,330,'47','47. CASO NA LOCALIDADE HAJA REDE COLETORA DE ESGOTO, APRESENTAR DOCUMENTO DA CESAN QUE COMPROVE A INTERLIGAÇÃO DOS EFLUENTES À REDE. CASO OS EFLUENTES AINDA NÃO ESTEJAM LIGADOS À REDE, REALIZAR A LIGAÇÃO E APRESENTAR O DOCUMENTO COMPROBATÓRIO. \r\n\r\nPRAZO: 90 (NOVENTA) DIAS;\r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4646,330,'48','48. CASO A LOCALIDADE NÃO CONTE COM REDE COLETORA DE ESGOTO E NÃO HAJA SISTEMA DE TRATAMENTO DE EFLUENTES DOMÉSTICO IMPLANTADO NO EMPREENDIMENTO, APRESENTAR E IMPLANTAR PROJETO DE SISTEMA DE TRATAMENTO. NO PROJETO DEVERÁ CONSTAR O DIMENSIONAMENTO DO SISTEMA, AS UNIDADES DE TRATAMENTO, OS PONTOS DE GERAÇÃO E LANÇAMENTO E TAMPAS DE INSPEÇÃO QUE GARANTAM ACESSO ADEQUADO PARA LIMPEZA E VISTORIA. O PROJETO DEVERÁ ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL PELA SUA ELABORAÇÃO E EXECUÇÃO. \r\n\r\nPRAZO: 90 (NOVENTA) DIAS PARA APRESENTAÇÃO DO PROJETO E 120 (CENTO E VINTE) DIAS PARA APRESENTAÇÃO DO RELATÓRIO FOTOGRÁFICO COMPROBATÓRIO DA INSTALAÇÃO DO SISTEMA; \r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4647,330,'49 SS','49. CASO HAJA SISTEMA DE TRATAMENTO DE EFLUENTES DOMÉSTICOS: \r\n\r\n49.1. REALIZAR LIMPEZA E MANUTENÇÃO PERIÓDICA NO SISTEMA, A FIM DE MANTER SUA EFICIÊNCIA, E APRESENTAR, ANUALMENTE, OS COMPROVANTES DA REALIZAÇÃO DO SERVIÇO POR EMPRESA LICENCIADA. \r\nPRAZO PARA A PRIMEIRA APRESENTAÇÃO: 90 (NOVENTA) DIAS; ANUALMENTE.\r\n\r\n49.2. REALIZAR, ANUALMENTE, CARACTERIZAÇÃO FÍSICO-QUÍMICA DO EFLUENTE, A FIM DE VERIFICAR A EFICIÊNCIA DO SISTEMA, POR MEIO DA INVESTIGAÇÃO DOS PARÂMETROS PH, TEMPERATURA, MATERIAIS SEDIMENTÁVEIS, SÓLIDOS SUSPENSOS, DBO5-20, ÓLEOS E GRAXAS (ÓLEOS MINERAIS, ÓLEOS VEGETAIS E GORDURAS ANIMAIS), MATERIAIS FLUTUANTES, SURFACTANTES, TURBIDEZ, NITROGÊNIO AMONIACAL TOTAL E OXIGÊNIO DISSOLVIDO, CONDUZINDO A AMOSTRAGEM SEGUNDO AS ORIENTAÇÕES CONTIDAS NO STANDARD METHODS FOR THE EXAMINATION OF WATER AND WASTERWATER (EDIÇÃO ATUALIZADA). \r\nPRAZO PARA ENTREGA DO PRIMEIRO RELATÓRIO: 270 (DUZENTOS E SETENTA) DIAS:\r\n\r\n49.2.1. A COLETA DA AMOSTRA DEVERÁ SER REALIZADA POR TÉCNICO DA EMPRESA CONTRATADA PARA REALIZAR A ANÁLISE; \r\n\r\n49.2.2. DEVERÃO SER COLETADAS DUAS AMOSTRAS, UMA NA ENTRADA E OUTRA NA SAÍDA DO SISTEMA DE TRATAMENTO; \r\n\r\n49.2.3. O RELATÓRIO DEVERÁ POSSUIR CADEIA DE CUSTÓDIA E REGISTRO FOTOGRÁFICO DOS PONTOS DE AMOSTRAGEM; \r\n\r\n49.2.4. TODOS OS LAUDOS DEVERÃO POSSUIR IDENTIFICAÇÃO E ASSINATURA DOS TÉCNICOS RESPONSÁVEIS PELA COLETA E PELA ANÁLISE, FUNÇÃO DE CADA UM E O NÚMERO DA ART, QUANDO APLICÁVEL; \r\n\r\n49.2.5. O EMPREENDIMENTO DEVERÁ ACOMPANHAR OS RESULTADOS E, CASO ALGUM DOS PARÂMETROS APRESENTE VALORES ACIMA DO PERMITIDO PELA LEGISLAÇÃO VIGENTE, DEVERÁ IMEDIATAMENTE ADOTAR MEDIDAS PARA SANAS OS PROBLEMAS, COMUNICANDO O OCORRIDO A ESTAR SUBSECRETARIA DE MEIO AMBIENTE. \r\n\r\n49.3. QUE NÃO ESTEJA CORRETAMENTE DIMENSIONADO, NÃO POSSUA AS UNIDADES DE TRATAMENTO NECESSÁRIAS OU NÃO ATENDA ÀS NORMAS TÉCNICAS VIGENTES, DEVERÁ SER APRESENTADO E IMPLANTADO PROJETO DE ADEQUAÇÃO DO SISTEMA EXISTENTE. NO PROJETO DEVERÁ CONSTAR O DIMENSIONAMENTO DO SISTEMA, AS UNIDADES DE TRATAMENTO, OS PONTOS DE GERAÇÃO E LANÇAMENTO E TAMPAS DE INSPEÇÃO DE GARANTAM ACESSO ADEQUADO PARA LIMPEZA E VISTORIA. O PROJETO DEVERÁ ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL PELA SUA ELABORAÇÃO E EXECUÇÃO. \r\nPRAZO: 90 (NOVENTA) DIAS PARA APRESENTAÇÃO DO PROJETO E 120 (CENTO E VINTE) DIAS PARA APRESENTAÇÃO DO RELATÓRIO FOTOGRÁFICO COMPROBATÓRIO DA ADEQUAÇÃO DO SISTEMA; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4648,330,'50','50. CASO NÃO HAJA SISTEMA DE TRATAMENTO DE EFLUENTES OLEOSOS IMPLANTADOS NO EMPREENDIMENTO PARA RECEBER OS EFLUENTES ORIUNDOS DAS CANALETAS DE DRENAGEM OLEOSA, APRESENTAR E IMPLANTAR PROJETO PARA SISTEMA DE TRATAMENTO DE EFLUENTES OLEOSOS. NO PROJETO DEVERÁ CONSTAR O DIMENSIONAMENTO DO SISTEMA, AS UNIDADES DE TRATAMENTO, OS PONTOS DE GERAÇÃO E LANÇAMENTO E TAMPAS DE INSPEÇÃO QUE GARANTAM ACESSO ADEQUADO PARA LIMPEZA E VISTORIA. O PROJETO DEVERÁ ESTAR ACOMPANHADO NA ART DO PROFISSIONAL RESPONSÁVEL PELA SUA ELABORAÇÃO E EXECUÇÃO. \r\n\r\nPRAZO: 90 (NOVENTA) DIAS PARA APRESENTAÇÃO DO PROJETO E 120 (CENTO E VINTE) DIAS PARA APRESENTAÇÃO DO RELATÓRIO FOTOGRÁFICO COMPROBATÓRIO DA INSTALAÇÃO DO SISTEMA; \r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4649,330,'51 SS','51. CASO HAJA SISTEMA DE TRATAMENTO DE EFLUENTES OLEOSOS:\r\n51.1. REALIZAR LIMPEZA E MANUTENÇÃO PERIÓDICA NO SISTEMA, A FIM DE MANTER A SUA EFICIÊNCIA E APRESENTAR, ANUALMENTE, COMPROVANTES DA REALIZAÇÃO DO SERVIÇO POR EMPRESA LICENCIADA. OS RESÍDUOS GERADOS DEVEM SER ARMAZENADOS ADEQUADAMENTE, PARA POSTERIOR DESTINAÇÃO A EMPRESAS LICENCIADAS. \r\nPRAZO PARA A PRIMEIRA APRESENTAÇÃO: 90 (NOVENTA) DIAS; \r\n\r\n51.2. REALIZAR, ANUALMENTE, CARACTERIZAÇÃO FÍSICO-QUÍMICA DOS EFLUENTES GERADOS, A FIM DE VERIFICAR SUA EFICIÊNCIA, POR MEIO DA INVESTIGAÇÃO DOS PARÂMETROS PH, TEMPERATURA, MATERIAIS SEDIMENTÁVEIS, ÓLEOS E GRAXAS (ÓLEOS MINERAS, ÓLEOS VEGETAIS E GORDURAS ANIMAIS), MATERIAIS FLUTUANTES, DBO5-20, SÓLIDOS SUSPENSOS, SURFACTANTES, TURBIDEZ, NITROGÊNIO AMONIACAL TOTAL E OXIGÊNIO DISSOLVIDO, CONDUZINDO A AMOSTRAGEM SEGUNDO AS ORIENTAÇÕES CONTIDAS NO STANDARD METHODS FOR THE EXAMINATION OF WATER AND WASTEWATER (EDIÇÃO ATUALIZADA). PRAZO PARA ENTREGA DO PRIMEIRO RELATÓRIO: 90 (NOVENTA) DIAS APÓS O INÍCIO DA OPERAÇÃO; \r\n\r\n51.2.1. A COLETA DA AMOSTRA DEVERÁ SER REALIZADA POR TÉCNICO DA EMPRESA CONTRATADA PARA REALIZAR A ANÁLISE; \r\n\r\n51.2.2. DEVERÃO SER COLETADAS DUAS AMOSTRAS, UMA NA ENTRADA E OUTRA NA SAÍDA DO SISTEMA DE TRATAMENTO; \r\n\r\n51.2.3. O RELATÓRIO DA ANÁLISE DEVERÁ POSSUIR CADEIA DE CUSTÓDIA E REGISTRO FOTOGRÁFICO DOS PONTOS DE AMOSTRAGEM; \r\n\r\n51.2.4. TODOS OS LAUDOS DEVERÃO POSSUIR IDENTIFICAÇÃO E ASSINATURA DOS TÉCNICOS RESPONSÁVEIS PELA COLETA E PELA ANÁLISE, FUNÇÃO DE CADA UM E O NÚMERO DA ART, QUANDO APLICÁVEL; \r\n\r\n51.2.5. O EMPREENDIMENTO DEVERÁ ACOMPANHAR OS RESULTADOS E, CASO ALGUM DOS PARÂMETROS APRESENTE VALORES ACIMA DO PERMITIDO PELA LEGISLAÇÃO VIGENTE, DEVERÁ IMEDIATAMENTE PARALISAR A ATIVIDADE ATÉ QUE SEJAM SANADOS OS PROBLEMAS, COMUNICANDO O OCORRIDO A ESTA SUBSECRETARIA DO MEIO AMBIENTE. \r\n\r\n51.3. QUE NÃO ESTEJA CORRETAMENTE DIMENSIONADO, NÃO POSSUA AS UNIDADES DE TRATAMENTO NECESSÁRIAS OU NÃO ATENDA ÀS NORMAS TÉCNICAS VIGENTES, DEVERÁ SER APRESENTADO E IMPLANTADO PROJETO DE ADEQUAÇÃO DO SISTEMA EXISTENTE. NO PROJETO DEVERÁ CONSTAR O DIMENSIONAMENTO DO SISTEMA, AS UNIDADES DE TRATAMENTO, OS PONTOS DE GERAÇÃO E LANÇAMENTO E TAMPAS DE INSPEÇÃO QUE GARANTAM ACESSO ADEQUADO PARA LIMPEZA E VISTORIA. O PROJETO DEVERÁ ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL PELA SUA ELABORAÇÃO E EXECUÇÃO. \r\nPRAZO: 90 (NOVENTA) DIAS PARA APRESENTAÇÃO DO PROJETO E 120 (CENTO E VINTE) DIAS PARA APRESENTAÇÃO DO RELATÓRIO FOTOGRÁFICO COMPROBATÓRIO DA ADEQUAÇÃO DO SISTEMA; \r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4650,330,'52','52. APRESENTAR, A CADA QUATRO ANOS, LAUDO TÉCNICO RELATIVO A ESTANQUEIDADE DOS SISTEMAS DE ARMAZENAMENTO E DISTRIBUIÇÃO DE COMBUSTÍVEIS (TANQUES, TUBULAÇÕES ETC.) E DO TANQUE SUBTERRÂNEO DE ÓLEO LUBRIFICANTE USADO (SE HOUVER), EMITIDO POR PROFISSIONAL DE NÍVEL SUPERIOR HABILITADO E EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA. OS TESTES DEVERÃO OBSERVAR AS RECOMENDAÇÕES DA NORMA ABNT NBR N° 13.784, OU A QUE VIER SUBSTITUI-LA, PREENCHENDO-SE O LAUDO DE ESTANQUEIDADE DOS SISTEMAS CONFORME A REFERIDA NORMA. O LAUDO DEVE ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL E DE DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL NO INMETRO. \r\n\r\nPRAZO PARA A PRIMEIRA APRESENTAÇÃO: 90 (NOVENTA) DIAS; \r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4651,330,'53','53. CASO HAJA GÁS NATURAL VEICULAR (GNV), APRESENTAR, ANUALMENTE, LAUDO DE ENSAIO DAS CONDIÇÕES DE INTEGRIDADE DE TODAS AS INSTALAÇÕES DE GNV (VASOS, TUBULAÇÕES ETC.), DE ACORDO COM A NORMA DA ABNT NBR N° 12.236, OU A QUE VIER SUBSTITUI-LA, ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL. \r\n\r\nPRAZO PARA A PRIMEIRA APRESENTAÇÃO: 90 (NOVENTA) DIAS;\r\n','N','2022-12-01',NULL,NULL,9,9,NULL,NULL,NULL),(4652,330,'54','54. REALIZAR LIMPEZA E MANUTENÇÃO PERIÓDICA DAS CÂMARAS DE CONTENÇÃO DAS UNIDADES DE ABASTECIMENTO, DAS UNIDADES DE FILTRAGEM DE ÓLEO DIESEL E DAS BOCAS DE VISITA, DESCARGA E MONITORAMENTO DOS TANQUES; ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4653,330,'55','55. REALIZAR CONSTANTE MANUTENÇÃO NO PISO DAS ÁREAS DE ABASTECIMENTO E DESCARGA DE COMBUSTÍVEIS, DE MODO A MANTÊ-LO IMPERMEABILIZADO E IMPEDINDO A CONTAMINAÇÃO DO SOLO; ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4654,330,'56','56. SEGUIR AS EXIGÊNCIAS DA LEI ESTADUAL N° 10.393/2015, OU A QUE VIER SUBSTITUÍ-LA, QUANDO ÀS REGRAS DE ABASTECIMENTO DE VEÍCULOS; ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4655,330,'57','57. MANTER ARQUIVADO NO EMPREENDIMENTO AS NORMAS FISCAIS DE COMPRA DE TODOS OS EQUIPAMENTOS UTILIZADOS PELO POSTO E DESCRITOS NA NORMA ABNT NBR N° 13786, OU A QUE VIER SUBSTITUÍ-LA (TANQUES, TUBULAÇÕES, SISTEMA DE MONITORAMENTO INTERSTICIAL E DEMAIS EQUIPAMENTOS DE CONTROLE AMBIENTAL ETC.); ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4656,330,'58','58. OS TANQUES SUBTERRÂNEOS (DE COMBUSTÍVEL E DE ÓLEO LUBRIFICANTE USADO) DEVERÃO SER UTILIZADOS POR UM PERÍODO MÁXIMO DE 20 (VINTE) ANOS. AO COMPLETAR ESSE PERÍODO, DEVERÁ:\r\n\r\n58.1. REMOVER E DESTINAR TODOS OS TANQUES SUBTERRÂNEOS (DE COMBUSTÍVEL E DE ÓLEO LUBRIFICANTE USADO). ESSA ATIVIDADE DEVERÁ SER REALIZADA POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR CREDENCIADA, CONFORME DETERMINADO NA PORTARIA DO INMETRO N° 009/2011. DEVERÁS SER APRESENTADO RELATÓRIO DESCRITIVO E FOTOGRÁFICO DAS ATIVIDADES REALIZADAS, A DOCUMENTAÇÃO RELATIVA À DESTINAÇÃO DOS TANQUES E RESÍDUOS A EMPRESAS LICENCIADAS, ART DE EXECUÇÃO DO PROFISSIONAL RESPONSÁVEL PELA ATIVIDADE E DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL NO INMETRO. \r\nPRAZO: 60 (SESSENTA) DIA APÓS AS TROCAS; \r\n\r\n58.2. REALIZAR PESQUISA DE CONTAMINAÇÃO DO SOLO E ÁGUA (LEVANTAMENTO DE PASSIVOS AMBIENTAIS) COM PESQUISA DE COMPOSTOS ORGÂNICOS VOLÁTEIS (VOCS), JUNTO AS CAVAS DOS TANQUES SUBTERRÂNEOS (DE COMBUSTÍVEIS E DE ÓLEO LUBRIFICANTE USADO) QUANDO FOREM RETIRADOS, SEGUINDO A IN DO IEMA N° 12/2006, OU A QUE VIER SUBSTITUI-LA. CASO SEJA INDICADA A PRESENÇA DE VOCS, DEVERÃO SER SEGUIDAS AS DEMAIS ETAPAS DE PESQUISA INDICADAS NA REFERIDA IN. A PESQUISA DEVE ESTAR ACOMPANHADA DE RELATÓRIO DESCRITIVO E FOTOGRÁFICO DA ART DO PROFISSIONAL RESPONSÁVEL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TOCAS; \r\n\r\n58.3. ADQUIRIR TANQUES DE PAREDE DUPLA JAQUETADOS (PARA COMBUSTÍVEL E SE, FOR O CASO, PARA ÓLEO LUBRIFICANTE USADO), OS QUAIS DEVEM PERMITIR O MONITORAMENTO INTERSTICIAL, COM O PROPÓSITO DE DETECÇÃO DE EVENTUAIS VAZAMENTOS E EVITAR A CONTAMINAÇÃO DO SOLO, FABRICADOS DE ACORDO COM A NORMA DA ABNT NBR N° 16161, OU QUE VIER SUBSTITUÍ-LA. APRESENTAR AS NORMAS FISCAIS DOS TANQUES E SUAS FICHAS DE ACOMPANHAMENTO. AS NOTAS FISCAIS DEVERÃO ESTAR COM O NOME E O ENDEREÇO DO EMPREENDIMENTO OBJETO DESTA LICENÇA AMBIENTAL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TOCAS; \r\n\r\n58.4. INSTALAR OS TANQUES E NOVOS EQUIPAMENTOS DO SISTEMA DE ARMAZENAMENTO SUBTERRÂNEO DE COMBUSTÍVEIS (SASC) CONFORME AS DIRETRIZES DA NORMA DA ABNT NBR N° 16764, OU A QUE VIER SUBSTITUÍ-LA. ESSA ATIVIDADE DEVERÁ SER REALIZAR POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, CONFORME DETERMINADO PELA PORTARIA DO INMETRO N° 009/2011. APRESENTAR RELATÓRIO DESCRITÍVEL E FOTOGRÁFICO DA INSTALAÇÃO DOS TANQUES E EQUIPAMENTOS, ART DE EXECUÇÃO DO PROFISSIONAL RESPONSÁVEL PELA INSTALAÇÃO E DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL NO INMETRO. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TOCAS; \r\n\r\n58.5. APRESENTAR PLANTA, COM ESCALA ADEQUADA, CONTENDO A NOVA PROJEÇÃO DAS TUBULAÇÕES (DE DESCARGA, ABASTECIMENTO E DE EXAUSTÃO DE VAPORES) E DOS TANQUES. CASO HAJA MODIFICAÇÃO NAS DEMAIS ESTRUTURAS (UNIDADES DE ABASTECIMENTO, SISTEMA DE FILTRAGEM DIESEL, PROJEÇÃO DA COBERTURA DA ÁREA DE ABASTECIMENTO ETC.), ELAS TAMBÉM DEVERÃO SER INDICADAS NA PLANTA. A PLANTA DEVERÁ APRESENTAR LEGENDA E QUADRO INDICATIVO DE TODAS AS ÁREAS REPRESENTADAS (EM M²) E ESTAR ACOMPANHADA DA ART DO PROFISSIONAL RESPONSÁVEL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TOCAS; \r\n\r\n58.6. APRESENTAR PLANTA, COM ESCALA ADEQUADA, DO SISTEMA DE DRENAGEM PARA AS ÁGUAS CONTAMINADAS DAS ÁREAS DE DESCARGA, TANCAGEM E ABASTECIMENTO, INDICANDO A LOCALIZAÇÃO, MATERIAL DOS PISOS, CANALETAS E SENTIDO DE ESCOAMENTO. CASO HAJA MODIFICAÇÃO NAS DEMAIS ESTRUTURAS (BOX DE TROCA DE ÓLEO, LAVAGEM E LUBRIFICAÇÃO ETC.), ELAS TAMBÉM DEVERÃO SER INDICADAS NA PLANTA. A PLANTA DEVERÁ APRESENTAR LEGENDA E QUADRO INDICATIVO DE TODAS AS ÁREAS APRESENTADAS (EM M²) E ESTAR ACOMPANHADA DA ART DO PROFISSIONAL RESPONSÁVEL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TOCAS; \r\n\r\n58.7. APRESENTAR LAUDO EMITIDO POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, ATESTANDO A CONFORMIDADE QUANTO A FABRICAÇÃO, MONTAGEM, INSTALAÇÃO, COMISSIONAMENTO E PRESENÇA DE TODOS OS EQUIPAMENTOS OBRIGATÓRIOS PATA POSTOS CLASSE 3 (TANQUES DE PAREDE DUPLA, MONITORAMENTO INTERSTICIAL, CÂMARAS DE CONTENÇÃO ETC.), EXIGIDOS PELA NORMA ABNT NBR N° 13786, OU A QUE VIER SUBSTITUÍ-LA, E LEGISLAÇÃO VIGENTE. O ALUDO DEVERÁ DESCREVER TAMBÉM O MODELO DE CADA EQUIPAMENTO E ESTAR ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL E DE DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL NO INMETRO. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TOCAS; \r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4657,330,'59 SS','59. SERÁ TOLERADA A PRORROGAÇÃO DO PRAZO PARA SUBSTITUIÇÃO DOS TANQUES SUBTERRÂNEOS (DE COMBUSTÍVEL E DE ÓLEO LUBRIFICANTE USADO) POR UM PERÍODO MÁXIMO DE 4 (QUATRO) ANOS. DURANTE ESSE PERÍODO DEVERÁ: \r\n\r\n59.1. APRESENTAR, SEMESTRALMENTE, LAUDO RELATIVO À INTEGRIDADE DOS SISTEMAS DE ARMAZENAMENTO E DISTRIBUIÇÃO DE COMBUSTÍVEIS (TANQUES E TUBULAÇÕES), EMITIDO POR PROFISSIONAL HABILITADO E ENTIDADE CREDENCIADA PELO INMETRO, ACOMPANHADO DA ART DO PROFISSIONAL RESPONSÁVEL. OS TESTES DEVERÃO OBSERVAR AS RECOMENDAÇÕES DA NORMA DA ABNT NBR N° 13784, OU A QUE VIER A SUBSTITUÍ-LA, PREENCHENDO-SE O LAUDO DE ESTANQUEIDADE DOS SISTEMAS CONFORME A REFERIDA NORMA. \r\nPRAZO PARA A PRIMEIRA APRESENTAÇÃO: 90 (NOVENTA) DIAS;\r\n\r\n59.1.1. APÓS A TROCA DOS TANQUES SUBTERRÂNEOS, A PERIODICIDADE DESTES ESTUDOS DEVERÁ SER DE 04 EM 04 ANOS; \r\n\r\n59.1.2. A EXECUÇÃO E ACOMPANHAMENTO DOS TESTES FICARÁ A CARGO DA EMPRESA QUE, NA OCORRÊNCIA DE QUALQUER ANOMALIA, DEVERÁ IMEDIATAMENTE PARALISAR A ATIVIDADE E PROCEDER À TROCA DOS TANQUES SUBTERRÂNEOS, COMUNICANDO O OCORRIDO À ESTA SUBSECRETARIA DE MEIO AMBIENTE; \r\n\r\n59.2. REALIZAR MONITORAMENTO ANUAL DE PASSIVOS AMBIENTAIS POR COMPOSTOS ORGÂNICOS VOLÁTEIS (VOCS) EM TODA A ÁREA DO EMPREENDIMENTO, SEGUINDO OS TERMOS DA INSTRUÇÃO NORMATIVA DO IEMA N° 02/2007, PORÉM, RESPEITANDO A ANUIDADE DOS ESTUDOS, ATÉ A TROCA DOS TANQUES SUBTERRÂNEOS. OS RESULTADOS DEVERÃO ESTAR ACOMPANHADOS DA ART DO PROFISSIONAL RESPONSÁVEL PELOS SERVIÇOS REALIZADOS. NA ART DEVERÁ ESTAR ESPECIFICADO QUE ELE SE REFERE AO LEVANTAMENTO DE PASSIVOS AMBIENTAIS POR VOCS. \r\nPRAZO PARA A PRIMEIRA APRESENTAÇÃO: 180 (CENTO E OITENTA) DIAS;\r\n\r\n59.2.1. APÓS A TROCA DOS TANQUES SUBTERRÂNEOS, A PERIOCIDADE DESTES ESTUDOS DEVERÁ SER DE 04 EM 04 ANOS; \r\n		\r\n59.2.2. A EXECUÇÃO E ACOMPANHAMENTO DOS TESTES FICARÁ A CARGO DA EMPRESA QUE, NA OCORRÊNCIA DE QUALQUER ANOMALIA, DEVERÁ IMEDIATAMENTE PARALISAR A ATIVIDADE E PROCEDER À TROCA DOS TANQUES SUBTERRÂNEOS, COMUNICANDO O OCORRIDO À ESTA SUBSECRETARIA DE MEIO AMBIENTE. \r\n\r\n59.2.3. CONSTATADA A PRESENÇA DE VOCS, O EMPREENDEDOR DEVERÁ ADOTAR TAMBÉM OS PROCEDIMENTOS DE DIRECIONAMENTO PARA A ETAPA 2 – INVESTIGAÇÃO QUANTITATIVA POR CROMATOGRAFIA, SEGUINDO OS TERMOS DA INSTRUÇÃO NORMATIVA DO IEMA N° 02/2007;\r\n\r\n59.3. REMOVER E DESTINAR TODOS OS TANQUES SUBTERRÂNEOS (DE COMBUSTÍVEIS E DE ÓLEO LUBRIFICANTE USADO). ESSA ATIVIDADE DEVERÁ SER REALIZADA POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, CONFORME DETERMINADO NA PORTARIA DO INMETRO N° 009/2011. DEVERÁ SER APRESENTADO RELATÓRIO DESCRITIVO E FOTOGRÁFICO DAS ATIVIDADES REALIZADAS, A DOCUMENTAÇÃO RELATIVA À DESTINAÇÃO DOS TANQUES E RESÍDUOS A EMPRESAS LICENCIADAS, RT DE EXECUÇÃO DO PROFISSIONAL RESPONSÁVEL NO INMETRO. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TROCAS;\r\n\r\n59.4. ADQUIRIR TANQUES DE PAREDE DUPLA JAQUEADOS (PARA COMBUSTÍVEIS E, SE FOR O CASO, PARA ÓLEO LUBRIFICANTE USADO) OS QUAIS DEVEM PERMITIR O MONITORAMENTO INTERSTICIAL, COM O PROPÓSITO DE DETECÇÃO DE EVENTUAIS VAZAMENTOS E EVITAR A CONTAMINAÇÃO DO SOLO FABRICADOS DE ACORDO COM A NORMA DA ABNT NBR N° 16161, OU A QUE VIER SUBSTITUI-LA. APRESENTAR AS NORMAS FISCAIS DOS TANQUES E SUAS FICHAS DE ACOMPANHAMENTO. AS NOTAS FISCAIS DEVERÃO ESTAR COM O NOME E ENDEREÇO DO EMPREENDIMENTO OBJETO DESTA LICENÇA AMBIENTAL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TROCAS;\r\n\r\n59.5. INSTALAR OS TANQUES E NOVOS EQUIPAMENTOS DO SISTEMA DE ARMAZENAMENTO SUBTERRÂNEO DE COMBUSTÍVEIS (SASC) CONFORME AS DIRETRIZES DA NORMA DA ABNT NBR N° 16764, OU QUE VIER SUBSTITUÍ-LA. ESSA ATIVIDADE DEVERÁ SER REALIZADA POR EMPRESA CERTIFICADA PELO INMETRO, OU ENTIDADE POR ELE CREDENCIADA, CONFORME DETERMINADO NA PORTARIA DO INMETRO N° 009/2011. APRESENTAR RELATÓRIO DESCRITIVO E FOTOGRÁFICO DA INSTALAÇÃO DOS TANQUES E EQUIPAMENTOS, ART DE EXECUÇÃO DO PROFISSIONAL RESPONSÁVEL PELA INSTALAÇÃO E DOCUMENTO QUE COMPROVE A ACREDITAÇÃO DA EMPRESA RESPONSÁVEL NO INMETRO. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TROCAS; \r\n\r\n59.6. APRESENTAR PLANTA, COM ESCALA ADEQUADA, CONTENDO A NOVA PROJEÇÃO DAS TUBULAÇÕES (DE DESCARGA, ABASTECIMENTO E DE EXAUSTÃO DE VAPORES) E DOS TANQUES. CASO HAJA MODIFICAÇÕES NAS DEMAIS ESTRUTURAS (UNIDADES DE ABASTECIMENTO, SISTEMA DE FILTRAGEM DIESEL, PROJEÇÃO DA COBERTURA DA ÁREA DE ABASTECIMENTO ETC.), ELAS TAMBÉM DEVERÃO SER INDICADAS NA PLANTA. A PLANTA DEVERÁ APRESENTAR LEGENDA E QUADRO INDICATIVO DE TODAS AS ÁREAS REPRESENTADA (EM M²) E ESTAR ACOMPANHADA NA ART DO PROFISSIONAL RESPONSÁVEL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TROCAS;\r\n\r\n59.7. APRESENTAR PLANTA, COM ESCALA ADEQUADA, DO SISTEMA DE DRENAGEM PARA AS ÁGUAS CONTAMINADAS DAS ÁREAS DE DESCARGA, TANCAGEM, E ABASTECIMENTO, INDICANDO A LOCALIZAÇÃO, MATERIAL DOS PISOS, CANALETAS E SENTIDO DE ESCOAMENTO. CASO HAJA MODIFICAÇÃO NAS DEMAIS ESTRUTURAS (BOX DE TROCA DE ÓLEO, LAVAGEM E LUBRIFICAÇÃO ETC.), ELAS TAMBÉM DEVERÃO SER INDICADAS NA PLANTA. A PLANTA DEVERÁ APRESENTAR LEGENDA E QUADRO INDICATIVO DE TODAS AS ÁREAS REPRESENTADAS (EM M²) E ESTAR ACOMPANHADA NA ART DO PROFISSIONAL RESPONSÁVEL. \r\nPRAZO: 60 (SESSENTA) DIAS APÓS AS TROCAS. \r\n\r\n','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4662,331,'02','02 - No prazo de 15 (quinze)_ dias, apresentar comprovante da puplicação em Diário Oficial do Estado (DIO-ES) informando sobre a obtenção de Licença Ambiental conforme Decreto Municipal n° 519/2022. ','N','2023-10-17',NULL,NULL,9,9,NULL,NULL,NULL),(4663,331,'04','4 - Apresentar Alvará de Funcionamento, em até 90 (noventa) dias após entrega desta LMO','N','2024-03-06',NULL,'2024-02-06',9,9,NULL,NULL,NULL),(4664,331,'05','05. Apresentar o Certificado de Posto Revendedor da ANP comprovante a SECMAM no prazo de 90 (noventa) dias a contar do recebimento da licença ambiental.','N','2024-03-06',NULL,'2024-02-06',9,9,NULL,NULL,NULL),(4665,331,'06','06 - Apresentar docuemntação comprobatória quanto a instação dos extintores de incêndio no empreendimento quando do início das atidades. ','N',NULL,NULL,NULL,9,9,NULL,NULL,NULL),(4666,331,'07','07 - Realizar treinamento dos funcionários, alusivo ao conhecimento das condiconates de manutenção periódica, controle de resíduos contaminados, limpeza SSAO e de controle ambiental, como forma de conscientização ambiental. Apresentar comprovação através de relatório fotográfico e lista de presença. \r\n\r\nPrazo: 180 (cento e oitenta) dias, após a expedição da licença e Apresentar documentação comprobatória a SECMAM. ','N','2024-04-02',NULL,'2024-03-02',9,9,NULL,NULL,NULL),(4667,331,'08','08 - Apresentar a cada 4 (quatro) anos os testes relativos à integridade dos sistemas de armazenamento e distribuição de combustiveis (tanques e tubulaçoes) emitido por empresa ou proficional habilitado e acompanhado da devida ART. Os testes deverão observar legislação vigentes, preenchendo-se o laudo de estanqueidade do SASC, conforme anexo B da referida norma. \r\n\r\nApresentar os resultados dos testes realizados quando da renovação da licença. ','N','2027-06-02',NULL,'2027-05-02',9,9,NULL,NULL,NULL),(4668,331,'09','09 - Apresentar Laudo Tecnico de Conformidade de acordo com as normas vigentes. Deverá ser emitido por empresa ou proficional habilitado e acompanhado da devida ART. Encaminhar aa cada 04 (quatro) anos para SECMAM/CELAM. \r\n\r\nApresentação de documentação quando da renovação d licença. ','N','2027-06-02',NULL,'2027-05-02',9,9,NULL,NULL,NULL),(4669,331,'10','10 - Os estudos preliminares de passivos ambientais (VOC) devemn ser apresnetados a cada 04 (quatro) anos. \r\n\r\nApresentação de documentação quando a renovação da licença. ','N','2027-06-02',NULL,'2027-05-02',9,9,NULL,NULL,NULL),(4670,331,'11','11 - Realizar a análise de efluente final na saída do sistema separador de água e óleo (Caixa SSAO) por empresa especializada atestando a eficiencia do sistema em acordo com os parametros contidos na resolução CONOMA 430/11. Enviar a comprovação de atendimento a SECMAM anualmente após o recebimento da LMO. Primeira comprovação em 180 (cento e oitenta) dias. \r\n\r\nPrazo: Anualmente. ','N','2024-04-02',NULL,'2024-03-02',9,9,NULL,NULL,NULL),(4671,331,'12','12 - Realizar de forma adequada o gerenciamneto, armazenamento e detinação dos resíduos sólidos, domésticos e industriais gerados, realizando a coleta seletiva em atendimento ao Plano Nacional de Residuos Sólidos - PNRS Lei 12.305/2010. \r\nApresentar documentação comprobatória em até 90 (noventa) dias após entrega desta LMO. ','N','2024-03-06',NULL,'2024-02-06',9,9,NULL,NULL,NULL),(4672,331,'13','13 - Realizar o armazenamento de todo o óleo usado e demias resíduos sólidos contaminados em locais com piso impermeabilizado, sistema de contenção e cobertura. Os residuos oleosos utilizados deverão ser armazenados em tambores portados e tampas. Apresentar documentação comprobatória em até 90 (noventa) dias após entrega desta LMO. ','N','2024-03-06',NULL,'2024-02-06',9,9,NULL,NULL,NULL),(4673,331,'14','14 - Destinar todo o óleo usado e demais resíduos sólidos contaminados (óleo sobrenadante do SSAO, óleo lubrificante usado, borra  do SSAO, vasilhames de óleo lubrificante, trapos, etc.) somente a empresas devidamente licenciadas para coleta, transporte e destinação de resíduos perigosos, enviando anualmente ao orgão cópias das notas fiscais de alienação, com dados mensais. Em caso de contrato firmado com empresa coletora de resíduos classe I, apresenta-lo em conjunto com as cópias das notas fiscais de alienação. \r\nPrazo para primeira apresentação: 365 (trezentos e sessenta e cinco) dias, após a expedição da Licença. \r\n','N','2024-10-02',NULL,'2024-09-02',9,9,NULL,NULL,NULL),(4674,331,'17','17 - Encaminhar anualmente, com dados mensais, relatório de movimentação de resíduos, e encaminhar documentos comprobatórios (certificados, manifestos de empresas receptoras, notas fiscais de venda ou recibos de doação, destinação final, todos devidamente assinados pelo recebedor) de moviemntação e destinação dos resíduos sólidos de origem industrial, além dos subprodutos ou resíduos sólidos de origem industrial, além dos subprodutos ou resíduos diversos ( consideram-se também resíduos sólidos, produtos e matérias primas não conformes, embalagens com ou sem retorno ao fornecedor/fabricante). \r\nPrazo para primeira apresentação: 365 (trezentos e sessenta e cinco) dias, após a expedição da licença. \r\n\r\nAnualmente ','N','2024-10-02',NULL,'2024-09-02',9,9,NULL,NULL,NULL),(4675,331,'18','18 - Realizar anualmente, a limpeza e manutenção do sistema de drenagem pluvial bem como das caixas separadoras água e óleo (SSAO), e do sistema SUMPs das bombas de abastecimento, a fim de manter a eficiência das mesmas, armazenando adequadamente os resíduos gerados. Comprovar via relatorio fotografico colorido legivel. \r\nPrazo para primeira apresentação: 365 (trezentos e sessenta e cinco) dias, após a expedição da licença. ','N','2024-10-02',NULL,'2024-09-02',9,9,NULL,NULL,NULL),(4676,331,'19','19 - Normas aplicáveis à prevenção de incêndios devreão ser implantadas e obedecidas. Aoresentar, anualmente, Alvará de Licença válidos expedido pelo Corpo de Bombeiros Militar. \r\n\r\nAnualmente. \r\n','N','2024-10-02',NULL,'2024-09-02',9,9,NULL,NULL,NULL),(4677,331,'34','34 - Requerer Licença Municipal de Operação 120 (cento e vinte) dias antes do cencimento da licença. ','N','2027-06-02',NULL,'2024-05-02',9,9,NULL,NULL,NULL),(4679,307,'1','Esta licença foi emitida com fundamento no Decreto Municipal n° 6.534/2021',NULL,'2023-12-01',NULL,NULL,2,NULL,NULL,1,0),(4680,307,'2','Esta licença, bem como suas condicionantes, deve ficar em local visivel e de facil acesso, sendo obrigatoria a apresentação da mesma sempre que solicitada. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4681,307,'3','A contagem do prazo desta licença e das condicioantes se inicia a partir da assinatura da mesma.',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4682,307,'4','Esta licença autoriza a operação da atividade de Terminal de recebimento armazenamento e expedição de granéis combust´´iveis liquidos (gasolina, álcool, diesel e semelhantes) - 60 m³, nos pontos de coordenadas UTM Datum Sirgas 2000, zona 24k 291846 E / 7840706 S',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4683,307,'5','Esta licença não contempla as atividades de lavagem de veículos e troca de óleo.',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4684,307,'6','Apresentar comprovante de puplicação em jornal oficial e em jornal de circulação local ou regional, referente à obtenção dessa licença.',NULL,'2023-12-31',NULL,'2023-11-30',1,NULL,NULL,2,30),(4685,307,'7','Apresentar relatório fotográfico com fotos aproximadas e uma distância que contextualize e comprove a colocação de uma placa informativa, de fácil visualização e leitura, com funco branco, nas dimensões mínimas de 0,70x0,50m. ',NULL,'2023-12-31',NULL,'2023-11-30',2,NULL,NULL,2,30),(4686,307,'8','Manter atualizada a Certidão de Dispensa de Outirga. Apresentar Portaria de Outorga para lançamento dos efluentes do Sistema Separador de Água e Óleo (SSAO) renovada. ',NULL,'2025-11-25',NULL,'2025-10-25',1,NULL,NULL,6,725),(4687,307,'9','Armazenar e manejar os resíduos classe I em recipientes e local identificados e adequados (local aberto, com piso impermeabilizado e estrutura estanque para os casos d resíduos líquidos). Apresentar relatório fotográfico e descritivo comprovando o local de acondicionamento conforme apresentado em PCA. ',NULL,'2024-01-30',NULL,'2023-12-30',2,NULL,NULL,2,60),(4688,307,'10','Apresentar semestralmente relatório fotográfico comprobatório referente a realização de manutenção e limpeza periódica no Sistema Separador de Água de Óleo (SSAO) e comprovante de destinação final dos resíduos emitido por empresa licenciada para tal atividade, com descrição específica do resíduo coletado. ',NULL,'2024-05-29',NULL,'2024-04-29',2,NULL,NULL,4,180),(4689,307,'11','Comprovante semestralmente a efiência do SSAO atravéz da apresentação de laudo laboratorial com resultados da análise físico-quimica do efluente (parâmetros pH, sólidos sedimentáveis, sólidos suspensos, óleos e graxas e, surfactantes), sendo a amostragem conduzida segundo as orientações contidas no Standart Methods for Examination of Water and Wastewater - 21TH Edition. ',NULL,'2024-05-29',NULL,'2024-04-29',1,NULL,NULL,4,180),(4690,307,'12','Apresentar semestralmente relatório de gerenciamento dos resíduos característicos da atividade, contemplando, no mínimo, as seguintes informações: mês, tipos de resíduos gerados, quantidade mensal, classe do resíduo, formas de acondicionamento, acompanhado do Certificado de Destinação de Resíduos emitido por empresa licenciada par prestação do serviço. ',NULL,'2024-05-29',NULL,'2024-04-29',1,NULL,NULL,4,180),(4691,307,'13','Os resíduos passíveis de reciclagem gerados na fase de implantação do empreendimento deverão ficar acondicionados em local adequado, e serem destinados à Associação de Catadores de Materiais Recicláveis de Baixo Guandu. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4692,307,'14','Apresentar anualmente laudo relativo à integridade dos sistemas de armazenamento e distribuição de combustíveis (tanques e tubulações) emitido por profissional habilitado e empresa certificada pelo INMETRO, acompanhado da devida ART. Os testes deverão observar as recomendações da NBR atualizadas referentes a Armazenamento de Líquidos inflamáveis e combustíveis, e tanques aéreos. ',NULL,'2024-11-30',NULL,'2024-10-30',2,NULL,NULL,5,365),(4693,307,'15','Manter válido o avará de licença do corpo de bombeiros e apresenta-lo anualmente, assim que renovado. Ele deve ser mantido no empreendimento para fins de vistoria. ',NULL,'2025-01-16',NULL,'2024-12-16',2,NULL,NULL,5,0),(4694,307,'16','Realizar periodicamente a limpeza e manutenção das câmaras de contenção sob as unidades de abastecimento, descarga, unidade de filtragem de diesel.',NULL,'2024-05-29',NULL,'2024-04-29',2,NULL,NULL,4,180),(4695,307,'17','Desenvolver anualmente palestra de educação ambiental com os colaboradores do empreendimento, abordando os aspectos ambientais da empresa e os controles ambientais instalados. Apresentar relatório descritivo e fotográfico das ações tomadas para execução do programa de educação ambiental e lista de presença. ',NULL,'2024-11-30',NULL,'2024-10-30',1,NULL,NULL,5,365),(4696,307,'18','É vedada a queima a céu aberto de material potencialmente poluidor, inclusive os resíduos tipicamente caracterzados como domésticos. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4697,307,'19','Aplicar, no que couber, os termos da Instrução Normativa IEMA n° 12/2006 e CONOMA n° 273/2000.',NULL,'2023-12-01',NULL,'2023-11-01',2,NULL,NULL,1,0),(4698,307,'20','Deverão ser observadas as normas BNT-NBR 15.776- 1:2009, ABNT NBR 17505-2:2015, ABNT NBR 15.461:2007 ou outras normas que as venham a substituir. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4699,307,'21','Qualquer alteração de projetos/programas e escopo de operação deverão ser submetidos à aprovação prévia da Subsecretaria de Desenvolvimento Rural e Meio Ambiente. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4700,307,'22','Comunicar à Secretaria de Desenvolvimento Rural e Meio Ambiente a ocorrência da paralização ou encerramento das atividade. Prazo: 15 (quinze) dias após paralização/encerramento, e ainda atender aos seguintes critérios, conforme sua aplicanilidade:\r\n\r\nA) Em caso de paralização com o encerramento das operações a empresa deverá solicitar o arquivamento do processo e apresentar relatório de desmobilização e/ou de descaracterização da atividade, acompanhada de cronograma.\r\n\r\nB) Em caso de paralização com encerramento das operções e impossibilidade de desmobilização e/ou descaracterização da atividade deverão ser apresnetadas as justifcativas técnicas para análise e aprovação do referido órgão ambiental.',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4701,307,'23','Esta licença refere-se apenas aos critérios ambientais da atividade em questão e não exime o seu titular da apresentação aos orgãos competentes de outros documentos legalmente exigíveis. Também não inibe ou restringe de qualquer forma a ção dos demais órgãos e instituição discalizadoras, nem desobriga a empresa da obtenção de utorizações, anuências, laudos, certidões, certificados ou outros documentos previstos na legislação vigente, sendo de sua responsabilidade a adoção de qualquer previdência nesse sentido.\r\n',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4702,307,'24','Visando o bem estar da população, poderá ser exigido, a qualquer tmpo, baseado em parecer técnico fundamentado, a implantação de outros controles ambientais para minimizar os impactos.\r\n',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4703,307,'25','Toda documentação apresentada em atendimento às condicionantes ambientais desta licença deverá fazer referrência às condicionantes a que se refere. O não cumprimento das condicionantes acima penalizará a empresa com a imposição das penalidades de multa e/ou interdição das atividade/obra, e ainda determinará a suspensão ou cassação da licença, conforme previsto em lei.',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4704,307,'26','A constatação da operação em desacordo com as inofrmações prestadas quando do requerimento da licença ou com as condicionantes listadas, sujeitarão seus representantes, seus responsáveis técnicos e contratados envolvidos às penalidades administrativas previstas em lei, além de serem adotadas as providências para responsabilização civil e criminal. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4705,307,'27','Todo transporte de combustíveis deve ser feito por meio de empresas que possuam licença ambiental para atividade. ',NULL,'2023-12-01',NULL,'1899-12-30',2,NULL,NULL,1,0),(4706,333,'1','Esta licença autoriza a atividade de LAVAGEM DE VEÍCULOS COM OU SEM RAMPA OU FOSSO, localizada na Avenida Ricardo Pasolini, Centro, N° 263, Santa Teresa/ES, sob as coordenadas UTM 24k 332630 / 7795529 (datum WGS 84), com área útil de 200m² (duzentos metros quadrados).',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4707,333,'2','Apresentar folha original, tornando puplico a obtenção da Licença Municipal Simplificada - LMS, no Diário Oficial do Estado do Espirito Santo. ',NULL,'2024-02-11',NULL,'2024-01-11',1,NULL,NULL,2,30),(4708,333,'3','Apresentar relatório fotográfico que comprove a colocação, na entrada do empreendimento de uma placa informativa, de fácil visualização e eitura, com fundo branco, nas dimensões minimos de 1,20m x 0,80m. ',NULL,'2024-02-11',NULL,'2024-01-11',2,NULL,NULL,2,30),(4709,333,'4','Realizar diariamente de forma adequada o gerenciamento, armazenamento e destinação dos resíduos sólidos, domésticos e industriais gerados, realizando a coleta seletiva. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4710,333,'5','Realizar destinação dos resíduos sólidos contaminados (borra do sistema SAO, sobretudo) somente a empresas devidamente licenciadas para a atividade, enviando anualmente à Secretaria Municipal de Meio Ambiente as cópias das notas fiscais de alienação ou contrato firmado com empresa coletora de Resíduos Classe I. ',NULL,'2025-01-11',NULL,'2024-12-11',1,NULL,NULL,5,365),(4711,333,'6','Caso haja geração, destinar os resíduos oleosos (óleo usado, areia contaminada, vasilhames de óleo lubrificante e demais Resíduos Classe I) somente a empresas devidamente licenciadas para a ativdade, enviando Anualmente à SMMA as cópias das notas fiscais de alienação ou contrato firmado com empresa coletora de Resíduos Classe I. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4712,333,'7','Promover manutenção periodica do Sistema Separador de Água e Óleo - SSAO, de forma a não comprometer a eficiência do sistema, aquivando na empresa relatório fotográfico da manutenção/limpeza com os comprovantes de destinação final dos resíduos gerados.',NULL,'2024-07-10',NULL,'2024-06-10',2,NULL,NULL,4,180),(4713,333,'8','Promover a manutenção da impermeabilização e canaletas de drenagem, quando da necessidad, reforçando o piso onde é realizada a lavagem dos veículos, para que haja melhor destinação dos residuos provenientes da lavagem para o sistema SAAO, impedindo assim a infiltração desde resíduos no solo exposto. ',NULL,'1899-12-30',NULL,'1899-12-30',2,NULL,NULL,1,0),(4714,333,'9','Apresentar Declaração de Uso de Água Subterrânea, Outorga e/ou Certidão de Uso Insignificante de Água junto a Agencia Estadual de Recursos Hidricos. ',NULL,'2024-04-11',NULL,'2024-03-11',1,NULL,NULL,2,90),(4715,333,'10','Promover constantemente a limpeza e a arrumação de toda a área da empresa, a fim de remover o material proveniente da varrição deverá ser armazenado em local coberto, em baias restritas ou ensacado, protegido da interpéries (tais como chuva e vento), além de ser corretamente destinado. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4716,333,'11','Os niveis de ruido gerados no empreendimento deverão estar de acorodo com os limites aceitaveis estabelecidos pela Resolução CONOMA n° 01/90 e norma NBR 10 151/2010',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4717,333,'12','Fica proibida a realização de manutenção mecanica e abastecimento de veículos na área do empreendimento, sob pena das punições cabíveis. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4718,333,'13','O desenvolvimento da atividade não poderá causar prejuízo a saúde e/ou incômod ao bem estar dos funcionários e/ou da comunidade do entorno e/ou ao meio ambiente.',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4719,333,'14','Caso seja verificada a nescessidade, durante todo o período de vigência desta licença, a SMMA poderá solicitar a realização de novas adequações e melhorias que nao constam da listagem de condicionantes. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4720,333,'15','No caso de ocorrencia de acidentes a SMMA deverá ser imediatamente comunicada (através de contato telefônico, no momento da ocorrência), devendo ser também encaminhado oficio devidamente assinado pelo responsavel pelo empreendimento contendo as causas do acidente, a descrição do fato e as ações que foram adotadas para mitigar os impactos, em prazo maximo de 10 (dez) dias após o acidente. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4721,333,'16','Comunicar a SMMA, em caso de alteração cadastrais ou mudança de tirularidade do emprrendimento no prazo maximo de 15 (quinze) dias após a alteração ou a mudança. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4722,333,'17','Em caso de paralização com o encerramento das operações a empresa deverá solicitar o arquivamento do processo e apresentar relatório de desmobilização e/ou de deescarcterização da atividade, acompanhado de cronograma. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4723,333,'18','Em caso da mudança de endereço da atividade a empresa deverá obter a licença ambiental para o novo endereço, antes de qualquer intervenção na nova área.',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4724,333,'19','Esta licença se refere apenas aos aspectos ambientais da atividade em questãoe, conforme disposto no Art. 12, § 1°, do Decreto Estadual n° 1.777/07, não exime o seu titular da apresentação, aos orgãos competentes, de outros documentos legalmente exigiveis. Também não inibe ou restringe de qualquer forma a ação dos demais orgãos  instituições fiscalizadoras nem desobriga a empresa da obtenção de autorizações, anuência, laudos, certidões, certificados ou outros documentos previstos na Legislação vigente de sua responsabilidade a adoção de qualquer providência nesse sentido. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4725,333,'20','Caso a empresa encerre definitivamente as suas atividades, deverá haver a desmobilização de seu processo industrial, apresentando documentação comprobatória dadestinação de seus residuos e relatório fotografico descritivo comprovando a inexistencia de fontes geradoras de poluição e de passivos ambientais, no prazo de 60 (sessenta) dias a partir da demobilização.',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4726,333,'21','Toda documentação apresentada em atendimento às condicionantes ambientais desta licença deverá fazer referenica às condicionantes a que se destina. Os documentos deverão estar devidamente rubricados, assinados e em suas vas originais acompanhados da respectiva Anotação de Responsabilidade Técnica, quando couber. Os documentos deverão se apresentados em via impressa. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4727,333,'22','Requerer renovação desta licença 120 (cento e vinte) dias antes do seu vencimento. ',NULL,'2026-09-13',NULL,'2026-08-13',1,NULL,NULL,2,975),(4728,333,'23','A contagem do prazo desta licença e das condicionantes impostas acima se inicia a partir do recebimento da mesma. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4729,333,'24','O não cumprimento das codicionantes impostas nesta licença acarretará ao proprietário penalidades previstas em lei.',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4730,333,'25','A Secretaria de Meio Ambiente, mediante decisão motivada, poderá MODIFICAR as condições de validade, SUSPENDER ou CANCELAR a presente Liceça caso ocorra:\r\n\r\n25.1 - Omissão ou falsa descrição de informação que subsidiaram a expidição da presente Licença. \r\n25.2 - A superviniênica de graves riscos ambientais e/ou de saúde pública.\r\n25.3 - Violação ou inadequação de quaisquer condições de validade da icença ou mormas legais. ',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4731,333,'26','Responsável Tecnico pelo Licenciamento Ambinetal da atividade Luiz Alberto Dias dos Santos, Biólogo, CRBio-02:38286',NULL,'2024-01-12',NULL,'1899-12-30',2,NULL,NULL,1,0),(4732,334,'1','Esta Licença Ambiental refere-se à atividade de Reparação, retifica, lanternagem e/ou manutenção de máquinas, aparelhos e equipamentos mecânicos diversos, inclusive motores automitivos, com pintura por aspersão, incluindo oficinas mecânicas, localizada na Rua Bernadino Monteiro, Bairro Dois Pinheiros, n° 746, Santa Teresa-ES, sob Coordenadas Geograficas UTM 24k 333552 / 7794744, tendo uma área útil de 80 m², sob respaldo do parecer tecnico n° 016/2024 emitido pelo Setor Técnico da Secretaria de Meio Ambiente e apresentado nos autos do processo analisado. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4733,334,'2','Esta licença autoriza apenas a atividade supracitada e visa o controle ambiental de tal atividade, sendo que, futuras obras e/ou intalaçoes no local deverão ser previamente autorizadas pelos orgãos competentes. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4734,334,'3','Apresentar folha original, tornando pública a obtenção da Licença Municipal Simplificada no Diario Oficial do Estado do Espirito Santo. ',NULL,'2024-02-14',NULL,'2024-01-14',1,NULL,NULL,2,30),(4735,334,'4','Apresentar relatório fotográfico que comprove a colocação, na entrada do emprrendimento de uma placa informativa, de facil visualização e leitura, com fundo branco, nas dimensões minimas de 1,20 x 0,80m.',NULL,'2024-02-14',NULL,'2024-01-14',2,NULL,NULL,2,30),(4736,334,'5','Manter o Alvará de Autorização para funcionamento emitido pelo corpo de bombeiros sempre renovado. Apresentar a esta secrtaria, sempre que renovado. ',NULL,'2026-05-04',NULL,'2026-04-04',2,NULL,NULL,5,30),(4737,334,'6','Realizar diariamente de forma adequada o gerenicmaneto, armazenamento e destinaçãodos resíduos sólidos, domésticos e industriais gerados, realizando a coleta seletiva. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4738,334,'7','Destinar os resíduos oleosos (óleo usado, areia contaminda, vasilhames de óleo lubrificante e demais Resíduos Classe I), bem como resíduos químicos e contaminados, somente a empresas devidamente licenicadas para a atividade, enviando anualmente à SMMA as cópias das notas fiscais de alienação ou contrato firmado com empresa coletora de Resíduos Classe I. ',NULL,'2025-01-14',NULL,'2024-12-14',1,NULL,NULL,5,365),(4739,334,'8','Fica proibido o armazenamento/manipulação de qualquer produto químico em locais desprovidos de piso impermeabilizado, sistema de contenção e cobertura. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4740,334,'9','Fico proibido encaminhar para a Coleta Pública Municipal os Rsíduos Sólidos Conta,inados e de Classe I - Perigosos (embalagens contaminadas, trapos contaminados, entre outros), devendo estes resíduos e os produtos químicos (tinta, verniz, primer, entre outros) ser armazenados em local adequado (local coberto com piso impermeabilizado e barreiras de contenção do entorno), enviar anualmente à SMMA as copias das notas fiscais de alienação ou contrato firmado com empresa coletora de Residuos Classe I. ',NULL,'2025-01-14',NULL,'2024-12-14',1,NULL,NULL,5,365),(4741,334,'10','O desenvolvimento da atividade não poderá causar prejuízo à saude e/ou incômodo ao bem estar dos funcionários e/ou da comunidade do entorno e/ou ao meio ambiente. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4742,334,'11','Os níveis de ruído gerados no empreendimento deverão estar de acordo com os limites aceitáveis estabelecidos pela Resolução CONOMA N° 01/90 e norma NBR 10.151/2010',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4743,334,'12','nao intervir em Áreas de preservação Permanente ou outras áreas sensíveis protegidas proximas ao empreendimento. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4744,334,'13','Caso seja verificada a nescessidade, durnate todo o periodo de vigencia desta licença, a SMMA poderá solicitar a realização de novas adequações e mehorias que não contam da listagem de condicionantes. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4745,334,'14','Quaisquer alterações/adequações necessarias nos Projetos divulgados deverão ser apresentadas formalmente com antecendencia à Secretaria Municipal do Meio Ambiente para análise e manifestação. Prazo antes da intervenção. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4746,334,'15','No caso de ocorrencia de acidentes a SMMA deverá ser imediatamente comunicada (através de contato telefonico, no momento da ocorrência), devendo ser também encaminhado ofício devidamente assinado pelo responsavel pelo empreendimento contendo as causas do acidente, a descrição do fato e as ações que foram adotadas para mitigar os impactos, emprazo maximp de 10 (dez) dias após o acidente. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4747,334,'16','Comunicar a SMMA, em caso de alterações cadastrais ou a mudança de tirularidade do empreendimento no prazo máximo de 15 (quinze) dias após a alteração ou mudança. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4748,334,'17','Em caso de paralização com o encerramento das operações a empresa deverá solicitar o arquivamento do processo e aprentar desmobilização e/ou de descaracterização da atividade, acompanhado de cronograma. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4749,334,'18','Em caso da mudança de endereço da atividade a empresa deverá obter a licença ambiental para o novo endereço, antes de qualquer intervenção na nova área. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4750,334,'19','Esta licença se refere apenas aos aspectos ambientais da atividade em questãoe, conforme disposto no Art. 12, § 1°, do Decreto Estadual n° 1.777/07, não exime o seu titular da apresentação, aos orgãos competentes, de outros documentos legalmente exigiveis. Também não inibe ou restringe de qualquer forma a ação dos demais orgãos  instituições fiscalizadoras nem desobriga a empresa da obtenção de autorizações, anuência, laudos, certidões, certificados ou outros documentos previstos na Legislação vigente de sua responsabilidade a adoção de qualquer providência nesse sentido. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4751,334,'20','Caso a empresa encerre definitivamente as suas atividades, deverá haver a desmobilização de seu processo industrial, apresentando documentação comprobatória dadestinação de seus residuos e relatório fotografico descritivo comprovando a inexistencia de fontes geradoras de poluição e de passivos ambientais, no prazo de 60 (sessenta) dias a partir da demobilização.',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4752,334,'21','Toda documentação apresentada em atendimento às condicionantes ambientais desta licença deverá fazer referenica às condicionantes a que se destina. Os documentos deverão estar devidamente rubricados, assinados e em suas vas originais acompanhados da respectiva Anotação de Responsabilidade Técnica, quando couber. Os documentos deverão se apresentados em via impressa. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4753,334,'22','Requerer renovação desta licença 120 (cento e vinte) dias antes do seu vencimento. ',NULL,'2026-09-16',NULL,'2026-08-16',1,NULL,NULL,2,975),(4754,334,'23','A contagem do prazo dessa Licença e das condicionantes acima e inicia a partir do recebimento da mesma.',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4755,334,'24','O não cumprimento das codicionantes impostas nesta licença acarretará ao proprietário penalidades previstas em lei.',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4756,334,'25','A Secretaria de Meio Ambiente, mediante decisão motivada, poderá MODIFICAR as condições de validade, SUSPENDER ou CANCELAR a presente Liceça caso ocorra:\r\n\r\n25.1 - Omissão ou falsa descrição de informação que subsidiaram a expidição da presente Licença. \r\n25.2 - A superviniênica de graves riscos ambientais e/ou de saúde pública.\r\n25.3 - Violação ou inadequação de quaisquer condições de validade da icença ou mormas legais. ',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4757,334,'26','Responsável Tecnico pelo Licenciamento Ambinetal da atividade Luiz Alberto Dias dos Santos, Biólogo, CRBio-02:38286.',NULL,'2024-01-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4758,326,'1','Esta licença autoriza a operação da atividade de posto revendedor de combustíveis e GNV com troca de óleo a ser exercida pela empresa Posto Malacarne LTDA, localizada na Rua Angelo Zani, n° 349, Bairro Vila Independencia, Cariacica, ES, nas coordenadas 353725/7750990 (UTM, WGS 84, 24K) e com área de 1.320,00 m² e capacidade de armazenamento de até 90 m³ de combustives. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4759,326,'2','Fica proibido encaminhar à Coleta Pública Municipal os residuos perigosos - Classe I (estopas, trapos, óleo usado, borras do SSAO e demais resíduos contaminados) ou por estes contaminados. \r\n',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4760,326,'3','Apresentar relatório fotográfico que comprove a colocação, na entrada do empreendimento, de uma placa informativa com fundo branco, de facil visualização e leitura, nas dimensões mínimas de 120cm x 80cm.','S','2024-01-12','2024-01-29','2023-12-12',2,NULL,'\\\\ecoserver\\multidev\\clientes\\53\\326\\Cond_3.pdf',2,30),(4761,326,'4','Apresentar folha de puplicação no Diário Oficial do Estado e em jornal de grande circulação, informando a obtenção da licença ambiental. ','S','2024-01-12','2024-01-29','2023-12-12',1,NULL,'\\\\ecoserver\\multidev\\clientes\\53\\326\\Cond_4.pdf',2,30),(4762,326,'5','Renovar o Alvará de Licença do Corpo de Bombeiros Militar sempre que nescessário e mante-lo arquivado no empreendimento. ',NULL,'2024-11-20',NULL,'2024-10-20',2,NULL,NULL,5,0),(4763,326,'6','Renovar alavará de Funcionamento definitivo emitido pela Prefeitura Municipal de Cariacica. ',NULL,'2024-01-01',NULL,'2023-12-01',2,NULL,NULL,5,0),(4764,326,'7','Manter a correta segregação, identificação, acondicioanmento, armazenamento e destinação final de todos os resíduos gerados pelo empreendimento, respeitando a classificação de cada um, coforme as normas e dispositivos legais vigentes. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4765,326,'8','Apresentar, anualmente, relatorio de movimentação de todos os resíduos gerados (estopas, óleo lubrificante usado, borra do SSAO etc.), contendo no mínimo os seguintes dados: identificação do resíduo, fonte de geração, quantidade, formas de acodicionamento e armazenamento e destinação final. Os comprovantes da destinação dos resíduos a epresas licenciadas deverão ser arquivados na empresa para fins de fiscalização, juntamente com a licença ambiental da empresa coletora, nao sendo necessário apresentá-los. ','S','2024-03-12','2024-02-15','2024-02-12',1,NULL,'\\\\ecoserver\\multidev\\clientes\\53\\326\\Cond_8.pdf',5,90),(4766,326,'9','Quando a destinação dos resíduos sólidos não contaminados for venda para terceiros, doação ou reciclagem, o empreendimento deverá providenciar certificados ou declarações que contenham identificação do recebedor (CNPJ/CPF e nome completo) com assinatura, data da coleta, identificação dos resíduos, quantidades recolhida e destino final. Os comprovantes deverão ser aquivados no empreendimento pra fins de fiscalização. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4767,326,'10','Manter material absorvente (areia, pó de serra etc.) em local de fácil acesso, para ser utilizado em casos de acidentes e/ou derramento de material oleoso. Os resíduos gerados devem ser armazenados adequadamente, para posterior destinação como resíduos Classe I - perigosos. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4768,326,'11','Promover a destinação adequada das lâmpadas descartadas (fluorescente, descarga fluorescente, não fluorescente de baixa pressão, incandescente, vapor de sódio, mercúrio, luz mista etc.), pilhas, baterias, acumuladores de energia, embalagens de produtos venenosos e similares, observando o disposto nas Leis Municipais n° 5.334/2015 e n° 5.447/2015, na Resolução do CONOMA n° 401/2008, na Lei Federal n° 12.305/2010, ou demais dispositivos legais que vierem a substitui-los.\r\n',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4769,326,'12','Apresentar anuência da Coordenação de Saneamento Ambiental da Prefeitura Municipal de Cariacica, para lançamento dos efluentes oriundos do sistema de tratamento de efluentes sanitários na rede de drenagem pluvial. ',NULL,'2024-04-11',NULL,'2024-03-11',1,NULL,NULL,2,120),(4770,326,'13','Realizar, anualmente, caracterização físico-química do efluente oriundo do sistema de tratamento de efluentes, a fim de verificar a sua eficiência, por meio da investingação dos parâmetros pH, temperatura, materiais sedimentáveis, sólidos suspensos, DBO-20, óleos e graxas (óleos minerais, óleos vegetais e gorduras animais), materiais flutuantes, surfuctantes, turbidez, nitrogênio amonical total e oxigênio dissolvido, conduzindo a amostragem segundo condições da Resolução do CONOMA n° 430/11 e suas atualizações. \r\n\r\n13.1 - A coleta da amostra deverá ser realizada por técnico da empresa contratada para realizar a análise;\r\n13.2 - Deverão ser coletadas duas amostras, uma na entrada e outra na saída do sistema de tratamento;\r\n13.3 - O relatório da anáise deverá possuir cadeia de custódia e refistro fotográfico dos pontos de amostragem;\r\n13.4 - Todos os laudos deverão possuir identificação e assinatura dos técnicos responsáveis pela coleta e pela análise, função de cada um e o número da ART, quando aplicável;\r\n13.5 - A empresa deverá acompanhar os resultados e, caso algum dos parâmetros apresente valores acima di permitido pela legislação vigente, deverá imediatamente paralisar a atividade até que sejam sanados os problemas, comunicando o ocorrido a esta Subsecretaria de Meio Ambiente.\r\n',NULL,'2024-03-12',NULL,'2024-02-12',1,NULL,NULL,5,90),(4771,326,'14','Realizar limpeza e manutenção periódica no sistema de tratamento de efluentes sanitários, afim de manter a sua eficiência e manter os comprovantes da realização do serviço por empresa licenciada aquivados no empreendimento para fins de de fiscalização.',NULL,'2024-06-10',NULL,'2024-05-10',2,NULL,NULL,4,180),(4772,326,'15','Realizar limpeza e manutenção periodica no sistema separador de água e óleo, a fim de manter a sua eficiência e apresentar, anualmente, comprovantes da realização do serviço por empresa licenicada. Os resíduos gerdos devem ser armazenados adequadamente, para posterior destinação a empresas licenicadas. ',NULL,'2024-03-12',NULL,'2024-02-12',2,NULL,NULL,5,90),(4773,326,'16','Realizar, anualmente, caracterização físico-química dos efluentes gerados pelo sistema separador de água e óleo, a fim de verificar sua efiência, por meio da investigação dos parâmetros pH, temperatura, materiais sedimentáveis, óleos e graxas (óleos minerais, óleos vegetais e gorduras animais), materiais flutuantes, DBO5-20, sólidos suspensos, surfactantes, turbidez, nitrogênio amonical total e oxigênio dissolvido, conduzindo a amostragem segundo as orientações contidas no Standard Methods for the Examination of Water and Wastewater (edição atualizada). \r\n\r\n16.1 - A coleta da amostra deverá ser realizada por técnico da empresa contratada para realizar a análise;\r\n16.2 - Deverão ser coletadas duas amostras, uma na entrada e outra na saída do sistema de tratamento;\r\n16.3 - O relatório da anáise deverá possuir cadeia de custódia e refistro fotográfico dos pontos de amostragem;\r\n16.4 - Todos os laudos deverão possuir identificação e assinatura dos técnicos responsáveis pela coleta e pela análise, função de cada um e o número da ART, quando aplicável;\r\n16.5 - A empresa deverá acompanhar os resultados e, caso algum dos parâmetros apresente valores acima di permitido pela legislação vigente, deverá imediatamente paralisar a atividade até que sejam sanados os problemas, comunicando o ocorrido a esta Subsecretaria de Meio Ambiente.\r\n',NULL,'2024-03-12',NULL,'2024-02-12',1,NULL,NULL,5,90),(4774,326,'17','Caso haja Gás Natural Veicular (GNV), apresentar, anualmente, laudo de ensaio das condições de integridade de todas as instalações de GNV (vasos, tubulações etc.), de acordo com a norma da ABNT NBR n° 12.236, ou a que vier substituí-la, acompanhado da ART do profissional responsável. ',NULL,'2024-03-12',NULL,'2024-02-12',2,NULL,NULL,5,90),(4775,326,'18','A atividade de troca de óleo deverá ser realizada exclusivamente em local cercado por canletas, provido de cobertura e piso impermeabilizado. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4776,326,'19','Apresentar, a cada quatro anos, laudo técnico relativo a estanqueidade dos sistemas de armazenamento e distribuição de combustíveis (tanques, tubulações etc.) e do tanque subterrâneo de óleo lubrificante usado (se houver), emitido por profissional de nível superior habilitado e empresa certificada pelo imetro, ou entidade por ele credenciada. Os testes deverão observar as recomendações da norma ABNT NBR n° 13.784, ou vier substitui-la, preenchendo-se o laudo de estanqueidade dos sistemas conforme a referida norma. O laudo deve estar acompanhada da ART do profissional responsável e de documento que comprove a acreditação da empresa responsável no INMETRO. ',NULL,'2024-03-12',NULL,'2024-02-12',2,NULL,NULL,7,90),(4777,326,'20','Realizar limpeza e manutenção periódica nas câmaras de contenção das unidades de abastecimento, das unidades de filtragem de óleo diesel e das bocas de visita, descarga e monitoramento dos tanques. ',NULL,'2024-06-10',NULL,'2024-05-10',2,NULL,NULL,4,180),(4778,326,'21','Realizar constante manutençõ no piso das áreas de abastecimento e descrga de combustíveis, de modo a mantê-lo impermeabilizado e impedindo a contaminação do solo. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4779,326,'22','Seguir as exigencias da Lei Estadual n° 10.393/2015, ou a que vier substituí-la, quanto às regras de abastecimento de veículos. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4780,326,'23','Caso seja realizada a atividade de lavagem de veiculos, apresentar e implantar projeto para tratamento e reutilização dos efluentes gerados no lavador de veículos, conforme determinado pela Lei Estadual n° 9.439/2010, acompanhado da ART de profissional de nível superior legalmente habilitado. \r\n\r\n23.1 A lavagem de veículos deverá ocorrer, exclusivamente, em local provido de cobertura, piso impermeabilizado e com canaletas direcionando os efluentes para o sistema de tratamento e reutilização. \r\n23.2 Os produtos utilizados na lavagem dos veículos devem ser biodefradáveis, conforme exigido pela Lei Estadual 10.020 de 2013.',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4781,326,'24','Toda documentação a ser apresentada em atendimento ao cumprimento de condicionantes desta licença ambiental deverá seguir os preceitos estabelecidos pela Portaria SEMDEC n°07, de 30 de julho de 2019, ou a que vier substitui-la. \r\n',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4782,326,'25','Evitar eventuais transtornos aos vizinhos e ao meio ambiente, provocados por qualquer tipo de poluição. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4783,326,'26','Os ruídos gerados pelo desenvolvimento das atividade da empresa deverão atender aos limites estabelecidos pelas normas ABNT NBR n° 10.151 e ABNT NBR n° 10.152 e Resolução CONOMA n° 1 de 08/03/1990. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4784,326,'27','Caso haja reclamações da circunvizinhança em relação aos reídos, emissão de particulados ou odores gerados pela atividade e, sendo constatadas pela Equipe de Fiscalização da SEMDEC/Subsecretaria de Meio Ambiente, a empresa deverá apresentar e implantar um projeto de controle ao impacto correspondente. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4785,326,'28','Esta licença não implica em reconhecimento, por parte da Prefeitura Municipal de Cariacica, do direito de propriedade do imóvel/terreno. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4786,326,'29','Requerer renovação desta licença 120 (cento e vinte) dias antes do seu vencimento. ',NULL,'2033-08-12',NULL,'2033-07-12',1,NULL,NULL,2,3530),(4787,326,'30','Caso seja verificada a necessidade, durante todo o período de vigência desta licença, a SEMDEC poderá solicitar a realização de novos estudos, análises adequações ou melhorias que não constam nesta licença. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4788,326,'31','Caso haja interesse em realizar reforma, ampliação, alteração nos projetos e cronogramas apresentados ou realizar atividades diferentes das especificadas nesta licença, o empreendedor deverá comunicar previamente à SEMDEC/Subsecretaria de Meio Ambiente, que exigirá os documentos/projetos complementares para posterior autorização. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4789,326,'32','Esta Licença se refere apenas aos aspectos ambientais da atividade em questão e, conforme dispoto no Artigo 18 do Decreto Estadual n° 4039-R/2016, não exime o seu titular da apresentação, aos órgãos competentes, de outros documentos legalmente exigíveis. Também não inibe ou restringe de qualquer forma a ação dos demais árgãos e instituições fiscalizadoras nem desobriga a empresa da obtenção de autorizações, anuências, laudos, certidões, certificados ou outros documentos previstos na legislação vigente, sendo de sua responsabilidade a adoção de qualquer providência nesse sentido. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,2,0),(4790,326,'33','Caso a Empresa venha exercer atividades diferentes da especificada nesse processo, ou ainda, no caso de ampliação e reforma ou alteração nos projetos apresentados, ou encerramento das atividades da empresa no endereço vinculado \r\nà esta Licença Ambiental, deverá ser comunicado com antecedência à SEMDEC/Subsecretaria de Meio Ambiente, para adoção de medidas de controle ambiental pertinentes, em conformidade com a legislação ambiental vigente. ',NULL,'2023-12-13',NULL,'1899-12-30',2,NULL,NULL,1,0),(4791,326,'34','Em caso de encerramento ou paralização das atividades especificadas nesta licença, a SEMDEC/Subsecretaria de Meio Ambiente deverá ser previamente comunicada, para adoção das medidas cabíveis. ',NULL,'2023-12-13',NULL,NULL,2,NULL,NULL,1,0),(4792,326,'35','A contrução, a reforma, a ampliação, a instalação ou o funcionamento de estabelecimentos, obras ou serviços potencialmente poluidoras, contrariando as normas legais e regulamentarespertinentes, constitui crime contra o meio ambiente. ',NULL,'2023-12-13',NULL,NULL,2,NULL,NULL,1,0),(4793,326,'36','A SEMDEC não possui responsabilidade técnica sobre os projetos de sistemas de controle ambiental e programas apresentados, sendo a execução, operação, comprovação de eficiência e/ou gerenciamento dos mesmos, de inteira responsabilidade do próprio empreendedor e responsávies técnicos. ',NULL,'2023-12-13',NULL,NULL,2,NULL,NULL,1,0),(4794,326,'37','A obtenção da Licença não exime o titular da apresentação de outros documentos legalmente exigíveis aos demais orgãos competentes, não inibe ou restringe a ação dos demais orgãos e instituições fiscalizadoras, nem desobriga a empresa da obtenção de autorizações, anuências, laudos, certidões, certificados ou outros documentos previstos na legislação vigente, sendo de sua responsabilidade a adoção de qualquer providencia nesse sentido. Esta licença se refere apenas aos aspectos ambientais da atividade em questão. ',NULL,'2023-12-13',NULL,NULL,2,NULL,NULL,1,0),(4798,335,'1','Esta licença refere-se à atividade de Posto de Combustíveis, limitado a 01 tanque bipartido de diesel comum 10.000 lts e diesel S10 20.000 lts, 01 tanque bipartido gasolina comum 20.000 lts e 10.000 lts gasolina aditivada e 01 tanque 15.000 lts de diesel S10, totalizando 75.000 lts, enquadrada como potencial alto e porte médio, conforme Instrução Normativa 001/2024, ás coodenadas de referência UTM 24K SIRGAS 2000: 351588 E / 7930556 N.',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4799,335,'2','Esta licença não inibe ou restringe de qualquer forma a ação dos demais órgãos e instituições fiscalizadoras e não desobriga a empresa da obtenção de autorizações, anuências, laudos, certidões, certificados ou outros documentos previstos na Legislação vigente. ',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4800,335,'3','Apresentar relatório fotográfico, no prazo de 30 (trinta) dias, que comprove a instação, na entrada do empreendimento (à margem da rua principal) de uma placa informativa, de fácil visualização e leitura, com fundo branco, nas dimensões mínimas de 1.20m x 0,80m. ',NULL,'2024-03-16',NULL,'2024-02-16',2,NULL,NULL,2,30),(4801,335,'4','Realizar anualmente a cacterização físico-química dos efluentes das caixas separadoras de água e óleo, a fim de verificar sua efciência, através da investigação dos parâmetros de interesse (pH, sólidos sedimentáveis, sólidos suspensos, óleos e graxas), conduzindo a amostragem segundo orientações contidas no Standart Methods for examination of Water and Wastewater - 21 th Edition, apresentando os resultados conforme a Instrução Normativa do IEMA 02/2009.\r\n\r\nA - O resultado da primera análise deverá ser enviado em até 180 (cento e oitenta) dias. Se a SEMMA não se manisfetar quato aos resultados das três primeiras análises, através de ofício, os demais resultados deverão ser arquivados no empreendimento para apresentação quando solicitado;\r\nB - Caso algum dos parametros apresentem valores elevados, isto é, acima do permitido, consoante ao determinado pela Resolução CONOMA 357/05, Alaterda pelas Resoluções CONOMA n° 393/2007, n° 397/2008, n° 410/2009 e n° 430/2011, para lançamento de efluentes em corpo receptor, em qualquer um dos parâmetrosa analisados, a empresa deverá enviar a SEMMA ofício inofrmando da ocorrência e cópias das análises em anexo;\r\nC - Apresentar conforme Art. 2°, Inciso I, II e II da Portaria de Outorga n° 001, de 03 de janeiro de 2022 os devidos relatórios em conformidade com Instrução IEMA n° 15/16, nos prazos por elas definidos. ',NULL,'2024-08-13',NULL,'2024-07-13',1,NULL,NULL,5,180),(4802,335,'5','Apresentar relatório do sistema de monitoramento eletronico intersticial conforme Anexo D (modelo de laudo de estanqueidade no tanque - esquipamento permanente) a NBR 13874/2006 ou que vier a substituí-la. ',NULL,'2026-05-01',NULL,'2026-04-01',2,NULL,NULL,2,806),(4803,335,'6','Apresentar laudo relativo à integridade dos sistemas de armazenamento e distuibuição de combustíveis (tanques e tubulações), emitido por profissional habilitado e empresa certificada pelo INMETRO, acompanhado da devida ART. Os testes deverão observar as recomendações da NBR n° 13.784/2006, preenchendo-se o laudo de estanqueidade do SASC, conforme Anexo B da referida norma. Prazo para apresentação: acompanhada de o requerimento de renovação da Licença Municipal Ambiental de Operação. ',NULL,'2026-05-01',NULL,'2026-04-01',2,NULL,NULL,2,806),(4804,335,'7','Apresentar anualmente Alvará e atestado de vistoria de Corpo de Bombeiros. ',NULL,'2024-04-15',NULL,'2024-03-15',2,NULL,NULL,5,60),(4805,335,'8','Armazenar temporiamente todo material contaminado (óleo usado, embalagens plásticas de óleo lubrificante, ó de serra contaminados, trapos de tecidos, EPI\'s, plásticos, papelões, peças utilizadas e sedimentos inpregnados com óleo e/ou tintas, vasilhames de pintura e assemelhados) em área impermeabilizada e coberta, preferencialmente em tambores e/ou bais conforme o Padrão de Cores estabelecido pela Resolução CONOMA 275/2011, segregando-os conforme Norma ABNT - NBR 10004/2004. Apresentar relatório fotográfico do local e dos tambores em cores e padrão. ',NULL,'2024-05-15',NULL,'2024-04-15',2,NULL,NULL,2,90),(4806,335,'9','Destinar os Resíduos Classe I (óleo usado, embalagens plásticas de óleo lubrificante, pó de serra contaminado, trapos de tecidos, EPI\'s, plásticos, papelões, peças utilizadas e sedimentos impregnados com óleo e/ou tintas, vasilhames de pintura e assemelhados) somente a empresas devidamente licenciadas para a atividade, enviando semestralmente a SEMMA cópias das notas fiscais de alienação ou contrato firmado com empresa coletora de Resíduos Classe I. ',NULL,'2024-08-13',NULL,'2024-07-13',1,NULL,NULL,4,180),(4807,335,'10','O funcionamento do estabelecimento não poderá causar incômodo ao bem-estar da população. Caso seja verificada a nescessidade, durnate todo o período de vigência desta licença, a SEMMA poderá solicitar a realização de novas adequações e melhorias que não constam desta licença. ',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4808,335,'11','Toda documentação apresentada em atendimento às condicionantes ambientais desta licença deverá fazer referência às condicionantes e que se destina. Os documentos deverão estar devidamente rubricados, assinados e em suas vias originais acompanhados da respctiva Anotação de Responsabilidade Técnica, quando couber. Os documentos deverão ser apresnetadas via digital no Sistema SEMMA digital (forma PDF, desbloqueado para edição).',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4809,335,'12','Qualquer alteração de projeto/programa e escopo de operação dever´pa ser submetida à aprovação prévia da SEMMA, estando o titular da licença sujeito às penalidades previstas em lei caso não o faça.\r\n',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4810,335,'13','O não cumprimento das condicionates, penalizará a empresa com imposição da penalidadede multa, conforme previsto na Lei Municial n° 3.765/2023, e seus Decretos de regulamentação e de Fiscalização com previsão de embargo, ainda determinará a suspensão ou cassação da licença, conforme previsão da mesma lei.',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4811,335,'14','Promover manutenção periodica do sistema separador água e óleo de forma a não comprometer a eficiência do sistema, arquivando na empresa, relatório fográfico da manutenção/li,peza com comprovantes de destinação final dos resíduos gerados. Tais documentos deverão ser apresentados quando a da realização de ações de fiscalização e vistorias técnica de acompanhamento ou quando solicitado pela SEMMA. ',NULL,'2024-08-13',NULL,'2024-07-13',2,NULL,NULL,4,180),(4812,335,'15','A área da empresa deverá ser mantida limpa, os resíduos armazenados temporiamente no empreendimento deverão estar em local impermeabilizado e sob cobertura até sua destinação, no caso de resíduos oleosos o local deverá ser dotado de bacia de contenção. É proibida a queima a céu aberto de material potencialmente poluidor conforme Lei 3.765/23, Art. 113, Inc. I. ',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4813,335,'16','No caso de ocorrência de acidentes ou emergência, a SEMMA deverá ser imediatamente comunicada (através de contato telefônico, no momento da ocorrência), devendo ser também encaminhado oóficio devidamente assinado pelo responsável pelo empreendimento contendo as causas do acidente, a descrição do fato e as ações que foram adotadas para mitigar os impactos, em prazo máximo de 10 (dez) dias após o acidente. ',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4814,335,'17','Os níveis de ruído gerados no empreendimento deverão estar de acordo com os limites aceitáveis estabelecidos pela Resolução CONOMA n° 01/90 e Norma NBR 10.151/2010 e Lei 3.765/23, Seção XII. ',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4815,335,'18','Realizar programa de treinamento pessoal conforme Anexo 04 da IN IEMA n° 12/2006. Prazo para apresentação: Do requerimento de nova LMO',NULL,'2026-05-01',NULL,'2026-04-01',2,NULL,NULL,2,806),(4816,335,'19','Apresentar registro da Agência Nacional do Petróleo, Gás Natural e Biocombustível (ANP). ',NULL,'2024-08-13',NULL,'2024-07-13',2,NULL,NULL,2,180),(4817,335,'20','Apresentar anuência de interligação dos efluentes domésticos ao sistema coletor da concessionaria local CESAN, conforme programação de conclusão e interligação citado até 30/05/2022. \r\n\r\n20.1 - Em caso a Concessionária responder de forma indiferente do solicitado, apresentar anualmente nota fiscal e/ou recibos de empresas licenicadas pra recolhimentoe destinação final de lodo retido na fossa séptica e no filtro anaeróbico, no qual se deve determinar a hora e o dia que a fossa não receberá efluentes para execução desses serviços, ainda munido de relatório fotográfico com descrição nas fotos de toda ação. Prazo: 365 (tezentos e sessenta e cinco) dias. \r\n20.2 - Caso seja interligado ao sistema público os efluentes sanitários. Apresentar plano de desmobilização da fossa e ao mesmo apresentar comprovantes de destinação dos efluentes nelas contidos. Prazo: 90 (noventa) dias após interligação. ',NULL,'2024-05-15',NULL,'2024-04-15',2,NULL,NULL,2,90),(4818,335,'21','Promover a manutenção periódica/limpeza o sistema de drenagem (canaletase caixas de inspeção) da área de abastecimento e descarga de combustível, visando à drenagem dos efluentes gerados para o sistema separador de água e óleo. ',NULL,'2024-08-13',NULL,'2024-07-13',2,NULL,NULL,4,180),(4819,335,'22','Fica aprovado a implantação do Plano de Recuperação de Áreas Degradadas, conforme Protocolo Nº 2930 de 06/12/2021, desde que atendido as seguintes correções: 01) A área apresentada como forma de compensação e de 0,40ha, não conferindo conforme condicionante do TCA Nº 09/2020, Cláusula 3, item 3.23, que requer como forma de se obter relevância ecológica e se tratando de área de APP urbana que seja compensada cinco vezes a área ocupada, ou seja área de 0,9836ha. 02) Aumentar para 05 anos as manutenções, tendo em vista o grau de degradação da área apresentada e mesmo para que a mesma siga seu processo natural de regeneração. 03) Informar se vai ser envolvido cercamento na área para evitar entrada de animais. 04) Encaminhar cópia de nota fiscal das espécies adquiridas para plantio, resguardando o mínimo de 36 espécies por ha, conforme citado Fl.11 do PRAD. Apresentar Anualmente toda a evolução do PRAD implantado, sendo para o primeiro semestre a apresentação do preparo da área, cercamento,\r\npossíveis adubações, plantio, técnicas implementadas, controle de formigas, etc.',NULL,'2025-02-14',NULL,'2025-01-14',2,NULL,NULL,5,365),(4820,335,'23','Apresentar notas fiscais de compras dos novos tanques, onde possam conter o tipo de tanque adquirido, modelo, ano de fabricação, marca, e, todos os equipamentos obrigatórios para postos Classe 03, conforme preconiza a NBR 13786/05: válvulas de retenção instalada em linha de sucção, dispositivo para descarga selada, câmara de contenção da descarga de combustível, câmara de contenção sob a unidade abastecedora, câmara de contenção na unidade de filtragem, válvulas antitransbordamento e/ou esfera flutuante, alarme de transbordamento, monitoramento intersticial nos tanques, tanques de parede dupla fabricados conforme NBR 13785, e apresentar as cópias das notas fiscais dos mesmos, ou nota fiscal emitida pelo instalador, desde que conste a identificação do fabricante, o modelo e o número de série, observando as restrições citadas pela Norma ABNT NBR 13786/05 quanto à instalação das válvulas de retenção de esfera flutuante. Além das notas fiscais, apresentar relatório fotográfico de cada item instalado, conforme citado.',NULL,'2024-04-15',NULL,'2024-03-15',2,NULL,NULL,2,60),(4821,335,'25','Apresentação obrigatória da licença expedida pelo órgão ambiental sempre que a atividade for vistoriada.',NULL,'2024-02-15',NULL,'1899-12-30',2,NULL,NULL,1,0),(4822,335,'26','Solicitar renovação da licença, até 120 (cento e vinte) dias antes do seu vencimento.',NULL,'2026-05-03',NULL,'2026-04-03',1,NULL,NULL,2,808),(4823,326,'38','O não cumprimento das condicionantes penalizará a empresa com a inposição das sanções penais e administrativas previstas na legislação ambiental vigente. ',NULL,NULL,NULL,NULL,2,NULL,NULL,1,0),(4824,324,'13','Realizar periodicamente limpeza e manutenção das câmaras de contenção sob as unidades de abastecimento, SUMPs das bombas, descarga, filtragem de diesel e nas bocas de visitas dos tanques. ',NULL,'2024-06-09',NULL,'2024-05-09',2,NULL,NULL,4,30),(4825,324,'05','Manter o armazenamento de todos os resíduos sólidos contaminados (óleo usado, óleo sobrenadante do sistema separador de água e óleo, borra do sistema separador de água e óleo, vasilhames, trapos, etc.) Preferencialmente em tambores, e, área impermeabilizada e coberta, dotada  de bacia de contenção estanque. ',NULL,'2024-01-11',NULL,'2023-12-11',2,NULL,NULL,2,30),(4826,324,'06','Fica proibido encaminhar para coleta pública municipal ou para reciclagem os resíduos classe I - perigosos (óleo sobrenadante do sistema separador de água e óleo, borra do sistema separador de água e óleo, vasilhames, trapos, etc) devendo estes resíduos serem armazenados em local adequado (local coberto com piso impermeabilizado e contenção), destinados e/ou comercializados com epresas licenciadas pelo orgão ambiental. ',NULL,'2024-01-11',NULL,'2023-12-11',2,NULL,NULL,2,30),(4827,291,'12','Realizar periodicamente a limpeza e manutenção nas unidades do Sistema Separador de Água e Óleo - SSAo, a fim de manter a eficiencia das mesmas, armazenando adequadamente os resíduos gerados, em área impermeavel e coberta até sua destinação final realizada por empresa devidamente licenciada. ',NULL,'2023-10-15',NULL,'2023-09-15',2,NULL,NULL,4,180),(4828,291,'41','Para os casos de requerimento de renovação/nova licença formalizado com antecedencia inferior a 120 (cento e vinte) dias do vencimento desta licença. ',NULL,'2026-12-18',NULL,'2026-11-18',1,NULL,NULL,2,1340),(4829,336,'1','Esta licença é válida para a operação da atividade de Posto Revendedor de Combustiveis, com uso de qualquer tanque, ou Posto de Abastecimento de Combustíveis (não revendedor),com uso de tanque enterrado, com Capacidade de Armazenamento autorizado de 60m³, cujas coodenadas DATUM (SIRGAS 2000) 24k 371524 m E / 7963194 m S no Município de Pinheiros - ES. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4830,336,'2','Esta licença refere-se apenas aos aspectos ambientais da atividade e, portanto, não exime o seu titular da obrigação de obtenção, junto aos demais orgãos competentes, de outras licenças ou autorizações legalmente exigiveis. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4831,336,'3','Esta proibida a realização das atividades de lavagem de veículos e troca de óleo. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4832,336,'4','Comunicar a SEMAMA quaisquer alteração cadastrais ou mudança de tirularidade do empreendimento no prazo maximo de 15 (quinze) dias após a ocorrência. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4833,336,'5','Solicitar renovação da licença, até 120 (cento e vinte) dias antes do seu vencimento. ',NULL,'2027-10-01',NULL,'2027-09-01',1,NULL,NULL,2,1340),(4834,336,'6','Realizar levantamento de passivos ambientais por VOC na área do empreendimento, seguindo os termos da Instrução Normativa do IEMA N°02 de 22 de janeiro de 2007, apresentando os resultados a SEMAMA acompanhados da devida ART de elaboração e execução dos serviços, emitida por profissional habilitado, observando que as leituras deverão ser executadas a cada 01 (um) metro perfurado, até 04 (quatro) metros de profundidade até a ausência de valores mensuráveis de VOC, devendo-se, posteriormente, proceder à amostragem de solo e água subterrânea para análise laboratorial por cromotografia. ',NULL,'2025-12-01',NULL,'2025-11-01',1,NULL,NULL,2,0),(4835,336,'7','Realizar periodicamente limpeza das canaletas de drenagem da pista de abastecimento e descarga de combustível evitando que ocorra o extravasamento de efluentes, armazendnado adequadamente os resíduos gerados. ',NULL,'2024-07-28',NULL,'2024-06-28',2,NULL,NULL,4,180),(4836,336,'8','Apresentar, no prazo de 30 (trinta) dias, relatório fotográfico que comprove a colocação, na entrada do empreendimento de uma placa informatica, de facíl visualização e leitura, com fundo branco, nas dimensões minimas de 1.20m x 0,80m. ',NULL,'2024-02-29',NULL,'2024-01-29',2,NULL,NULL,2,30),(4837,336,'9','Apresentar folha original de puplicação, tornando público à obtenção da Licença Municipal de Operação (LMO), no Diário Oficial do Estado, e em jornal de grande circulação, no local de abrangência da atividade licenicada. ',NULL,'2024-02-29',NULL,'2024-01-29',1,NULL,NULL,2,30),(4838,336,'10','O funcionamento do estabelecimento não poderá causar incômodo ao bem-estar da população, ressalvando-se a SEMAMA o direito de solicitar a realização de novas adequações e mehorias que não constam nesta listagem de exigências, caso seja verificada a necessidade, durante todo o período de vigência desta licença. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4839,336,'11','Adotor tambores/caixas para acondicionamento temporário de resíduos e identificar com placas respectivas de acorodo com a sua tipologia, conforme o sistema adotado pelo município (Seco e Únido) estes resíduos deverão ser disponibilizados para coleta conforme cronograma estabelecido pela prefeitura. ',NULL,'2024-02-29',NULL,'2024-01-29',2,NULL,NULL,2,30),(4840,336,'12','Os resíduos sólidos gerados na empresa, passíveis de reciclagem, deverão ser corretamente acondicionandos e destinados preferenciamente para Associação de Catadores de Metriais Reciclaveis de Pinheiros-ES.','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4841,336,'13','Instalar e armazenar tambores/baias para acondicionamento de todos os resíduos sólidos contaminados Classe I (óleo uado, borra do sistema SAO, vasilhames de óleo lubrificante, trapos, pó de serra contaminado, trapos de tecidos, EPTs etc) em área impermeabilizada e coberta (preferenicamnete em tambores identificados), dotada de bacia de contenção estanque ou drenagem oleosa interligada ao Sistema SAO, de acordo com Resolução CONOMA 275/2011, segregando - conforme Norma ABNT - NBR 10004/2004. ',NULL,'2024-02-29',NULL,'2024-01-29',2,NULL,NULL,2,30),(4842,336,'14','Fica proibida ecaminhar para a Coleta Publica Municipal os Residuos Solidos Classe I - Perigosos (borra do sistema SAO, vasilhames de óleo lubrificante, trapos etc.) licenicadas pelo Órgão Ambiental, mantendo arquivados os documentos que comprovem a efetiva destinação ou comercialização. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4843,336,'15','Apresentar anualmente a SEMAMA relatorio de movimentação de todos os resíduos sólidos gerados no empreendimento de acorodo com a tabela que consta no Anexo I, classificando-os conforme a ABNT-NBR 10004/2004, discriminando as fontes de geração, a carcterização, classificação, as quantidades geradas, a segregação, a coleta, o modo de acondicionamento e armazenamento temporário, o transporte, a reciclagem, a reutilização o tratamento e a disposição final e copias das notas fiscais de alienação ou contrato firmado com empresa coletora de Residuos Classe I, mantendo arquivado cópia da LO das empresas receptoras para apresentação à fiscalização sempre que solicitado. ',NULL,'2025-01-29',NULL,'2024-12-29',2,NULL,NULL,5,365),(4844,336,'16','Promover constantemente a limpeza e arrumação de toda a área da empresa, a fim de remover o material que se depositar no chao. O material proveniente da varrição deverá ser armazenado em local coberto, em bacias restritas ou ensacado, protegido das intempéries (tais como chuva e vento), além de ser corretamente destinado. ','S','2024-07-28',NULL,'2024-06-28',2,NULL,NULL,4,180),(4845,336,'17','Realizar periodicamente a logistica reversa dos resíduos gerados na atividade que estão enquadrados no Art. 33 da Política Nacional de Resíduos Sólidos Lei 12.305/2010. ','S','2024-07-28',NULL,'2024-06-28',2,NULL,NULL,4,180),(4846,336,'18','Apresentar Dispensa e/ou Outorga de Direito e Uso dos Recursos Hídricos subterrâneo, conforme critérios e procediemntos estabelecidos pela Instrução Normativa AGRH n° 002/2019. ',NULL,'2024-05-29',NULL,'2024-04-29',2,NULL,NULL,2,120),(4847,336,'19','Fica proibido o lançamento de efluentes oleosos (provenientes do Sistema Separador de Água e Óleo - SSAO) em sumidouro ou rede de drenagem pluvial, e não deve reutilizar esses efluentes sem antes passar por um sistema de tratamento adequado. O sistema SAO traballha apenas com a decantação, não retirando óleo dissolvido, odor e turbidez. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4848,336,'20','Implantar na saída do SSAO uma caixa/compartimento estanque e destinar o efluente para empresa ambientalmente adequada e licenciada, apresentando os comprovantes à SEMAMA ou impalntar um sistema de trtamento e reutilização do efluente industrial gerado ou apresentar uma nova solução ambientalmente adequada elaborado por profissional habilitado e acompanhado do projeto com memorial de cálculo e descritivo justificado, acompanhado da Anotação de responsabilidade Técnica - ART. ',NULL,'2024-03-30',NULL,'2024-02-29',2,NULL,NULL,2,60),(4849,336,'21','Caso a solução adotada seja o reuso do eflunte proveniente do SSAO, realizar anualmente a caracteriação físico-quimica dos efluentes da caixas separadoras de água e óleo, a fim de verificar sua eficiencia, atravez da investigação dos parâmetros pH, sólidos sedimentáveis, sólidos suspensos, óleos e graxas, conduzindo a amostragem segundo orientações contidas no Standart Methods for examination of Water and Wastewater - Última Edição, apresentando os resultados conforme a Instrução Normativa do IEMA 02/2009;\r\n \r\n21.1 - O Resultado da primeira análise deverá ser enviado em até 60 (sessenta) dias. \r\n\r\n21.2 - Caso algum dos parâmetros apresente valores elevados, isto é, acima do permitido, consiante ao determinado pelas Resoluções do CONOMA 357/2005 e 430/2010 para lançamentos de efluentes em corpo receptor, a empresa deverá enviar a SEMAMA ofício informando da ocorrência e cópias das análise em anexo, acompanhado de proposta de adequação. \r\n\r\n21.3 - Caso o empreendedor implante na saída do SSAO, um compartimento estanque e destine o efluente gerado para empresa especializada, não será necessário a apresentação das análises do efluente gerado na atividade. \r\n\r\n21.4 - Após a comprovação da implantação da solução ambientalmente adequada para destinação dos efluentes esta condicioante tornará sem efeito. ',NULL,'2024-03-30',NULL,'2024-02-29',1,NULL,NULL,5,60),(4850,336,'22','Realizar periodicamente limpeza e manutenção nas caixas separadoras de água e óleo, a fim de manter a eficiencia das mesmas, armazenando adequadamente os resíduos gerados. Deverá ser apresentado relatório fotográfico comprobatório das etapas antes, durante e depois da primeira limpeza incluindo o interior das caixas. ','N','2024-07-28',NULL,'2024-06-28',2,NULL,NULL,2,180),(4851,336,'23','Apresentar manifestação do titular do serviço de saneamento refewrente à ligação na rede coletora de esgoto dos efluentes sanitários (domésticos)',NULL,'2024-07-28',NULL,'2024-06-28',2,NULL,NULL,2,180),(4852,336,'24','Como forma de compensação ambiental pelo empreendimento esta implantado em Área de Preservação Permanente (APP), deverá ser apresentado Plano de Recuperação de Áreas Degradadas (PRAD), de área igual, no mínimo, ao dobro da ocupada pelo empreendimento em APP. Deve-se primeiro, contatar a SEMAMA, no intuito de definir a área a ser recuperada na mesma bacia hidrográfica. O projeto deverá ser elaborado por um profissional habilitado e de acordo com a Instrução Normativa n° 017/2006 do IEMA, contemplando: I) croqui da área; II) inventario quali-quantitativo das espécies a serem utilizada e III) relatorio fotografico detalhado mostrando o estagio atual da área obejto deste projeto. Somente poderão ser utilizadas espécies nativas da região. ',NULL,'2024-03-30',NULL,'2024-02-29',2,NULL,NULL,2,60),(4853,336,'25','Renovar os testes relativos à intergridade dos sistemas de armazenamento e distribuição e combustíveis (tanques e tubulações), emitido por profissional habilitado e acompanhados da devida ART. Os testes deverão observar as recomendações da NBR n° 13.784/2006, preenchendo-se o laudo de estanqueidade do SASC, conforme Anexo B da referida norma. ',NULL,'2025-12-01',NULL,'2025-11-01',2,NULL,NULL,2,0),(4854,336,'26','Manter atualizado o atestado de vistoria do Corpo de Bombeiros, arquivando-o no empreendimento para envio a SEMAMA quando solicitado. ',NULL,'2024-03-30',NULL,'2024-02-29',2,NULL,NULL,5,60),(4855,336,'27','Realizar anualmente treinamento com todos os funcionarios da empresa, quanto à importância da proteção ambinetal,mitigação dos impactos causados pela atividade e segregação dos resíduos gerados e sua destinação correta, principalmente os resíduos oleosos. O treinamento deverá contemplar, também, as orientações listadas nas condicionantes desta licença. Prazo para apresentação do Relatório fotográfico da execução e conteúdo de capacitação do primeiro treinamento: 60 (sessenta) dias.',NULL,'2024-03-30',NULL,'2024-02-29',2,NULL,NULL,5,60),(4856,336,'28','Realizar periodicamente limpeza e manutenção das Câmaras de Contenção da Descarga de Combustivel, das Bombas de Abastecimento, Unidade de Filtragem e da Camara de acesso à boca-de-visita dos tanques, armazenando adequadamente os resíduos gerados. ','S','2024-07-28',NULL,'2024-06-28',2,NULL,NULL,4,180),(4857,336,'29','Implantar barreira físicas no local aonde será instalado o compressor de ar, visando impedir o extravasamento para fora da área impermeabilizada em caso de vazamento de óleo do equipamento. Deverá ser apresentado relatório fotográfico comprobatório da localização do compressor e instalação de barreiras físicas. ',NULL,'2024-03-30',NULL,'2024-02-29',2,NULL,NULL,2,60),(4858,336,'30','Os Equipamentos utilizados no empreendimento deverão passar por frequente manutenção para que se esnquadrem nos padrões e normas exigidas quanto segura, emissão de poluentes e geração de ruídos. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4859,336,'31','Comunicar previamente a SEMAMA qualquer modificação no processo produtivo ou no layout da empresa. Sendo que, caso as modificações provoquem alterações nas caracteristicas qualitativas ou quantitativas dos efluentes/resíduos gerados, nos dos controles ambientais estabelecidos, no aumento da produção e/ou área útil do empreendimento, somente será permitida a realização das modificações após manifestação oficial favoravél da SEMAMA, que poderá se condicionar à obtenção de licença de ampliação.  ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4860,336,'32','Os projetos deverão ser apresnetados em pastas próprias, encadernados, em tamanho A4, com os desenhos apresnetados em tamanho A3 da ABNT, acompanhados de uma cópia em meio digital, e vir acompanhados nos números de registro nos respctivos Conselhos de Classe dos profissionais responsáveis técnicos pela implantação e execução dos mesmos, além das respectivas ARTs. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4861,336,'33','Toda documentação apresnetada em atendimento às condicionantes ambientais desta licença deverá fazer referenica ao processo e a condicionate a que se destina. Os documentos deverão estar devidamente rubricados, assinados e em suas vias originais acompanhados da respectiva Anotação de responsabilidade Técnica, quando couber. Os documentos deverão ser apresentados em via impressa e digital (formato PDF, desploqueado para edição). Toda documentação apresnetada em atendimento às condicionantes ambientais desta licença deve estar acompanhada de Ofício à SEMAMA. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4862,336,'34','No caso de ocorrência de acidentes ou emergências ambientais, a SEMAMA deverá ser imediatamente comunicada, devendo ser também encaminhado relatório devidamente assinado pelo responsável legal pelo empreendimento contendo as cauas do acidente, a descrição do fato e as ações que foramadotadas para mitigar os impactos, em prazo máximo de 15 (quinze) dias após o acidente. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4863,336,'35','É obrigatória a apresentação da Licença expedida pelo Órgão Ambiental sempre que a atividade for vistoriada. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4864,336,'36','A contagem do prazo da licença e das condicionates acima se inicia a partir da expedição da mesma. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4870,337,'1','Esta licença refere-se as atividades de Operação do posto revendedor de combustiveis com capacidade instalada de 70m³, oficina para troca de óleo e local de conveniencia instalada. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4871,337,'2','Esta licença foi emitida com base do Decreto Municipal 13.356/2024. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4872,337,'3','Apresentação obrigatória da licença expedida pelo orgão ambiental sempre que a atividade for vistoriada. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4873,337,'4','A contagem do prazo desta licença e das condicionantes se inicia a partir do recebimento da mesma. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4874,337,'5','Requerer renovação desta licença até 120 (cento e vinte) dias antes do seu vencimento. ',NULL,'2027-10-24',NULL,'2027-09-24',1,NULL,NULL,2,1340),(4875,337,'6','Apresentar relatório fotográfico que comprove a instalação na entrada do empreendimento (às margens da rodovia BR 482 no acesso ao posto) de placa informativa, de facil visualização e leitura, com fundo branco, com as dimensaoes mínimas de 1,2 m x 0,80 m. ',NULL,'2024-03-13',NULL,'2024-02-13',2,NULL,NULL,2,20),(4876,337,'7','Apresentar cópia de puplicação no Diário Oficial do Estado e em jornal de Grande circulação na região de abrangencia do empreendimento, informando que obteve desta SEMADS, Licença Prévia e de Instalção, para a atividade requerida, conforme Anexo III do Decreto n° 13.356/2024. ',NULL,'2024-03-08',NULL,'2024-02-08',1,NULL,NULL,2,15),(4877,337,'8','Realizar semestralmente caracterização fisico-quimica do efluente industrial de cada da caixa separadora de água e óleo existente, a fim de verificar sua eficiencia conforme resolução CONOMA 430/2011 e instrução Normatica IEMA 15/2016 e encaminhar cópias dos ressultados à SEMADS. Ver condicionante 26. ',NULL,'2024-06-22',NULL,'2024-05-22',1,NULL,NULL,4,120),(4878,337,'9','Deverá ser realizada a limpeza periódica das caixas SAO, sendo que os esíduso deverão ser acondicionados de forma adequada e destinados à empresa devidamente licenicada para transporte e destinação deste resíduo. ',NULL,'2024-08-20',NULL,'2024-07-20',2,NULL,NULL,4,180),(4879,337,'10','Desenvolver Plano de Comunicação Social (PCS), conforme Instrução Normativa do IEMA n° 02/2018. Apresentar os relatórios conforme modelos anexos a IN, acompanhados de registro fotografico com lista de comparecimento às atividade. ',NULL,'2024-06-21',NULL,'2024-05-21',2,NULL,NULL,2,120),(4880,337,'11','Desenvolver Projeto de Educação Ambiental para Trabalhadores (PEAT), conforme Instrução NOrmativa n° 02/2018. Apresentar os relatorios conforme modelos constantes na IN, acompanhados de registro fotografico com lista de comparecimento às atividades. ',NULL,'2024-06-21',NULL,'2024-05-21',2,NULL,NULL,2,120),(4881,337,'12','Deverá ser elaborado Plano de Áção Emergênica (PAE) para o caso de acidentes decorrentes das atividades necessárias a operação do empreendimento. Este PAE deverá ser apresentado a SEMADS para análise. Deverá ser descrito ações a serem executadoas em caso de acidnetes na área do empreendimento. ',NULL,'2024-04-22',NULL,'2024-03-22',2,NULL,NULL,2,60),(4882,337,'13','Realizar treinamento para atedimento a emergencias ambientais e operacionais ministrado por empresa ou profissional habilitado, com a respectiva anotação de responsabilidade tecnica (ART), quando couber. Deverá ser apresentado relatorio fotografico comprobatório da realização do treinamento, acompanhado de relatorio contendo o resumo do conteudo apresentado e cópia dos certificados de realização do treinamento. Ver condicionante 15.',NULL,'2024-06-21',NULL,'2024-05-21',2,NULL,NULL,2,120),(4883,337,'14','Os resíduos reutilizaveis e/ou reciclaveis (papel, papelão, plastico, metal, aluminio, entro outros) devrão ser detinados pelo empreendimento, conforme Portaria (municipal) n° 4.543 de 27 de dezembro de 2022, preferencial, para Associação de Catadores de Materiais Reciclaveis de Alegre - ASCOMA, sendo de responsabilidade do gerador a entrega destes materiais. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4884,337,'15','Manter todo o resíduo oleoso, resíduos contaminados e óleo usado armazenado preferencialmente em tambor fechado, em área impermeabilizada, dotada de bacia de contenção estanque. Enviar relatorio fotografico-descritivo. ',NULL,'2024-04-22',NULL,'2024-03-22',2,NULL,NULL,2,60),(4885,337,'16','As baias de armazenamento temporário/definitiva de resíduos perigosos, resíduos comuns e reciclaveis devrão possuir placa de identificação do local, indicando o tipo de residuos armazenado, caso exista esse local. Caso fiquem adjacentes uma a outra, deverá haver separação fisica entre elas que evite o contato dos residuos cad tipo e deverão possuir proteção contra intempéries. ',NULL,'2024-04-22',NULL,'2024-03-22',2,NULL,NULL,2,60),(4886,337,'17','Manter as áreas de armazenamento de resíduos com sinaização permanente em bom estado de conservação informando do armazenamento de residuos contaminados. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4887,337,'18','Apresentar copia do contrato de prestação de serviço e copia das licenças para transporte e destinação dos residuos mencionados nas condicionantes n° 08, 09, 15 e 16, quando se tratar de resíduos provenientes das caixas SAO, de outros residuos oleosos e/ou perigosos, ou quando couber licença ambinetal para atividade de destinação de residuos requisitada, relativas à empresa contratada para esse fim. ',NULL,'2024-03-23',NULL,'2024-02-23',2,NULL,NULL,2,30),(4888,337,'19','Fica proibido encaminhar à coleta puplica municipal ou para reciclagem os residuos classe I - perigosos (óleo sobrenadante do sistema separador de água e óleo, borra de sistema separador de água e óleo, vasilhames, trapo ou qualquer material contaminado por que seja considerado perigoso), devendo estes redisuos serem armasenados em local adequado (local coberto, com piso impermeabilizado e cntenção contra vazamentos) e destinados e/ou comercializados com empresas licenciadas pelo orgão ambiental competente (licença para transporte, licença da empresa que recebrá). ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4889,337,'20','Apresentar anualmente relatorio informativo sobre a movimentação e destinação de residuos e encaminhar documentação comronatoria (ertificados, manifestos de transportes de residuos, documentos comprobatorios de doação, destinação final, todos devidamente assinados pelo receptor). ',NULL,'2025-02-21',NULL,'2025-01-21',2,NULL,NULL,5,365),(4890,337,'21','Realizar teste de estanqueidade de todo o sistema de armazenamento e tubulações conforme legislação vigente com apresentação de laudo e anotação de responsabilidade tecnica do profissional. ',NULL,'2027-10-24',NULL,'2027-09-24',2,NULL,NULL,2,1340),(4891,337,'22','Na área de abastecimento, promover manutenção contínua nos fltros de abastecimento e nas respectivas bombas de abastecimento, visando evitar quaisquer tipos de vazamentos e, caso algum vazamento seja observado, realizar o concerto imediatamente. Se verificado quaisquer vazamentos de combustiveis em ações fiscalizatorias, além de multa, o empreendedor poderá sofrer embargo de sua atividade, sem prejuizo das demais sanções cabiveis.','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4892,337,'23','Recomenda-se a instalação de Sistema de Aproveitamento de Água de Chuva para minimizar o uso de recursos hídricos e reduzir a demanda por água fornecida pela concessionária local para usos em que não s exige utilização de água potável. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4893,337,'24','Todos os laudos apresentados deverão conter analise critica, com conclusão e recomendações acerca dos estudos apresentados, conforme IN (IEMA) 02/2009 e IN (IEMA) 015/2016. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4894,337,'25','Apresentar laudo emitido por empresa certificada pelo Instituto Nacional de Metrologia, Normatização e Qualidade Industrial - INMETRO, ou entidade por ele credenciada, atestando que o posto possui todos os equipamentos e sisetmas obrigatorios de acordo com a classe IV, conforme legislação e normas aplicáveis. ','N','2025-02-21',NULL,'2025-01-21',2,NULL,NULL,6,365),(4895,337,'26','Realizar levantamento de passivos ambientais por VOC na área do empreendimento, seguindo os termos da instrução normativa IEMA 02 de 22 de janeiro de 2007, ou a que vier a substitui-la, apresentando os resultados a SEMADS acompanhados da devida anotação de responsabilidade técnica (ART) de elaboração e execução dos serviços, emitida por profissional habilitado, observando a legislação e normas aplicaveis para a medição. No relatorio a ser apresentado, deverá constar as leis, normas e/ou regulamentos utilizados como referencia para execução do levantamento de campo e elaboração do relatorio. \r\nPrazo para primeia entrega JUlho de 2025. Quando da solicitação de renovação da Licença de Operação. ',NULL,'2025-07-01',NULL,'2025-06-01',2,NULL,NULL,7,0),(4896,337,'27','Realizar limpeza anual das câmaras de contenção sob as unidades de abastecimneto, bombas, descarga, unidade de filtragem de diesel e nas bocas de visitas dos tanques, enviar relatorio fotografico descritivo comprovando o cumprimento. ',NULL,'2025-02-21',NULL,'2025-01-21',2,NULL,NULL,5,365),(4897,337,'28','Doação de 262 (duzentas sessenta e duas) mudas de espécies de porte arbóreo de vegetação nativa típica da região de Alegre com apresentação da lista de mudas proposta para aprovação prévia pela SEMADS e indicação do local de entrega da MUda. Após a aquisição das mudas deverá ser apresnetada Nota Fiscal emitida pelo local de aquisição das mudas. A garantia da qualidade das mudas e aclimatação dsta antes da entrega no local designado pela SEMADS é de responsabilidade é de responsabilidade do empreendimento. ',NULL,'2024-05-22',NULL,'2024-04-22',2,NULL,NULL,2,90),(4898,337,'29','No processo de execução do aterro durnate a vigencia da LP/LI 08/2023/CLASSE IV/SEMADS foi executado aterro. Deverá ser apresnetado relatorio técnico informando a origem do material recebido e a(s) copia(s) da(s) licenças ambientais que autorizam a retirada do solodo local de origem. ',NULL,'2024-03-23',NULL,'2024-02-23',2,NULL,NULL,2,30),(4899,337,'30','Apresentar relatório técnico, incluindo fotos, do acompanhamento da compactação do solo assinado por profissional habiltado. ',NULL,'2024-03-23',NULL,'2024-02-23',2,NULL,NULL,2,30),(4900,337,'31','Comunicar a SEMADS da finalização das atividade instalação do empreendimento, visto que este encontra-se com algumas atividades de instalação em processo de finalização. ',NULL,'2024-03-23',NULL,'2024-02-23',2,NULL,NULL,2,30),(4901,337,'32','Executar projeto de educação ambiental anualmente para a comunidade de entorno do empreendimento. O projeto deverá ser apresentado previamente a SEMADS para aprovação antes da execução. ',NULL,'2025-02-21',NULL,'2025-01-21',2,NULL,NULL,5,365),(4902,337,'33','Contribuir anualmente com a manutenção da Unidade de Conservação Laerth Paiva Gama. Deverá serm apresentado proposta previamente a SEMADS para aprovação. ',NULL,'2025-02-21',NULL,'2025-01-21',2,NULL,NULL,5,365),(4903,337,'34','Apresentar projeto previamente a SEMADS, para aprovação, e executar medida compensatória em espaço de convivencia conforme aprovado pela resolução do Conselho do Plano Diretor Municipal de Alegre - CMPDA quando da aprovação dos resultados das analises o Estudo de Impacto de Vizinhança - EIV solicitados na LP/LI n° 008/2023/CLASSE IV/SEMADS. ',NULL,'2024-05-22',NULL,'2024-04-22',2,NULL,NULL,2,90),(4904,337,'35','Renovar anualmente o atestado de vistoria do corpo de bombeiros e arquivar no empreendimento para enviar ao IEMA quando solicitado. ',NULL,'2025-02-21',NULL,'2025-01-21',2,NULL,NULL,5,365),(4905,337,'36','Aplicar, no que couber, os termos na IN n° 12 (IEMA), de 25 de outubro de 2006. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4906,337,'37','Comunicar a SEMADS em caso de alterações cadastrais ou a mudança de titularidade do empreendimento no prazo maximo de 15 dias após a alteração ou a mudança. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4907,337,'38','Comunicar a SEMADS a paralização da atividade da empresa, no prazo maximo de 15 (quinze) dias apos a paralização, e ainda atender aos seguintes critérios, conforme sua aplicabilidade:\r\n\r\na - Em caso de paralização com encerramento das operações, a empresa deverá solicitar o arquivamento do processo e apresentar relatorio de desmobilização e/ou de descaracterização da atividade, acompanhado de cronograma. \r\nb - Em caso de paralização com encerramento das operações e impossibilidade de desmobilização e/ou descaracterização da atividade deverão ser apresentadas as justificativs técnicas para análise e provação da SEMADS. \r\nc - Para demais casos relacionados à paralização deverão ser adotadas as justificativas técnicas para analise e aprovação da SEMADS. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4908,337,'39','Em caso de mudança no layout e projetos apresentados, os quais possam ensejar aumento qualitativo ou quantitativo dos efluentes e/ou resíduos gerados, alterações nos controles ambinetais estabelecidos, ou no aumento da produção e/ou área útil do empreendimento, o empreendedor deverá providenciar consultar prévia à SEMADS e obter autorização ou nova licença (se for o caso), antes de qualquer intervenção, sob pena de embargo das atividades e sem prejuizo das demais sanções. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4909,337,'40','O funcionamento do estabelicemento não poderá causar incomodo ao bem estar da População. Caso seja verificada a necessidade, durante todo o periodo devigencia desta licença, a SEMADS deverá solicitar a realização de novas adequações e melhorias que não constam desta licença. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4910,337,'41','Deverão ser respoeitados os limites de emissão de ruidos e outras exigencias previstas na Lei Municipal 2.685/2005 ou a que vier a substitui-la. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4911,337,'42','Todo relatorio de cumprimento de condicionantes deverá ser protocolado, em protocolo especifico e vinculado ao processo de analise desta Licença de Operação, no sistema da SEMADS de forma individualizada e com identificação clara da condicionante a que se refere, sob pena de não aceitação da documentação pela SEMADS. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4912,337,'43','Outros niveis de controle proderão ser propostos futuramente pela SEMADS, caso seja identificada alguma necessidade durante as fiscalizações, monitorando e apresentação de outros estudos ambientais solicitados. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4913,337,'44','Esta licença se refere apenas aos aspectos ambientais da atividade em questão e nao exime o seu titular da apresentação, aos orgãos competentes, de outros documentos legalmente exigiveis. Também não impede a ação dos demais orgãos e instituições fiscalizadoras e nem desobriga a empresa da obtenção de autorizações, anuências, laudos, certificados ou outros documentos previstos na legislação vigente, sendo de sua responsabilidade a adoção de qualquer providencia nese sentido. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0),(4914,337,'45','A construção, reforma, ampliação, instalação ou funcionamento de estabelecimentos, obras ou seviços potencialmente poluidores, contrariando as normas legais e regulamentares pertinentes, constitui crime contra o meio ambiente, sujeita as penalidade previstas na legislação vigente. ','S',NULL,NULL,NULL,2,NULL,NULL,1,0);
/*!40000 ALTER TABLE `condicionante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pessoa` int DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  `endereco` varchar(120) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pessoa_idx` (`id_pessoa`),
  CONSTRAINT `fk_email_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pessoa` int DEFAULT NULL,
  `descricao` varchar(45) NOT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `id_uf` int NOT NULL,
  `id_municipio` int NOT NULL,
  `id_bairro` int NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` int DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_uf_idx` (`id_uf`),
  KEY `fk_municipio_idx` (`id_municipio`),
  KEY `fk_bairro_idx` (`id_bairro`),
  KEY `fk_pessoa_idx` (`id_pessoa`),
  CONSTRAINT `fk_endereco_bairro` FOREIGN KEY (`id_bairro`) REFERENCES `bairro` (`id`),
  CONSTRAINT `fk_endereco_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id`),
  CONSTRAINT `fk_endereco_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `fk_endereco_uf` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (2,1,'Principal','29440000',8,97,2048,'ROD. ES 297',NULL,NULL),(3,2,'Principal','29845000',8,58,202,'AV RIO DE JANEIRO CENTRO ',NULL,NULL),(7,6,'Principal','29101641',8,130,1694,'Avenida Professora Francelina Carneiro Setúbal',333,NULL),(12,7,'Principal','29101291',8,130,1727,'Rua Ceará',1519,NULL),(13,10,'Principal','29107010',8,130,1673,'Rua Luciano das Neves',1444,NULL),(14,11,'Principal','29938300',8,121,1273,'Rodovia Othovarino Duarte Santos',731,NULL),(16,13,'Principal','29785000',8,129,2050,'AVENIDA FRANCISCO,PADRE',NULL,'QDA 57 LOTE 189'),(17,12,'Principal','29395000',8,79,2051,' AVENIDA MARIO ANDREAZZA',NULL,NULL),(18,14,'Principal','29830000',8,102,2052,'RODOVIA NOVA VENECIA A COLATINA',NULL,NULL),(19,15,'Principal','29830000',8,102,2053,' RODOVIA XV DE NOVEMBRO',1880,NULL),(20,16,'Principal','29175719',8,123,1425,'Rua Nove',277,NULL),(21,17,'Principal','29970000',8,104,2054,'RODOVIA BR 101 NORTE',NULL,NULL),(22,18,'Principal','29645000',8,116,1087,'AVENIDA FREDERICO GRULKE',1076,NULL),(24,19,'Principal','29645000',8,116,1108,'RUA ARTHUR LEMKE',126,NULL),(26,20,'Principal','29615000',8,91,916,'DAVID SCHRAIBER',141,NULL),(27,21,'Principal','29640000',8,115,1055,'PREFEITO HELIO ROCHA',125,NULL),(28,22,'Principal','29400000',8,97,2057,'ESTRAD MIMOSO SAO PEDRO',NULL,' KM 13 TREVO DA FAZE'),(29,23,'Principal','29645000',8,116,2055,'RODOVIA DALMACIO ESPINDULA',275,'LOJA B'),(30,24,'Principal','29154645',8,62,268,'RODOVIA GOVERNADOR JOSE HENRIQUE SETTE',5397,NULL),(31,25,'Principal','29156507',8,62,331,'RODOVIA GOVERNADOR JOSE HENRIQUE SETTE',NULL,NULL),(32,26,'Principal','29830000',8,102,2052,'Z UM, 15',NULL,NULL),(33,27,'Principal','29650000',8,117,1195,'RUA BERNADINO MONTEIRO',744,NULL),(34,28,'Principal','29107190',8,130,1673,'RUA CHARLES DARWIN',240,NULL),(36,29,'Principal','29845000',8,58,2058,'TANCREDO DE ALMEIDA NEVES,PRES',87,NULL),(38,30,'Principal','29450000',8,52,2071,'AVENIDA FLORENTINO AVIDOS',NULL,NULL),(39,31,'Principal','29135000',8,127,2072,'BR 101/262 KM 14',NULL,NULL),(40,32,'Principal','29830000',8,102,1025,'RUA OESTE',56,NULL),(41,33,'Principal','29880000',8,99,2073,'ASDRUBAL MARTINS SOARES',NULL,NULL),(42,34,'Principal','29850000',8,71,605,'JOSE GOMES DE ASSIS BAETA',54,NULL),(43,35,'Principal','29206315',8,78,2075,'AVENIDA MEAIPE',1373,NULL),(44,36,'Principal','29927000',8,124,1506,'AVENIDA ANGELO SUZANO',1330,NULL),(45,37,'Principal','29160042',8,123,1350,'BR 101',NULL,' KM 265'),(46,38,'Principal','29850000',8,71,2078,'RODOVIA BR 342',NULL,NULL),(47,39,'Principal','29730000',8,55,177,'AVENIDA RIO DOCE',NULL,NULL),(48,40,'Principal','29645000',8,116,1138,'AVENIDA JOAO PEDRO LAUVERS',NULL,NULL),(49,41,'Principal','29645000',8,116,1094,'AVENIDA REYNALDO BERGER',NULL,NULL),(50,42,'Principal','29645000',8,116,1094,'AVENIDA REYNALDO BERGER',NULL,NULL),(51,43,'Principal','29645000',8,116,1147,'RUA HENRIQUE EGGERT',NULL,NULL),(52,44,'Principal','29850000',8,71,2074,'RUA RUY CORTES',47,NULL),(53,46,'Principal','29645000',8,116,1124,'RODOVIA AFONSO SCHWAB',NULL,NULL),(54,47,'Principal','29650000',8,117,1199,'RODOVIA JOSIL ESPINDULA AGOSTINI',426,NULL),(55,48,'Principal','29635000',8,60,207,'AVENIDA JOSE MARTINUZZO',37,NULL),(56,49,'Principal','29927000',8,124,2079,'AVENIDA ANGELO SUZANO',NULL,NULL),(57,50,'Principal','29927000',8,124,1506,'AVENIDA ANGELO SUZANO',NULL,NULL),(58,51,'Principal','29260000',8,69,585,'ESTRADA DO GALO',NULL,NULL),(59,52,'Principal','29725000',8,96,1014,'RUA JOCONDO CALIMAN',NULL,NULL),(60,53,'Principal','29148490',8,62,269,'RUA ANGELO ZANI',NULL,NULL),(61,54,'Principal','29148100',8,62,357,'Avenida Cariacica',13271,NULL),(62,55,'Principal','29645000',8,116,2055,'AVENIDA FREDERICO GRULKE',1792,NULL),(63,57,'Principal','29173320',8,123,1428,'RODOVIA ES-010',10,NULL),(64,58,'Principal','29172620',8,123,1356,'Avenida Rômulo Castello',161,NULL),(66,59,'Principal','29151570',8,62,273,'Avenida Mário Gurgel',NULL,NULL),(67,60,'Principal','29156146',8,62,253,'Rua Getúlio Vargas',136,NULL),(68,61,'Principal','29980000',8,105,2081,'AVENIDA DOM JOSE DALVIT',540,NULL),(69,62,'Principal','29645000',8,116,1145,'DR AFONSO SCHWAB',3023,NULL),(70,63,'Principal','29615000',8,91,923,'RUA PROJETADA',NULL,NULL),(71,64,'Principal','29930010',8,121,1275,'Avenida Jones dos Santos Neves',NULL,NULL),(72,65,'Principal','29901554',8,92,968,'Avenida Prefeito Samuel Batista Cruz',3008,NULL),(73,66,'Principal','29273000',8,69,570,'ROD COREOLANO GUILHERME STEIN',80,NULL),(74,67,'Principal','29151055',8,62,231,'Rodovia Governador José Henrique Sette',906,NULL),(75,68,'Principal','29931200',8,121,1274,'Rodovia Governador Mário Covas',1874,NULL),(77,69,'Principal','29780000',8,119,1266,'PC BARAO DO RIO BRANCO',140,NULL),(78,70,'Principal','29010340',8,131,1779,'PRINCESA ISABEL',20,NULL),(79,71,'Principal','29164140',8,123,1402,'Rodovia ES-010',4650,NULL),(80,72,'Principal','29114000',8,130,1754,'Avenida Senador Robert Kennedy',21,'A'),(81,73,'Principal','29102020',8,130,1729,'Rodovia do Sol',NULL,NULL),(82,75,'Principal','29151026',8,62,231,'Avenida Mário Gurgel',2844,NULL),(83,76,'Principal','29161172',8,123,1458,'Rodovia Norte Sul',300,NULL),(84,77,'Principal','29107092',8,130,1673,'Rua Pedro Loyola Netto',92,NULL),(85,78,'Principal','29018250',8,131,1829,'Avenida Cleto Nunes',402,NULL),(87,79,'Principal','29102023',8,130,1729,'Rodovia do Sol',3701,NULL),(88,80,'Principal','29161122',8,123,1458,'Rua São Pedro',27,NULL),(89,81,'Principal','29140261',8,62,274,'Avenida Mário Gurgel',1701,NULL),(90,82,'Principal','29151570',8,62,273,'Avenida Mário Gurgel',1092,NULL),(91,83,'Principal','29135000',8,127,2082,'RODOVIA BR 262',NULL,'KM 7,5'),(92,84,'Principal','29129015',8,130,1726,'Rodovia do Sol',NULL,'KM 25 '),(93,85,'Principal','29125033',8,130,1652,'Rodovia do Sol',350,NULL),(94,86,'Principal','29102567',8,130,1728,'Rua Maria de Oliveira Mares Guia',40,NULL),(95,87,'Principal','29845000',8,58,203,'BOA ESPERANCA X PINHEIROS',NULL,'KM 01'),(96,88,'Principal','29656000',8,117,1167,'RODOVIA GALERANO AFONSO VENTURINI',NULL,'KM 23 ZONA RURAL'),(97,89,'Principal','29800000',8,56,2083,'HENRIQUE FANTI',25,NULL),(98,90,'Principal','29941010',8,121,2084,'Rodovia Governador Mário Covas',921,'KM 63'),(99,91,'Principal','29830000',8,102,2085,'RUA DAS PALMEIRAS',129,NULL),(100,92,'Principal','29930660',8,121,2086,'Rua Monsenhor Guilherme Schimitz',112,NULL),(101,93,'Principal','29745000',8,118,1260,' AVENIDA HONORIO FRAGA',NULL,NULL),(102,94,'Principal','29830000',8,102,1024,'AVENIDA SAO MATEUS',34,NULL),(103,95,'Principal','29980000',8,105,2081,'AVENIDA SETEMBRINO PELISSARI',40,NULL),(104,96,'Principal','29154200',8,62,335,'Rodovia Governador José Henrique Sette',6174,NULL),(105,97,'Principal','29843000',8,128,1637,'RUA VASCO COUTINHO',5,NULL),(106,98,'Principal','29730000',8,55,2087,'MARGENS DA BR 259',NULL,'KM 99'),(107,99,'Principal','29843000',8,128,2088,'JAIME NERI DA SILVA',151,NULL),(109,100,'Principal','29830000',8,102,2053,'RODOVIA XV DE NOVEMBRO',276,NULL),(110,101,'Principal','29830000',8,102,1023,'RODOVIA MIGUEL CURRY CARNEIRO',522,NULL),(111,102,'Principal','29960000',8,65,2090,'BR 101 KM 31',NULL,NULL),(112,103,'Principal','29112112',8,130,1738,'RUA SOBREIRO',395,NULL),(113,104,'Principal','29680000',8,90,903,'RODOVIA BR 101 NORTE',NULL,NULL),(114,105,'Principal','29900520',8,92,956,'Avenida Hélio Martins',891,NULL),(115,106,'Principal','29900100',8,92,945,'Avenida Prefeito Samuel Batista Cruz',1276,NULL),(116,107,'Principal','29135000',8,127,2091,'RODOVIA BR 101',NULL,'KM 12,7'),(117,108,'Principal','29161373',8,123,2093,'DOIS',226,NULL),(118,109,'Principal','29117126',8,130,1642,'Avenida Carlos Lindenberg',NULL,NULL),(119,110,'Principal','29104360',8,130,2094,'Rodovia Darly Santos',NULL,'KM 2 5 - POSTO'),(120,111,'Principal','29108075',8,130,1742,'Avenida Carlos Lindenberg',1944,NULL),(121,112,'Principal','29129015',8,130,1687,'Rodovia do Sol',NULL,NULL),(122,113,'Principal','29090100',8,131,1813,'Rua Gelu Vervloet dos Santos',1150,NULL),(123,114,'Principal','29168060',8,123,1371,'Avenida Eldes Scherrer Souza',2100,NULL),(124,115,'Principal','29164044',8,123,1402,'Avenida Desembargador Mário da Silva Nunes',1747,NULL),(125,116,'Principal','29050463',8,131,1788,'Avenida Américo Buaiz',1285,NULL),(126,117,'Principal','29107230',8,130,1673,'Rua do Pessegueiro',NULL,'TERREO'),(127,118,'Principal','29140080',8,62,274,'Avenida Espírito Santo',87,NULL),(128,119,'Principal','29048460',8,131,1857,'Avenida Maruípe',NULL,NULL),(129,120,'Principal','29111165',8,130,1666,'Avenida Carlos Lindenberg',6475,NULL),(130,121,'Principal','29163170',8,123,1402,'AVENIDA DESEMBARGADOR MARIO SILVA NUNES',1691,NULL),(131,122,'Principal','29055055',8,131,2099,'Avenida Desembargador Santos Neves',NULL,NULL),(132,123,'Principal','29050662',8,131,1772,'Avenida Cezar Hilal',868,NULL),(133,124,'Principal','29075650',8,131,2100,'Avenida José Maria Vivácqua Santos',835,NULL),(134,125,'Principal','29785000',8,129,2101,'AVENIDA PADRE FRANCISCO',837,NULL),(135,126,'Principal','29122700',8,130,1677,'Avenida José Tavares de Brito',3241,NULL),(136,127,'Principal','29123600',8,130,1662,'RODOVIA CARLOS LINDEMBERG',NULL,NULL),(137,128,'Principal','29278000',8,69,546,'RODOVIA BR 262',NULL,NULL),(138,129,'Principal','29600000',8,45,12,' AVENIDA PRESIDENTE VARGAS',NULL,NULL),(139,130,'Principal','29278000',8,69,546,'RODOVIA BR 262',NULL,NULL),(140,131,'Principal','29600000',8,45,8,'MARINO RONCETT',NULL,NULL),(141,132,'Principal','29600000',8,45,8,'AVENIDA MARFISA DE BARROS LEITE',NULL,NULL),(142,133,'Principal','29278000',8,69,546,'RODOVIA BR 262',NULL,NULL),(143,134,'Principal','29278000',8,69,546,'RODOVIA ES 165',NULL,NULL),(144,135,'Principal','29600000',8,45,8,' AVENIDA MARFISA DE BARROS LEITE',NULL,NULL),(145,136,'Principal','29127210',8,130,1756,'Rua Afonso Cláudio',NULL,NULL),(146,137,'Principal','29124376',8,130,1653,'Avenida Califórnia',NULL,NULL),(147,138,'Principal','29500000',8,48,2102,'RODOVIA BR 482',69,NULL),(148,139,'Principal','29306095',8,61,2103,'Rodovia Governador Lacerda de Aguiar',NULL,NULL),(149,140,'Principal','29540000',8,81,2104,'PEDRO MACHADO RIBEIRO',NULL,NULL),(150,141,'Principal','29540000',8,81,2104,' AVENIDA ANISIO FERREIRA DA SILVA',52,NULL),(151,142,'Principal','29590000',8,68,2105,' ES-185',NULL,NULL),(152,143,'Principal','29112690',8,130,1738,'Avenida Rio Marinho',NULL,NULL),(153,144,'Principal','29164044',8,123,1402,'Avenida Desembargador Mário da Silva Nunes',NULL,NULL),(154,145,'Principal','29330000',8,85,2106,'RODOVIA SAFRA X MARATAIZES ES490',NULL,NULL),(155,146,'Principal','29330000',8,85,2108,'SAFRA X MARATAIZES, ES 490',NULL,NULL),(156,147,'Principal','29730000',8,55,177,'AVENIDA CARLOS DE MEDEIROS',NULL,NULL),(157,148,'Principal','29730000',8,55,177,'AVENIDA DEZ DE ABRIL',595,NULL),(158,149,'Principal','29850000',8,71,2074,'JOSE GOMES DE ASSIS BAETA',NULL,NULL),(159,150,'Principal','29730000',8,55,193,'AVENIDA RIO DOCE',1699,NULL),(160,151,'Principal','29185000',8,75,638,'RODOVIA ES-010',669,NULL),(161,152,'Principal','29276000',8,69,568,'ESTRADA DE MELGAÇO',NULL,NULL),(162,153,'Principal','29090160',8,131,1813,'Avenida José Maria Vivácqua Santos',NULL,NULL),(163,154,'Principal','29645000',8,116,2055,'AVENIDA FREDERICO GRULKE',596,NULL),(164,162,'Principal','29395000',8,79,702,'BR 262 ',NULL,'KM169'),(166,185,'Principal','29045230',8,131,1768,'Avenida Maruípe',2757,NULL),(167,190,'Principal','29176798',8,123,1503,'Travessa Diamante',259,NULL),(168,192,'Principal','29056295',8,131,1843,'Rua Juiz Alexandre Martins de Castro Filho',285,NULL),(169,193,'Principal','29106595',8,130,1669,'Rua Cristovão Colombo',582,NULL),(171,197,'Principal','29194004',8,53,84,'Rodovia Luiz Theodoro Musso',310,NULL),(173,198,'Principal','29161118',8,123,1458,'Rua CD',66,NULL),(174,202,'Principal','29540000',8,81,2112,'AVENIDA JOAO MATAVELI',17,NULL),(175,194,'Principal','29194791',8,53,94,'Rua Anjo Raphael',29,NULL),(177,203,'Principal','29620000',8,86,822,'PRAÇA ANA MATOS',17,NULL),(178,204,'Principal','29800000',8,56,197,'RUA VEREADOR TITO WALDEMAR VIEIRA',1080,NULL),(179,205,'Principal','29045403',8,131,2111,'Avenida Nossa Senhora da Penha',2719,NULL),(180,206,'Principal','29102170',8,130,1729,'Rua Humberto Pereira',120,NULL),(181,207,'Principal','29460000',8,59,2114,'MAJOR BLEYR',157,NULL),(182,208,'Principal','29650000',8,117,1252,'RODOVIA FLORENTINO NICOLAU CORTELETTI',170,NULL),(183,209,'Principal','29119060',8,130,1649,'Estrada Capuaba',21,NULL),(186,210,'Principal','29400000',8,97,2115,'RUA DR.JOSÉ ARRABAL FERNANDES',6,NULL),(187,211,'Principal','29119060',8,130,1649,'ESTRADA DE CAPUABA',21,NULL),(188,212,'Principal','29144000',8,62,258,'Rua Alvim Thompson',NULL,'QUADRA 6 LOTE 1'),(190,213,'Principal','29645000',8,116,1128,'ESTRADA RIO LAMEGO - ZONA RURAL ',NULL,NULL),(192,225,'Principal','29400000',8,97,2117,' RUA PRINCIPAL',NULL,NULL),(194,232,'Principal','29178400',8,123,1439,'Avenida São Francisco',131,'BLOCO A'),(195,234,'Principal','29163265',8,123,1467,'Rua Euclides da Cunha',421,NULL),(196,236,'Principal','29206100',8,78,2126,'RUA ALAMEDA BOA VENTURA',360,NULL),(197,237,'Principal','29161376',8,123,2127,'Avenida Acesso Rodoviário',NULL,NULL),(198,238,'Principal','29303370',8,61,221,'Rua Albano Custódio',12,NULL),(199,239,'Principal','29303300',8,61,2129,'Avenida Francisco Lacerda de Aguiar',96,NULL),(200,240,'Principal','29316360',8,61,2130,'ENGENHEIRO FABIANO VIVACQUA',73139,'BR 482'),(202,241,'Principal','29843000',8,128,1637,'RUA DESEMBARGADOR FARIAS SANTOS',296,NULL),(203,242,'Principal','29620000',8,91,935,'FAZENDA MATUTINA',NULL,NULL),(204,243,'Principal','29395000',8,79,703,'AVENIDA 7 DE NOVEMBRO',13,NULL),(205,244,'Principal','29395000',8,79,2051,'AVENIDA AFONSO CLÁUDIO',662,NULL),(206,245,'Principal','29375000',8,126,1587,'AVENIDA ANGELO ALTOE',1044,'LOJA: 01;'),(207,246,'Principal','29905080',8,92,965,'Avenida Vereador Wilmo Vitório Guizani',12,NULL),(209,247,'Principal','29901401',8,92,2132,'RODOVIA BR 101, S/N',NULL,'KM 140'),(210,248,'Principal','29056184',8,131,1843,'Avenida Leitão da Silva',1150,NULL),(212,249,'Principal',NULL,8,116,1125,'ZONA RURAL',NULL,NULL),(214,250,'Principal','29175705',8,123,1425,'Avenida Talma Rodrigues Ribeiro',51,NULL),(216,251,'Principal','29106010',8,130,1678,'AV MINISTRO SALGADO FILHO',65,NULL),(217,252,'Principal','29460000',8,59,2114,'AV. MAJOR BLEY',157,'ANEXO 02'),(219,253,'Principal','29645000',8,116,1134,'RODOVIA LUIZ STANGE, S/N',NULL,NULL),(221,254,'Principal','29100001',8,130,1691,'RUA IBITIRAMA',220,NULL),(223,255,'Principal','29850000',8,71,2136,'AV. JOSE ASSIS BAETA',NULL,NULL),(224,256,'Principal','29163357',8,123,1426,'Avenida Industrial',274,'QUADRA168 LOTE 16 A'),(225,257,'Principal','29500000',8,48,2102,'AVENIDA OLIVIO CORREA PEDROSA',385,NULL),(226,258,'Principal','29645000',8,116,1124,'RODOVIA AFONSO SCHWAB',NULL,'KM 16, LOJA 02'),(227,259,'Principal','29815000',8,56,200,'ROD. ES 320, BARRA DE SAO FRANCISCO X ECOPORANGA, KM 20,1',0,NULL),(228,260,'Principal','45936000',5,44,2139,'AVENIDA ESPIRITO SANTO',308,'DISTRITO DE ITABATÃ'),(229,261,'Principal','29330000',8,85,2143,'RODOVIA ES 487',NULL,'KM 18'),(231,262,'Principal','29656000',8,117,1212,'RODOVIA ENG. JOSIL ESPINDULA AGOSTINI',NULL,NULL),(232,263,'Principal','29240000',8,49,45,'RODOVIA LAURO FERREIRA PINTO',NULL,'KM 01'),(233,264,'Principal','29111165',8,130,1666,'RODOVIA CARLOS LINDENBERG',5701,NULL),(234,265,'Principal','29400000',8,97,2048,'RUA DR JOSE MONTEIRO DA SILVA',241,NULL),(236,266,'Principal','29820000',8,46,2147,'ROD ES - 080',36,NULL),(237,267,'Principal','29560000',8,77,2149,'AVENIDA JOSE ALEXANDRE',649,'LOJA 1'),(238,268,'Principal','29221305',8,78,2150,'RODOVIA DO SOL, S/N',NULL,'KM 05'),(239,269,'Principal','29211630',8,78,670,'Avenida Governador Jones dos Santos Neves',15,NULL),(240,270,'Principal','29216705',8,78,670,'RODOVIA DO SOL',NULL,'KM 41'),(241,271,'Principal','29215010',8,78,684,'Avenida Ewerson de Abreu Sodré',300,NULL),(243,272,'Principal','29730000',8,55,2153,'ROD BR 259 KM 99, S/N',NULL,NULL),(244,277,'Principal','29107092',8,130,1673,'Rua Pedro Loyola Netto',92,NULL),(245,278,'Principal','29215005',8,78,684,'ROD DO SOL',NULL,NULL),(247,279,'Principal','29208008',8,78,2154,'Avenida Antonio Rosa Nascimento',292,NULL),(248,280,'Principal','29020240',8,131,1803,'AVENIDA DUARTE LEMOS',345,NULL),(250,282,'Principal','29211152',8,78,671,'Avenida Brasil',20,'QUADRA 51'),(252,283,'Principal',NULL,8,125,1513,'RODOVIA GERALDO SARTÓRIO, KM 55',NULL,NULL),(253,286,'Principal',NULL,8,62,360,'RUA CASTELO BRANCO',173,NULL),(256,288,'Principal','29650000',8,117,1195,'RUA BERNARDINO MONTEIRO',746,NULL),(257,289,'Principal','29500000',8,48,2158,'ROD BR-482',NULL,'KM 84.82');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenca`
--

DROP TABLE IF EXISTS `licenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_licenca` int NOT NULL,
  `id_atividade` int DEFAULT NULL,
  `id_orgao` int NOT NULL,
  `numero` varchar(60) NOT NULL,
  `dt_ini` date NOT NULL,
  `dt_venc` date DEFAULT NULL,
  `assinatura` varchar(120) DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_municipio` int DEFAULT NULL,
  `descricao` mediumtext,
  `processo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_municipio_idx` (`id_municipio`),
  KEY `fk_licenca_tipo_licenca_idx` (`id_tipo_licenca`),
  CONSTRAINT `fk_licenca_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id`),
  CONSTRAINT `fk_licenca_tipo_licenca` FOREIGN KEY (`id_tipo_licenca`) REFERENCES `tipo_licenca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenca`
--

LOCK TABLES `licenca` WRITE;
/*!40000 ALTER TABLE `licenca` DISABLE KEYS */;
INSERT INTO `licenca` VALUES (5,1,1,1,'GGE / COED / Nº 64 / 2019 / CLASSE III','2019-11-12','2025-11-12','MARIA SEPULCRI SALAROLI',1,97,'A EXERCER À ATIVIDADE: POSTO DE REVENDA DE COMBUSTÍVEIS, COORDENADAS UTM 24K 243700 M / 7653640 M - (DATUM WGS84).',NULL),(6,1,1,1,'42235340','2014-12-16','2018-12-15',NULL,154,116,NULL,NULL),(7,1,NULL,7,'2410/2019','2019-10-09','2021-10-19',NULL,NULL,58,'Posto revendedor de combustiveis ',NULL),(8,1,1,7,'2410/2019','2019-10-09','2021-09-19',NULL,2,58,'Posto revendedor de combustiveis',NULL),(9,10,1,7,'071/2018','2018-05-02','2020-05-02',NULL,6,130,NULL,'59591/2016'),(10,1,1,7,'','2019-02-15','2020-02-15',NULL,7,130,NULL,'70147/2017'),(11,1,1,7,'1932465','2020-03-29','2020-03-29',NULL,10,130,NULL,NULL),(12,1,1,7,'LMO 014/2017','2018-01-03','2022-01-03',NULL,11,121,'REQUEREU EM 23/06/2021','09225/2017'),(13,8,1,7,'LAR N° 30/2015','2015-03-12','2019-03-12',NULL,12,79,'REQUEREU A LMO EM IBATIBA EM 23/10/2020\r\n\r\n','31007210'),(14,1,1,1,'28555325 ','2011-08-26','2013-08-25',NULL,13,129,NULL,NULL),(15,1,1,1,'23231742','2017-11-28','2023-11-28',NULL,14,102,NULL,NULL),(16,3,1,7,'515.725','2019-08-01','2021-08-01',NULL,15,102,'REQUEREU LMO DIA 20/01/2021',NULL),(17,1,1,7,'947717/2005','2014-07-03','2018-07-03',NULL,16,123,NULL,NULL),(18,1,NULL,7,'316101/2017','2017-04-27','2021-04-27',NULL,NULL,131,NULL,NULL),(19,1,1,7,'','2017-04-27','2021-04-27',NULL,153,131,'Licença requerida em 23/12/2020','316101/2017'),(20,1,1,1,'41656032','2010-06-02','2012-06-01',NULL,17,104,NULL,NULL),(21,1,1,7,'004181/2017','2011-11-21',NULL,NULL,152,69,' REQUEREU 08/06/2017',NULL),(22,1,1,1,'30365520','2010-01-22','2014-01-21',NULL,18,NULL,NULL,NULL),(23,2,1,1,'22147829','2013-10-10','2017-10-09',NULL,19,116,NULL,NULL),(24,1,1,1,'21973156','2015-01-19','2019-01-18',NULL,20,91,NULL,NULL),(25,1,1,1,'22234365','2012-12-13','2016-12-12',NULL,21,115,NULL,NULL),(26,1,1,3,'46980962','2013-03-17','2017-05-25',NULL,22,97,NULL,NULL),(27,4,1,7,'3623/2019','2019-04-16','2024-04-16',NULL,23,116,NULL,NULL),(28,2,1,7,'16059/2013','2014-11-13','2016-11-13',NULL,24,62,NULL,NULL),(29,2,1,7,'LAR Nº 61/2016','2016-11-28','2018-11-28',NULL,25,62,NULL,'19610/2014'),(30,7,1,7,'459.466/2015 ','2018-09-06','2018-09-04',NULL,26,102,NULL,NULL),(31,1,1,7,'LMR 033/2018','2018-11-22','2022-11-22',NULL,27,117,NULL,'13535/2018'),(32,2,1,7,'37366/2011','2019-05-30','2021-05-30',NULL,28,130,'REQEREU A LICENÇA DE OPERAÇÃO EM 26/01/2021',NULL),(33,1,1,7,'2.420/2019','2019-09-20','2023-09-20',NULL,29,58,NULL,NULL),(34,2,1,1,'43285872','2015-03-12','2019-03-11',NULL,30,52,'Publicação de que requereu LO em 24/03/2022',NULL),(35,8,1,1,'36959740','2013-09-13','2015-09-13',NULL,151,75,NULL,NULL),(36,1,1,1,'30547725','2017-03-14','2017-07-14',NULL,150,55,'REQUERIDA LMO SEMMA 25/04/2019',NULL),(37,8,1,1,'46525408','2016-04-12','2020-04-12',NULL,149,71,NULL,NULL),(38,1,1,1,'22650741','2017-04-12','2023-04-12',NULL,100,102,NULL,NULL),(39,1,1,7,'2468/2018','2019-06-07','2023-04-07',NULL,148,55,NULL,NULL),(40,1,1,7,'9822/2014','2018-03-08','2021-04-11',NULL,31,127,'Requerida Licença em 06/01/2021',NULL),(41,9,1,1,' 33891419','2018-09-25','2024-09-25',NULL,101,102,NULL,NULL),(42,1,1,7,'2469/2019','2019-09-06','2023-09-06',NULL,147,55,NULL,NULL),(43,2,1,1,'29325439','2013-04-17','2015-04-14',NULL,32,102,NULL,NULL),(44,2,1,1,'39989186','2020-04-06','2020-04-06',NULL,102,65,'DATAS DA LMR REPRESENTATIVAS ATÉ OBTER AS DATAS REAIS',NULL),(45,1,1,7,'25119/2018','2018-12-20','2022-12-20',NULL,146,85,'REQUEREU RENOVAÇÃO EM: 11/08/2022.',NULL),(46,1,1,1,'04/2018','2018-01-11','2024-01-11',NULL,33,99,'Requerira Renovação LMO: 08/09/2023','60703970'),(47,2,1,7,'25119/2018','2018-11-23','2020-11-23',NULL,145,85,'SOLICITAR RENOVAÇÃO ATÉ: 23/05/2020',NULL),(48,1,1,1,'24323160','2014-06-04','2018-06-03',NULL,34,71,NULL,NULL),(49,1,1,7,'19928/2014','2016-08-01','2020-08-01',NULL,73,130,NULL,NULL),(50,1,1,1,'70456291','2017-08-11','2023-08-10',NULL,36,124,NULL,NULL),(51,2,1,7,'53039/2008','2017-06-22','2019-06-22',NULL,37,123,'Relatorio atualizado de cumprimento de todas as condicionantes da LMR - 10/03/2022',NULL),(52,2,1,1,'68488939','2020-04-13','2020-04-13',NULL,38,71,NULL,NULL),(53,1,1,7,'2945/2019','2020-04-14','2020-04-14',NULL,39,55,NULL,NULL),(54,1,1,7,'014405/2019 ','2020-03-05','2024-03-03',NULL,40,116,NULL,NULL),(55,8,1,7,'06936/2014','2019-05-03','2021-05-03',NULL,103,130,NULL,NULL),(56,1,1,1,'30710723','2008-11-11','2012-11-10',NULL,41,116,'FOI REQUERIDA NA SEMMA EM 23/10/2019 COM PROCESSO N° 012349/2019',NULL),(57,1,1,1,'28965620','2011-01-18','2013-01-17',NULL,42,116,NULL,NULL),(58,1,1,7,'000823/2018','2019-06-04','2023-06-03',NULL,105,92,NULL,NULL),(59,2,1,7,'013515/2013','2018-12-28','2022-12-28',NULL,106,92,NULL,NULL),(60,2,1,1,'26759225','2016-05-19','2020-05-19',NULL,44,71,NULL,NULL),(61,1,1,7,'2808/2019','2019-09-20','2023-09-19',NULL,87,58,NULL,NULL),(62,1,1,1,'51108267','2012-04-03','2016-04-02',NULL,46,116,NULL,NULL),(63,1,1,7,'12226/2018','2018-11-22','2022-11-22',NULL,47,117,NULL,NULL),(64,8,1,1,'28911237','2011-11-20','2011-11-20',NULL,48,60,'TODASAS AS CONDICIONANTES DA LICENÇA FORAM CUMPRIDA.',NULL),(65,1,1,1,'54604133','2011-07-25','2013-07-24',NULL,49,124,NULL,NULL),(66,1,1,7,'2065/2015','2016-12-26','2020-12-26',NULL,51,69,NULL,NULL),(67,11,1,1,'39679560','2013-12-12','2017-12-11',NULL,52,96,NULL,NULL),(68,2,1,7,'016181/2014','2018-08-28','2022-08-28',NULL,88,117,NULL,NULL),(69,1,1,7,'37559/2014','2019-01-22','2023-01-21',NULL,53,62,NULL,NULL),(70,1,1,7,'013580/2016','2017-01-27','2021-01-27',NULL,90,121,'REQUERIDA LMO EM 25/09/2020\r\nPROTOCOLO N° 302',NULL),(71,1,1,1,'62310313','2017-08-08','2023-08-08',NULL,91,102,NULL,NULL),(72,1,1,7,'','2018-07-31','2020-07-30',NULL,54,62,NULL,'37564/2014'),(73,1,5,1,'26211203','2019-07-29','2025-07-27',NULL,55,116,NULL,NULL),(74,2,1,7,'','2015-10-20','2016-10-20',NULL,57,123,NULL,'4389925/2002'),(75,2,1,7,'LMR Nº 106/2016','2016-11-18','2018-11-17',NULL,58,123,NULL,'51245/2016'),(76,2,1,7,'26168/2012\r\n26168/2012\r\n26168/2012\r\n26168/2012\r\n26168/2012','2013-09-09',NULL,NULL,59,62,NULL,NULL),(77,1,1,7,'20865/2014','2019-11-29','2029-11-29',NULL,60,62,NULL,NULL),(78,1,1,1,'67876366','2015-09-28','2019-09-27',NULL,61,105,NULL,NULL),(79,1,1,1,'32490321','2012-09-18','2016-09-17',NULL,62,116,'REQUEREU A SECMAM A LICENÇA DE OPERAÇÃO EM 30/04/2021',NULL),(80,9,1,1,'39989186','2020-03-26','2026-03-26',NULL,102,65,NULL,NULL),(81,1,NULL,7,'10790/2014','2016-04-18','2020-04-18',NULL,NULL,62,NULL,NULL),(82,1,1,7,'10790/2014','2016-04-18','2020-04-18',NULL,75,62,NULL,NULL),(83,1,1,7,'1425655/2003','2015-01-06','2015-01-06',NULL,76,123,NULL,NULL),(84,1,1,7,'67672/2014','2018-02-09','2022-02-09',NULL,77,130,NULL,NULL),(85,1,1,7,'365480/2015','2017-02-25','2020-11-28',NULL,78,131,NULL,NULL),(86,1,1,7,'42018/2012','2016-07-08','2020-07-08',NULL,79,130,NULL,NULL),(87,1,1,7,'18904/2008 ','2018-04-10','2019-10-13',NULL,80,123,NULL,NULL),(88,1,1,7,'932/2015   ','2019-06-06','2029-06-06',NULL,81,62,NULL,NULL),(89,1,1,7,'25802/2012','2019-02-05','2023-02-05',NULL,82,62,'REQUERIDA EM 23/09/2022',NULL),(90,1,1,7,'56180/2015','2016-06-06','2020-06-06',NULL,84,130,'  REQUEREU A LMO: 24/01/2020 ',NULL),(91,1,1,7,'','2017-09-12','2021-09-12',NULL,83,127,'REQUEREU em 28/04/2021','001578/2013'),(92,1,1,7,'','2020-02-10','2024-02-09',NULL,85,130,NULL,'04672/2014'),(93,1,1,7,'06853/2014','2016-08-08','2020-08-08',NULL,86,130,'REQUEREU A LICENÇA EM 09/07/2020\r\nPROTOCOLO N° 0830',NULL),(94,1,1,7,'004394/2018\r\n004394/2018\r\n','2020-02-05','2020-02-03',NULL,93,118,NULL,NULL),(95,1,1,1,'22493182','2017-05-04','2023-05-04',NULL,94,NULL,NULL,NULL),(96,1,1,1,'67132480','2017-11-13','2023-11-13',NULL,95,NULL,NULL,NULL),(97,1,1,1,'42327229         ','2009-07-27','2013-07-26',NULL,97,NULL,' PRORROGADA AUTOMATICAMENTE\r\n\r\n- Requereu do IEMA a Licença Ambiental de Operação 13/05/2013',NULL),(98,8,1,1,'26358263','2020-05-07','2020-05-07',NULL,98,NULL,'OBS.: DATAS RESPRESENTATIVAS. \r\n(ESTÁ SEM LICENÇA)',NULL),(99,1,1,1,'45455333 ','2011-08-10','2015-08-09',NULL,99,NULL,'PRORROGADA AUTOMATICAMENTE\r\n\r\n- RENOVAÇÃO DA LICENÇA ATÉ O DIA  09/04/2015',NULL),(100,1,1,7,'17093/2015','2016-09-13','2020-09-13',NULL,107,127,'Requerida nova Licença de Operação, em 11/05/2020',NULL),(101,1,1,7,'591165/2004','2014-05-14','2018-05-14',NULL,108,123,'\r\n\r\n',NULL),(102,1,1,7,'','2017-12-27','2019-12-05',NULL,109,130,'REQUERIDO: 25/06/2019','24110/2014'),(103,1,1,7,'34192/2013','2019-07-25','2023-07-25',NULL,110,130,NULL,NULL),(104,8,1,7,'04768/2014','2018-04-05','2020-04-05',NULL,111,130,'\r\nLICENCA AMBIENTAL REQUERIDA 02/12/2019 SEMMA VILA VELHA \r\n',NULL),(105,1,1,7,'13005/2016','2019-11-22','2023-11-02',NULL,112,130,NULL,NULL),(106,1,1,7,'6222994/2017','2018-08-06','2023-05-29',NULL,113,131,NULL,NULL),(107,8,1,7,'56438/2008','2014-11-05','2016-11-05',NULL,114,123,' REQUEREU LO 05/07/2016',NULL),(108,8,1,7,'29089/2008\r\n','2017-05-19','2019-05-17',NULL,115,123,'REQUEREU EM 15/01/2019\r\n\r\n\r\nCERTIDÃO DE TRAMITAÇÃO  PROTOCOLADO 29/01/2018',NULL),(109,1,1,7,'1547890/2017','2018-04-25','2021-07-14',NULL,116,131,NULL,NULL),(110,8,1,7,'07449/2014','2016-03-02','2018-03-02',NULL,117,130,NULL,NULL),(111,1,1,7,'1435/2017','2013-04-05','2017-04-04',NULL,118,62,'REQUEREU EM 06/01/2017',NULL),(112,1,1,7,'1952182/2012  ','2017-07-24','2020-10-07',NULL,119,131,NULL,NULL),(113,8,1,7,' 6394/2017','2018-05-04','2019-05-04',NULL,120,130,NULL,NULL),(114,1,1,7,'9083/2013','2013-04-18','2017-04-18',NULL,121,123,'REQUEREU EM: 22/12/2016',NULL),(115,1,1,7,'6053732/2014','2017-07-05','2021-05-24',NULL,122,131,NULL,NULL),(116,1,1,7,'5703199/2017','2018-05-09','2023-03-05',NULL,123,131,NULL,NULL),(117,1,1,7,'7251205/2018','2019-05-07','2014-05-02',NULL,124,131,NULL,NULL),(118,3,1,1,'87675773','2020-02-03','2020-04-02',NULL,125,NULL,'REQUEREU A LMO EM 02/12/2020 EM VILA VALÉRIO',NULL),(119,1,1,7,'LMO 007/2017','2017-11-27','2021-11-27',NULL,126,130,'REQUERIDA EM 11/03/2021','07448/2014 '),(120,8,1,7,'','2017-10-10','2019-10-10',NULL,127,130,'REQUEREU 10/06/2019','04669/2014'),(121,4,1,7,'08568/2016','2017-09-12','2021-09-12',NULL,128,69,NULL,NULL),(122,8,1,7,'006551/2018','2020-05-11','2020-05-11',NULL,134,69,'- DATAS REPRESENTATIVAS - ',NULL),(123,8,1,7,'','2018-10-26','2019-10-25',NULL,136,130,'REQUEREU EM 28/06/2019     ','11181/2017'),(124,1,1,7,'52601/2015','2016-12-22','2020-12-22',NULL,137,130,'Comproavnte de pgto da taxa de complementação LAR - Protocolado 20/09/2018\r\n\r\nREQUEREU EM 09/09/2020',NULL),(125,8,1,1,'26037980','2016-09-15','2020-09-14',NULL,138,NULL,'Protocolou comprovante de pagamento do Auto de Multa 11/01/2017\r\n\r\nREQUEREU LICENÇA EM 22/10/2020',NULL),(126,1,1,7,'613578/2017','2017-10-04','2021-08-23',NULL,139,61,'REQUEREU EM 14/05/2021',NULL),(127,8,1,1,'29032385','2012-11-27','2016-11-26',NULL,140,NULL,' PRORROGADA AUTOMATICAMENTE\r\n\r\nREQUEREU LICENÇA EM 10/05/2016\r\nPublicação de requerimento 19/05/2016\r\n\r\nREQUEREU LICENÇA NO MUNICÍPIO: 13/08/21',NULL),(128,9,1,1,'27955109','2018-01-12','2024-01-11',NULL,141,81,NULL,NULL),(129,8,1,1,'44376944','2013-01-03','2015-01-03',NULL,142,NULL,'PRORROGADA AUTOMATICAMENTE\r\n\r\nLICENÇA AMBIENTAL UNICA REQUERIDA 24/01/2020\r\n\r\nLICENÇA AMBIENTAL DE OPERAÇÃO REQUERIDA 02/01/2015',NULL),(130,1,1,7,'24236/2014','2016-10-10','2020-10-10',NULL,143,130,'REQUEREU EM 09/09/2020','24236/2014'),(131,8,1,7,'21162/2009','2019-07-08','2023-03-19',NULL,144,123,'REQUERIDA LMO EM 04/11/2022',NULL),(132,1,1,8,'91/2020','2020-05-26','2024-05-26',NULL,42,116,'Requerer prorrogação até 26/01/2024','12348/2019'),(133,2,1,7,'002/2020','2020-06-03','2024-06-03',NULL,22,97,NULL,NULL),(134,7,1,7,'034/2020','2020-05-25','2022-05-25',NULL,26,102,NULL,'459.466/2015'),(135,4,1,1,'57/2020','2020-02-28','2024-02-28',NULL,162,131,NULL,NULL),(136,3,1,1,'36/2020','2020-02-28','2024-02-28',NULL,162,131,'REQUEREU NA SEMACULT EM 15/09/2020\r\n\r\n- LMP E LMI - ',NULL),(137,7,NULL,8,'42/2020','2020-02-20','2024-02-20',NULL,NULL,116,NULL,NULL),(138,7,5,8,'42/2020','2020-02-20','2024-02-20',NULL,55,116,NULL,NULL),(139,1,1,9,'251/2020','2020-07-02','2024-07-01','',46,116,NULL,NULL),(140,2,1,7,'60590/2011','2020-06-23','2022-06-23',NULL,10,130,'REQUERIDA EM 18/02/2022','60590/2011'),(141,1,1,7,'695497/2011','2015-01-23','2018-03-12',NULL,185,131,'Protocolo comercial em 21/12/2020',NULL),(142,1,1,7,'LMO Nº 95/2009','2009-08-12','2013-08-12',NULL,190,123,NULL,'37649/2008'),(144,2,1,7,'64444/2013','2020-04-24','2020-10-24',NULL,184,130,'REQUEREU LICENÇA DE OPERAÇÃO EM 16/07/2020\r\n\r\nPROTOCOLO 0841\r\n',NULL),(145,1,1,8,'012346/2019','2020-04-17','2024-04-17',NULL,18,116,NULL,NULL),(146,2,1,7,'005/2020','2020-01-10','2022-01-10',NULL,136,130,'Requereu em 14/09/2021','11181/2017'),(147,1,1,8,'828171/2013','2016-06-15','2020-05-19',NULL,192,131,'Protocolado em 21/12/2020',NULL),(148,1,1,7,'22554/2014','2015-10-01','2019-10-01',NULL,193,130,'REQUEREU LMR EM 29/10/2020',NULL),(149,1,1,7,'','2020-07-09','2024-07-09',NULL,109,130,NULL,'24110/2014 '),(150,1,1,7,'007/2019','2019-03-27','2023-03-27',NULL,71,123,NULL,NULL),(151,1,NULL,7,'747375/2018','2018-10-02','2022-05-24',NULL,NULL,131,NULL,NULL),(152,1,1,7,'747375/2018','2018-10-02','2022-05-24',NULL,70,131,'REQUERIDA EM 08/12/2021.',NULL),(153,1,1,7,'10944/2019','2019-09-23','2023-09-23',NULL,35,78,NULL,NULL),(154,1,1,7,'MO N° 001/2020','2020-01-08','2024-01-08',NULL,72,130,NULL,'34022/2016'),(155,2,6,7,'45814279          LMR 002/2016','2016-01-18','2020-01-18',NULL,64,121,NULL,NULL),(156,2,6,7,'021408/2017','2019-06-06','2023-06-06',NULL,65,92,NULL,NULL),(157,9,1,7,'02/2018','2018-01-26','2018-06-10',NULL,67,62,'*VENCIDA*',NULL),(158,2,1,7,'1399/2018','2020-02-20','2023-02-20',NULL,66,69,'REQUERIDA RENOVAÇÃO LMO EM: 14/10/2022',NULL),(159,1,1,7,'018/2018','2018-08-20','2021-11-20',NULL,68,121,'REQUERIDA LMO EM 08/07/2021','09226/2017'),(160,1,1,7,'018/2020','2020-07-08','2024-07-08',NULL,194,53,NULL,NULL),(161,8,1,7,'001/2018','2018-01-02','2022-01-02',NULL,197,53,NULL,NULL),(162,1,1,7,'1425655/2003','2018-03-01','2018-12-22',NULL,198,123,'*PRORROGADA AUTOMATICAMENTE*',NULL),(163,8,1,1,'55500781','2013-08-07','2015-08-07',NULL,202,81,'REQUEREU LICENÇA NO MUNICÍPIO: 13/08/2021',NULL),(164,1,1,7,'002/2020','2020-07-28','2024-07-28',NULL,149,71,NULL,NULL),(165,1,1,1,'22147829 / LO 113/2019','2019-08-23','2025-08-23',NULL,19,116,NULL,NULL),(166,1,1,1,'271/2013','2013-08-28','2017-08-27',NULL,203,86,'PRORROGADA AUTOMATICAMENTE',NULL),(167,1,1,7,'7953/2015','2019-11-20','2023-11-20',NULL,204,56,NULL,NULL),(168,2,1,7,'021/2020','2020-08-31','2022-08-31',NULL,32,102,NULL,'523.811/2019'),(169,1,1,7,'3545240/2018','2018-08-17','2023-07-16',NULL,205,131,NULL,NULL),(170,1,1,7,'42018/2012','2020-08-13','2024-08-13',NULL,79,130,NULL,NULL),(171,1,1,7,'019/2020','2020-09-29','2024-09-29',NULL,84,130,NULL,'56180/2015'),(172,1,1,7,'010/2020','2020-10-06','2024-10-06',NULL,63,91,NULL,'3770/2019'),(173,1,1,1,'LMO N° 199/2020','2020-10-16','2026-10-16',NULL,207,59,NULL,'29303192'),(174,1,1,1,'      LMO 183/2020','2020-09-30','2026-09-30',NULL,142,68,NULL,'44376944'),(175,1,1,7,'15037/2018  /  LMO 008/2018','2018-12-03','2022-12-03',NULL,208,117,NULL,NULL),(176,2,1,7,'52974/2017  / LMR 151/2019','2019-05-28','2021-05-28',NULL,209,130,NULL,NULL),(177,1,6,7,'018031/2019    LMO 025/2019','2020-11-10','2024-11-10',NULL,64,121,NULL,NULL),(178,2,1,7,'000705/2020             004/2020','2020-05-27','2024-05-27',NULL,210,97,NULL,NULL),(179,2,1,7,'179/2020','2020-11-25','2021-05-28',NULL,211,130,'Requerimento de licença ambiental- LMO dia 06/01/2021','52974/2017'),(180,1,1,7,'LMO N° 028/2020','2020-12-01','2024-12-01',NULL,16,123,NULL,'947717/2005 '),(181,1,1,7,'LMO Nº  13/2021','2021-02-12','2030-10-12',NULL,54,62,'Consultor requereu prazo de 45 dias para atendimento do oficio mencionado, proprietária está providenciando as documentações solicitadas.','37564/2014      '),(182,10,1,10,'   LMAR 0009/2020','2020-12-15','2022-12-15',NULL,61,105,'REQUEREU RENOVAÇÃO: 12/08/2022.','0035/2020'),(183,1,1,7,' LID 48/2022','2022-10-21','2030-11-25',NULL,212,62,NULL,'39614/2016'),(184,4,NULL,9,'229/2020','2020-12-11',NULL,NULL,NULL,NULL,NULL,NULL),(185,4,NULL,8,'229/2020','2020-12-11',NULL,NULL,NULL,NULL,NULL,NULL),(186,4,NULL,8,'229/2020','2020-12-11',NULL,NULL,NULL,116,NULL,NULL),(187,2,NULL,8,'229/2020','2020-12-11',NULL,NULL,NULL,116,NULL,NULL),(188,4,NULL,8,'229/2020','2020-12-11',NULL,NULL,NULL,116,NULL,NULL),(189,4,1,9,'229/2020','2020-12-11',NULL,NULL,213,116,NULL,NULL),(190,10,1,7,'004433/2019','2020-03-12',NULL,NULL,225,97,NULL,NULL),(191,1,1,7,'020/2022','2020-12-22','2024-12-22',NULL,150,55,NULL,'2944/2019'),(192,2,1,7,' LMR Nº 026/2020','2020-12-22','2024-12-22',NULL,39,55,NULL,'2945/2019'),(193,3,1,8,'010463/2020','2020-12-23',NULL,NULL,43,116,'Requerida a licença ambiental - Licença municipal de instalação\r\nData: 21/12/2020',NULL),(194,1,1,7,'001/2021/ CLASSE II','2021-01-22','2025-01-22',NULL,125,129,NULL,'02385/2020'),(195,10,1,7,'22554/2014','2021-01-08','2023-01-08',NULL,193,130,NULL,'235/2020 CLASSE III'),(196,1,1,7,'011/2020','2021-01-29','2025-01-29',NULL,20,91,NULL,'3771/2019'),(197,4,1,7,'LMP Nº 006/2020','2020-12-30','2024-12-30',NULL,232,123,NULL,'33227/2020'),(198,1,1,7,'05/2021','2021-02-01','2031-02-01',NULL,59,62,'SOLICITOU EMCERRAMENTO DAS ATIVIDADES EM: 05/01/2022','26168/2012'),(199,1,1,10,'LMO N° 001/2021','2021-02-18','2025-02-18',NULL,162,79,NULL,'6084/2020'),(200,1,1,7,'003/2021','2021-02-12','2025-02-12',NULL,86,130,NULL,'06853/2014'),(201,1,1,7,'LMO N° 05/2021','2021-02-18','2025-02-18',NULL,15,102,NULL,'515.725/2019'),(202,1,1,7,'001/2016','2016-02-19','2020-02-19',NULL,234,123,'REQUERIDA LMR EM 29/10/2020','18.508/2008'),(203,1,1,7,'005/2021','2021-02-23','2025-02-23',NULL,127,130,NULL,'04669/2014'),(204,1,1,8,'004/2021','2021-03-04','2025-03-04',NULL,41,116,NULL,'012349/2019'),(205,1,1,7,'LMO 04/2021','2021-03-08','2025-03-08',NULL,145,85,NULL,'25119/2018'),(206,1,1,7,'LMO 001/2020','2020-07-16','2024-07-16',NULL,44,NULL,NULL,'7883/2019'),(207,10,1,7,'020/2020','2020-11-25','2024-11-25',NULL,236,78,NULL,'14773/2020'),(208,2,1,7,'052/2021','2021-05-06','2025-05-06',NULL,237,123,NULL,'49805/2020'),(209,1,1,7,'06/2021','2021-05-11','2031-05-11',NULL,75,62,NULL,'10790/2014'),(210,1,1,7,'07/2021','2021-05-11','2031-05-11',NULL,24,62,NULL,'16059/2013'),(211,1,NULL,7,'125/2013','2018-07-23','2022-07-23',NULL,NULL,61,NULL,'2128149'),(212,1,4,7,'125/2013','2018-07-23','2022-07-23',NULL,238,61,NULL,'2128149'),(213,1,6,7,'225/2014','2019-06-09','2023-06-09',NULL,239,61,NULL,'2150297'),(214,1,6,7,'117/2014','2019-01-07','2023-01-07',NULL,240,61,'LAVADOR DE VEÍCULOS.\r\n\r\nREQUERIDA EM 05/09/2022','2408146'),(215,1,1,7,'009/2021','2021-05-21','2025-05-21',NULL,143,130,NULL,'24236/2014'),(216,10,1,7,'LMAR Nº176/2018','2018-09-04','2020-09-04',NULL,206,130,NULL,'51993/2016'),(217,8,1,1,'LAR Nº 44/2015','2015-04-14','2019-04-14',NULL,241,128,'REQUERIDA EM 06/07/2021','44878524'),(218,11,7,1,'LO Nº 79/2021','2021-07-05','2027-07-05',NULL,242,91,NULL,'31813925'),(219,1,1,7,'LMO','2021-07-13','2026-04-26',NULL,78,131,NULL,'2356661/2020'),(220,1,1,7,'LMO','2021-07-15','2026-07-07',NULL,185,131,NULL,'5851725/2018'),(221,2,1,7,'LMR N° 073/2021','2021-07-21','2025-07-21',NULL,190,123,NULL,'37649/2008'),(222,11,1,1,'LO Nº 264/2011','2011-10-14','2015-10-14',NULL,135,45,NULL,'32298390'),(223,1,1,7,'LMO 002/2018','2018-05-07','2022-05-07',NULL,129,45,'REQUERIDA EM 10/11/2021','13149/2017'),(224,1,1,7,'2753968/2020','2021-07-27','2026-04-23',NULL,192,131,NULL,'2753968/2020'),(225,1,1,7,'LMO 001/2018','2018-01-12','2022-01-12',NULL,132,45,'REQUERIDA EM 14/10/2021','13148/2017'),(226,11,1,1,'LO Nº 86/2021','2021-07-05','2027-07-05',NULL,52,96,NULL,'39679560'),(227,1,1,7,'LMR Nº 006/2021','2021-08-04','2023-08-04',NULL,243,79,'Requerida em 03/04/2023','6653/2020'),(228,1,1,7,'LMO 002/2021','2021-08-10','2025-08-10',NULL,244,79,NULL,'1795/2020'),(229,1,1,7,'LMO Nº 198/2021','2021-08-12','2025-08-12',NULL,58,123,NULL,'51245/2016'),(230,1,1,7,'','2021-08-25','2026-08-11',NULL,153,131,NULL,'4544959/2020'),(231,1,1,7,'LMO Nº 003/2019','2019-02-28','2023-03-28',NULL,108,123,' REQUEREU LMO 21/10/2022','591165/2004'),(232,1,1,7,'LMO Nº 004/2021','2021-08-27','2025-08-27',NULL,135,45,NULL,'5008/2019'),(233,1,1,7,'LMO Nº 227/2021','2021-09-28','2025-09-28',NULL,37,123,NULL,'53039/2008'),(234,2,6,7,'062/2021','2021-10-07','2025-10-07',NULL,245,126,NULL,'2014359'),(235,2,1,11,'LMR Nº17/2020','2020-05-08','2024-05-07',NULL,246,92,NULL,'002933/2020'),(236,2,1,11,'LMR Nº 47/2017','2017-09-20','2021-09-20',NULL,247,92,NULL,'005009/2015'),(237,12,1,7,'LID N° 59/2021','2021-10-28','2031-10-28',NULL,25,62,NULL,'19610/2014'),(238,11,1,7,'02/2021','2021-11-05','2025-11-05',NULL,48,60,NULL,'2664/2020'),(239,1,1,7,'240/2021','2021-11-12','2025-11-12',NULL,57,123,NULL,'4389925/2002'),(240,1,1,8,'198/2021','2021-11-12','2025-11-12',NULL,62,116,NULL,'003900/2021'),(241,1,1,7,'LMO Nº 010/2021','2021-10-18','2025-10-18',NULL,21,115,NULL,'001686/2021'),(242,1,1,11,'LMO','2020-05-08','2025-01-05',NULL,248,131,NULL,'1454555/2020'),(243,8,1,7,'LAR N° 09/2021','2021-12-06','2023-12-06',NULL,241,128,NULL,'0026'),(244,1,1,7,'LMO Nº 67/2021','2021-11-12','2025-11-12',NULL,83,127,NULL,'1578/2021'),(245,3,NULL,8,'237/2021','2021-12-20','2027-12-20',NULL,NULL,116,NULL,'009903/2021'),(246,3,NULL,9,'237/2021','2021-12-20','2027-12-20',NULL,NULL,116,NULL,'009903/2021'),(247,3,NULL,8,'237/2021','2021-12-20','2027-12-20',NULL,NULL,116,NULL,'009903/2021'),(248,3,NULL,8,'237/2021','2021-12-20','2027-12-20',NULL,NULL,NULL,NULL,'009903/2021'),(249,3,NULL,8,'LMI 237/2021','2021-12-20','2027-12-20',NULL,NULL,116,NULL,'009903/2021'),(250,3,1,8,'LMI 237/2021','2021-12-20','2027-12-20',NULL,249,116,NULL,'009903/2021'),(251,1,1,7,'002/2021','2021-12-20','2025-12-20',NULL,34,71,NULL,'4.646/2021'),(252,10,1,7,'LMR 002/2022','2022-01-13','2026-01-13',NULL,132,45,NULL,'13148/2017'),(253,3,NULL,7,'7554/2021','2021-10-27','2025-10-27',NULL,NULL,123,NULL,'34672/2021'),(254,3,NULL,7,'7554/2021','2021-10-27','2025-10-27',NULL,NULL,123,NULL,'34672/2021'),(255,3,NULL,7,'7554/2021','2021-10-27','2025-10-27',NULL,NULL,123,NULL,'34672/2021'),(256,3,NULL,7,'7554/2021','2021-10-27','2024-10-27',NULL,NULL,123,NULL,'34672/2021'),(257,3,1,7,'7554/2021','2021-10-27','2024-10-27',NULL,250,123,NULL,'34672/2021'),(258,1,1,7,'004/2022','2022-01-06','2026-01-06',NULL,137,130,NULL,'52601/2015'),(259,1,1,7,'025/2021','2021-12-20','2025-12-20',NULL,251,130,NULL,'04501/2014'),(260,1,1,7,'001/2022','2022-01-05','2026-01-05',NULL,28,130,NULL,'37366/2022'),(261,1,1,7,'350/2022','2022-01-31','2026-01-31',NULL,80,NULL,NULL,NULL),(262,1,1,7,'LMO 004/2022','2022-01-24','2026-01-24',NULL,11,121,NULL,'09225/2017'),(263,2,6,7,'001/2022','2022-02-22','2024-02-22',NULL,252,59,NULL,'2.671/2021'),(264,1,1,7,'LMO N° 44/2022','2022-12-21','2026-02-21',NULL,68,121,NULL,'09226/2017'),(265,1,1,7,'1','2022-02-24','2027-02-02',NULL,70,131,NULL,'7008292/2021'),(266,11,1,1,'37/2022','2022-03-14','2028-03-14',NULL,203,86,NULL,'25431986'),(267,4,1,8,'062/2022','2022-03-29','2027-03-29',NULL,253,116,NULL,'002204/2022'),(268,1,1,7,'21/2021','2022-04-06','2026-04-06',NULL,107,127,NULL,'017093/2015'),(269,1,1,7,'007/2022','2022-04-12','2026-04-12',NULL,73,130,NULL,'19928/2014'),(270,1,1,7,'016/2021','2021-11-11','2025-11-11',NULL,254,130,NULL,'54044/2011'),(271,2,1,7,'004/2022','2022-05-06','2025-05-06',NULL,152,69,NULL,'004181/2017'),(272,11,1,10,'002/2022','2022-05-13','2026-05-13',NULL,140,81,NULL,'5285/2021'),(273,1,1,7,'001/2022','2022-04-01','2026-04-01',NULL,255,71,NULL,'3843/2020'),(274,2,1,7,'481/2022','2022-06-03','2026-06-03',NULL,234,123,NULL,'43416/2020'),(275,1,1,7,'001/2022','2022-06-01','2026-06-01',NULL,129,45,NULL,'13149/2017'),(276,2,1,7,'LMR Nº 398/2022','2022-03-22','2026-03-22',NULL,232,123,NULL,'33227/2020'),(277,1,1,7,'LMO N° 466/2022','2022-06-20','2026-06-20',NULL,256,123,NULL,'10418/2013'),(278,2,6,7,'04/2022','2022-07-13','2026-07-13',NULL,257,48,NULL,'0210/2021'),(279,11,1,12,'LO Nº 04/2022','2022-08-02','2026-08-02',NULL,138,48,NULL,'4612/2020'),(280,10,NULL,8,'161/2022','2022-08-29','2024-08-29',NULL,NULL,116,NULL,'006047/2022'),(281,10,NULL,8,'161/2022','2022-08-29','2024-08-29',NULL,NULL,116,NULL,'006047/2022'),(282,10,4,8,'161/2022','2022-08-29','2024-08-29',NULL,258,116,NULL,'006047/2022'),(283,1,1,7,'032/2022','2022-09-01','2026-09-01',NULL,259,56,NULL,'0002429/2022'),(284,1,1,7,'17/2022','2022-12-19','2026-12-19',NULL,146,85,NULL,'3294/2010'),(285,2,1,7,'123/2022','2022-12-16','2024-12-16',NULL,184,130,NULL,'64444/2013'),(286,10,1,7,'LMAR Nº 110/2022','2023-01-05','2025-01-05',NULL,136,130,NULL,'11181/2017'),(287,5,1,11,'001/2020','2020-01-31','2024-01-31',NULL,260,99,NULL,'002.0801/2020'),(288,10,1,7,'LMAR N° 048/2022','2022-12-29','2024-12-29',NULL,206,130,NULL,'51993/2016'),(289,1,1,7,'01/2023','2023-02-03','2027-02-03',NULL,261,85,NULL,'11.650/2021'),(290,7,8,7,'LMS Nº 005/2023','2023-03-02','2026-03-02',NULL,262,117,NULL,'11845/2022'),(291,1,1,7,'LMO N° 008/2023','2023-04-18','2027-04-18',NULL,126,130,NULL,'07448/2014'),(292,1,1,7,'003/2023','2023-03-27','2027-03-27',NULL,51,69,NULL,'2065/2015'),(293,1,1,7,'003/2023','2023-05-03','2027-05-03',NULL,263,49,NULL,'002689/2023'),(294,1,1,7,'001/2023','2023-03-29','2027-03-29',NULL,47,117,NULL,'8759/2022'),(295,1,1,7,'003/2023','2023-05-15','2027-05-15',NULL,27,117,NULL,'8757/2022'),(296,10,1,7,'LMAR Nº 043/2023','2023-05-26','2025-05-26',NULL,7,130,NULL,'70147/2017'),(297,10,1,7,'093/2022','2022-09-02','2024-09-02',NULL,264,130,NULL,'59761/2018'),(298,1,1,7,'009/2023','2023-05-30','2027-05-30',NULL,148,55,NULL,'770/2023'),(299,11,1,1,'LO Nº 86/2023','2023-06-02','2029-06-02',NULL,265,97,NULL,'34997695'),(300,9,NULL,1,'LOC Nº 58/2019','2019-10-23','2024-07-28',NULL,NULL,46,NULL,'37422910'),(301,9,1,1,'LOC Nº 58/2019','2019-10-23','2024-07-28',NULL,266,46,NULL,'37422910'),(302,7,6,11,'027/2023','2023-07-04','2027-07-04',NULL,267,77,NULL,'3898/2023'),(303,1,1,13,'LMO N° 004/2019','2019-05-07','2023-05-07',NULL,269,78,NULL,'1438/2019'),(304,1,1,13,'LMO Nº 014/2022','2022-05-02','2025-09-02',NULL,268,78,NULL,'4142/2021'),(305,1,1,13,'LMO N° 016/2021','2021-09-10','2025-09-10',NULL,270,78,NULL,'4146/2021'),(306,1,1,13,'LMO N° 022/2022','2022-10-11','2026-10-11',NULL,271,78,NULL,'13972/2022'),(307,1,1,7,'LMO N° 016/2023','2023-12-01','2027-08-08',NULL,272,55,NULL,'4.768/2023'),(308,1,1,14,'LMO Nº 017/2023','2023-08-22','2027-08-21',NULL,147,55,NULL,'3862/2023'),(309,1,1,7,'LMO Nº 863/2023','2023-08-23','2027-08-23',NULL,144,123,NULL,'5757/2022'),(310,1,1,7,'LMO N° 029/2023','2023-08-23','2027-08-23',NULL,277,130,NULL,'1718/2023'),(311,11,4,7,'125/2013','2023-07-08','2028-07-08',NULL,238,61,NULL,'19778/2013'),(312,11,6,7,'225/2014','2023-08-27','2028-08-27',NULL,239,61,NULL,'18784/2011'),(313,1,1,13,'LMO N° 008/2021','2021-04-26','2025-04-26',NULL,278,78,NULL,'3431/2021'),(314,1,1,7,'LMO N° 015/2023','2023-09-21','2027-09-21',NULL,35,78,NULL,'14067/2023'),(315,11,1,7,'LO Nº 25/2023','2023-10-18','2033-10-18',NULL,82,62,NULL,'25802/2012'),(316,1,1,7,'LMO Nº 007/2023','2023-11-06','2027-10-09',NULL,208,117,NULL,'8758/2022'),(317,1,1,13,'LMO Nº 012/2019','2019-10-24','2023-10-24',NULL,279,78,NULL,'20750/2019'),(318,1,1,8,'241/2023','2023-11-10','2027-11-10',NULL,40,116,NULL,'010296/2023'),(319,1,1,11,'0','2023-11-17','2028-11-10',NULL,280,131,NULL,'4496086/2023'),(320,7,6,7,'020/2023','2023-11-13','2027-11-13',NULL,257,48,NULL,'3834/2023'),(321,1,1,7,'LMO N° 891/2023','2023-10-06','2027-10-06',NULL,281,123,NULL,'58660/2023'),(322,1,1,7,'LMO Nº 0001/2023','2023-10-11','2027-10-11',NULL,29,58,NULL,'3962/2023'),(323,1,1,7,'01/2023','2023-11-14','2027-11-14',NULL,30,52,NULL,'0629/2022'),(324,1,1,7,'LMO Nº 022/2023','2023-12-12','2027-05-12',NULL,14,102,NULL,'585.061/2023'),(325,1,1,13,'LMO N° 029/2022','2022-11-03','2026-11-03',NULL,282,78,NULL,'22752/2022'),(326,1,1,7,'LO N° 35/2023','2023-12-13','2033-12-13',NULL,53,62,NULL,'37559/2014'),(327,7,5,9,'LMS 248/2023','2023-11-28','2027-11-28',NULL,55,116,NULL,'010295/2023'),(328,11,NULL,7,'022/2023','2023-11-30','2027-11-30',NULL,NULL,125,NULL,NULL),(329,11,1,7,'022/2023','2023-11-30','2027-11-30',NULL,283,125,'ESTA LICENÇA ESTÁ VINCULADA À ATIVIDADE DE COMÉRCIO VAREJISTA DE COMBUSTIVÉIS PARA VEÍCULOS AUTOMOTORES, COM CAPACIDADE DE ARMAZENAMENTO DE 90M³ DE COMBUSTÍVEIS, EM 03 TANQUES SUBTERRÂNEOS, E DE 1M³ DE ÓLEO USADO EM 01 TANQUE SUBTERRÂNEO INSTALADO NA ÁREA DE TROCA DE ÓLEO. ',NULL),(330,12,1,7,'49/2022','2022-09-01','2032-09-01',NULL,286,62,NULL,NULL),(331,1,1,8,'221/2023','2023-10-02',NULL,NULL,253,NULL,NULL,'004652/2023'),(332,7,NULL,15,'LMS N° 001/2024','2024-01-12','2027-01-12',NULL,NULL,117,NULL,'12051/2023'),(333,7,4,15,'LMS N° 001/2024','2024-01-12','2027-01-12',NULL,287,117,NULL,'12051/2023'),(334,7,9,15,'LMS N° 002/2024','2024-01-15','2027-01-15',NULL,288,117,NULL,'2696/2018'),(335,1,1,7,'LMO N° 11/2024','2024-02-15','2026-08-31',NULL,32,102,NULL,'523.811/2019'),(336,1,1,10,'LMO N° 19-2024','2024-01-30','2028-01-30',NULL,61,105,NULL,'35/2020'),(337,11,1,12,'LO N° 01/2024','2024-02-22','2028-02-22',NULL,289,48,NULL,'441/2024');
/*!40000 ALTER TABLE `licenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_uf` int NOT NULL,
  `ibge` char(8) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ibge_UNIQUE` (`ibge`),
  KEY `fk_uf_idx` (`id_uf`),
  CONSTRAINT `fk_uf` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (3,11,'5103403','CUIABA'),(4,12,'5003207','CORUMBA'),(5,12,'5008305','TRES LAGOAS'),(7,13,'3106200','BELO HORIZONTE'),(8,13,'3127701','GOVERNADOR VALADARES'),(9,13,'3133600','ITAPEVA'),(10,13,'3162955','SAO JOSÉ DA LAPA'),(11,13,'3170206','UBERLANDIA'),(12,16,'4113700','LONDRINA'),(14,16,'4119905','PONTA GROSSA'),(15,19,'3301009','CAMPOS DOS GOYTACAZES'),(16,19,'3304557','RIO DE JANEIRO'),(17,21,'4307906','FARROUPILHA'),(18,21,'4308607','GARIBALDI'),(21,24,'4202404','BLUMENAU'),(22,24,'4204301','CONCORDIA'),(24,24,'4209102','JOINVILLE'),(25,25,'3513801','DIADEMA'),(26,25,'3514304','DOURADO'),(27,25,'3516200','FRANCA'),(28,25,'3518800','GUARULHOS'),(29,25,'3519071','HORTOLÂNDIA'),(30,25,'3521804','ITAI'),(31,25,'3524006','ITUPEVA'),(32,25,'3525003','JANDIRA'),(33,25,'3527207','LORENA'),(34,25,'3530607','MOGI DA CRUZES'),(35,25,'3534401','OSASCO'),(36,25,'3537107','PEDREIRA'),(37,25,'3547809','SANTO ANDRE'),(38,25,'3548708','SAO BERNARDO DO CAMPO'),(39,25,'3550308','SAO PAULO'),(43,25,'3542404','REGENTE FEIJO'),(44,5,'2931350','TEIXEIRA DE FREITAS'),(45,8,'3200102','AFONSO CLAUDIO'),(46,8,'3200169','AGUA DOCE DO NORTE'),(47,8,'3200136','AGUIA BRANCA'),(48,8,'3200201','ALEGRE'),(49,8,'3200300','ALFREDO CHAVES'),(50,8,'3200359','ALTO RIO NOVO'),(51,8,'3200409','ANCHIETA'),(52,8,'3200508','APIACA'),(53,8,'3200607','ARACRUZ'),(54,8,'3200706','ATILIO VIVACQUA'),(55,8,'3200805','BAIXO GUANDU'),(56,8,'3200904','BARRA DE SAO FRANCISCO'),(58,8,'3201001','BOA ESPERANCA'),(59,8,'3201100','BOM JESUS DO NORTE'),(60,8,'3201159','BREJETUBA'),(61,8,'3201209','CACHOEIRO DE ITAPEMIRIM'),(62,8,'3201308','CARIACICA'),(63,8,'3201407','CASTELO'),(64,8,'3201506','COLATINA'),(65,8,'3201605','CONCEICAO DA BARRA'),(66,8,'3201704','CONCEICAO DO CASTELO'),(67,13,'3118304','CONSELHEIRO LAFAIETE'),(68,8,'3201803','DIVINO DE SAO LOURENCO'),(69,8,'3201902','DOMINGOS MARTINS'),(70,8,'3202009','DORES DO RIO PRETO'),(71,8,'3202108','ECOPORANGA'),(75,8,'3202207','FUNDAO'),(76,8,'3202256','GOVERNADOR LINDENBERG'),(77,8,'3202306','GUACUI'),(78,8,'3202405','GUARAPARI'),(79,8,'3202454','IBATIBA'),(80,8,'3202504','IBIRACU'),(81,8,'3202553','IBITIRAMA'),(82,8,'3202603','ICONHA'),(83,8,'3202652','IRUPI'),(84,8,'3202702','ITAGUACU'),(85,8,'3202801','ITAPEMIRIM'),(86,8,'3202900','ITARANA'),(87,8,'3203007','IUNA'),(88,8,'3203056','JAGUARE'),(89,8,'3203106','JERONIMO MONTEIRO'),(90,8,'3203130','JOAO NEIVA'),(91,8,'3203163','LARANJA DA TERRA'),(92,8,'3203205','LINHARES'),(93,8,'3203304','MANTENOPOLIS'),(94,8,'3203320','MARATAIZES'),(95,8,'3203346','MARECHAL FLORIANO'),(96,8,'3203353','MARILANDIA'),(97,8,'3203403','MIMOSO DO SUL'),(98,8,'3203502','MONTANHA'),(99,8,'3203601','MUCURICI'),(100,8,'3203700','MUNIZ FREIRE'),(101,8,'3203809','MUQUI'),(102,8,'3203908','NOVA VENECIA'),(103,8,'3204005','PANCAS'),(104,8,'3204054','PEDRO CANARIO'),(105,8,'3204104','PINHEIROS'),(106,8,'3204203','PIUMA'),(107,8,'3204252','PONTO BELO'),(108,8,'3204302','PRESIDENTE KENNEDY'),(113,8,'3204351','RIO BANANAL'),(114,8,'3204401','RIO NOVO DO SUL'),(115,8,'3204500','SANTA LEOPOLDINA'),(116,8,'3204559','SANTA MARIA DE JETIBA'),(117,8,'3204609','SANTA TERESA'),(118,8,'3204658','SAO DOMINGOS DO NORTE'),(119,8,'3204708','SAO GABRIEL DA PALHA'),(120,8,'3204807','SAO JOSE DO CALCADO'),(121,8,'3204906','SAO MATEUS'),(122,8,'3204955','SAO ROQUE DO CANAA'),(123,8,'3205002','SERRA'),(124,8,'3205010','SOORETAMA'),(125,8,'3205036','VARGEM ALTA'),(126,8,'3205069','VENDA NOVA DO IMIGRANTE'),(127,8,'3205101','VIANA'),(128,8,'3205150','VILA PAVAO'),(129,8,'3205176','VILA VALERIO'),(130,8,'3205200','VILA VELHA'),(131,8,'3205309','VITORIA');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgao_ambiental`
--

DROP TABLE IF EXISTS `orgao_ambiental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgao_ambiental` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) DEFAULT NULL,
  `sigla` varchar(8) DEFAULT NULL,
  `id_uf` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orgao_uf_idx` (`id_uf`),
  CONSTRAINT `fk_orgao_uf` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgao_ambiental`
--

LOCK TABLES `orgao_ambiental` WRITE;
/*!40000 ALTER TABLE `orgao_ambiental` DISABLE KEYS */;
INSERT INTO `orgao_ambiental` VALUES (1,'INSTITUTO DE MEIO AMBIENTE E RECURSOS HÍDRICOS','IEMA',8),(2,'INSTITUTO DO MEIO AMBIENTE E RECURSOS HÍDRICOS','INEMA',5),(3,'INSTITUTO ESTADUAL DO RIO DE JANEIRO','INEA',19),(4,'FUNDAÇÃO ESTADUAL DO MEIO AMBIENTE','FEAM',13),(5,'COMPANHIA AMBIENTAL DO ESTADO DE SÃO PAULO','CETESB',25),(6,'INSTITUTO BRASILEIRO DO MEIO AMBIENTE E DOS RECURSOS NATURAIS RENOVÁVEIS','IBAMA',7),(7,'SECRETARIA MUNICIPAL DE MEIO AMBIENTE','SEMMA',8),(8,'SECRETARIA DE MEIO AMBIENTE','SECMAM',8),(9,'SECRETARIA DE MEIO AMBIENTE','SECMAM',8),(10,'SECRETARIA MUNICIPAL AGRICULTURA, MEIO AMBIENTE, OBRAS E TRANSPORTE','SEMAMA',8),(11,'SECRETARIA MUNICIPAL DE MEIO AMBIENTE E RECURSOS HÍDRICOS NATURAIS','SEMAM',8),(12,'SECRETARIA MUNICIPAL DE MEIO AMBIENTE E DESENVOLVIMENTO SUSTENTÁVEL','SEMADS',8),(13,'SECRETARIA MUNICIPAL DE MEIO AMBIENTE E AGRICULTURA','SEMAG',8),(14,'SECRETARIA MUNICIPAL DE DESENVOLVIMENTO RURAL E MEIO AMBIENTE','SDRMA',8),(15,'SECRETARIA MUNICIPAL DE MEIO AMBIENTE','SMMA',8);
/*!40000 ALTER TABLE `orgao_ambiental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` char(1) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `fantasia` varchar(100) DEFAULT NULL,
  `cliente` char(1) DEFAULT NULL,
  `fornecedor` char(1) DEFAULT NULL,
  `usuario` char(1) DEFAULT NULL,
  `obs` mediumtext,
  `situacao` char(1) DEFAULT 'A',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `cnpj_UNIQUE` (`cnpj`),
  KEY `nome_INDEX` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'J',NULL,'03238104000127','POSTO ITABAPOANA LTDA - EPP','POSTO ITABAPOANA','S','N','N',NULL,'A'),(2,'J',NULL,'36348472000187','AUTO POSTO 4 RODAS LTDA','POSTO 4 RODAS','S','N','N',NULL,'I'),(6,'J',NULL,'31465040000132','POSTO ITAPOA LTDA','POSTO ITAPOA','S','N','N',NULL,'A'),(7,'J',NULL,'30544795000160','AUTO SERVICO LORENCAO LTDA','AUTO SERVICO LORENCAO LTDA','S','N','N',NULL,'A'),(10,'J',NULL,'11368640000175','POSTO DIVINO LTDA',NULL,'S','N','N',NULL,'A'),(11,'J',NULL,'09145338000106','A NETO COMERCIO DE COMBUSTIVEIS',NULL,'S','N','N',NULL,'A'),(12,'J',NULL,'05424269000119','ALFA AUTO CENTER LTDA',NULL,'S','N','N',NULL,'A'),(13,'J',NULL,'39798186000101','AUTO POSTO VALERIO LTDA','POSTO VALERIO','S','N','N','{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Tahoma;}{\\f1\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16 - N\\\'c3O FAZ MAIS GEST\\\'c3O - \\f1\\par\r\n}\r\n\0','I'),(14,'J',NULL,'03570327000197','ALTOE REVENDEDORA DE COMBUSTIVEIS LTDA',NULL,'S','N','N',NULL,'A'),(15,'J',NULL,'03570327000278','ALTOE REVENDEDORA DE COMBUSTIVEIS LTDA','ALTOÉ REVENDEDORA FILIAL','S','N','N',NULL,'A'),(16,'J',NULL,'05552292000199','ATLANTICA PRODUTOS DE PETROLEO LTDA',NULL,'S','N','N',NULL,'A'),(17,'J',NULL,'30734289000133','POSTO BANDEIRANTE LTDA',NULL,'S','N','N','{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Tahoma;}{\\f1\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16 - N\\\'c3O FAZ GEST\\\'c3O - \\f1\\par\r\n}\r\n\0','I'),(18,'J',NULL,'31764079000150','POSTO BOA VISTA LTDA',NULL,'S','N','N',NULL,'I'),(19,'J',NULL,'30581128000157','CARAMURU AUTO SERVICO LTDA',NULL,'S','N','N',NULL,'A'),(20,'J',NULL,'03961625000108','CARLOS ALBERTO SCHRAIBER ME',NULL,'S','N','N',NULL,'A'),(21,'J',NULL,'08000271000159','POSTO AGUIA LTDA',NULL,'S','N','N',NULL,'A'),(22,'J',NULL,'10387739000151','POSTO AGUIA II LTDA EPP',NULL,'S','N','N',NULL,'A'),(23,'J',NULL,'27942085004413','COOPEAVI - COOPERATIVA AGROPECUARIA CENTRO SERRANA',NULL,'S','N','N',NULL,'I'),(24,'J',NULL,'17603112000130','CLAUDIA BRANDAO COUTINHO',NULL,'S','N','N',NULL,'A'),(25,'J',NULL,'02522442000123','POSTO DETROIT EIRELI',NULL,'S','N','N',NULL,'A'),(26,'J',NULL,'22142123000108','CLAUDINEY PEREIRA DE SOUZA - ME',NULL,'S','N','N',NULL,'I'),(27,'J',NULL,'27104876000134','POSTO DOIS PINHEIROS LTDA',NULL,'S','N','N',NULL,'A'),(28,'J',NULL,'13744360000140','POSTO DARWIN VILA VELHA LTDA',NULL,'S','N','N',NULL,'A'),(29,'J',NULL,'03287713000176','POSTO EL SHADDAI LTDA EPP',NULL,'S','N','N',NULL,'A'),(30,'J',NULL,'27732924000139','POSTO E RESTAURANTE ELDORADO LTDA',NULL,'S','N','N',NULL,'A'),(31,'J',NULL,'28048452000162','POSTO ORLANDI DE COMBUSTIVEIS E DERIVADOS EIRELI',NULL,'S','N','N',NULL,'I'),(32,'J',NULL,'31279292000177','POSTO DE COMBUSTIVEIS VSB LTDA',NULL,'S','N','N',NULL,'A'),(33,'J',NULL,'10491602000142','AUTO POSTO EMIRADOS ARABES LTDA EPP',NULL,'S','N','N',NULL,'A'),(34,'J',NULL,'01623423000120','POSTO ECOPORANGA LTDA',NULL,'S','N','N',NULL,'A'),(35,'J',NULL,'11060293000119','ENSEADA AZUL COMBUSTIVEIS LTDA',NULL,'S','N','N',NULL,'A'),(36,'J',NULL,'21515248000165','EUDALDO VIEIRA LOUREIRO NETTO ME',NULL,'S','N','N',NULL,'I'),(37,'J',NULL,'27475714000102','AUTO POSTO PESSOTTI & FONTES LTDA','POSTO PESSOTTI & FONTES','S','N','N',NULL,'A'),(38,'J',NULL,'05417066000103','AUTO POSTO GAVA LTDA',NULL,'S','N','N','{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Tahoma;}{\\f1\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16 - N\\\'c3O FAZ GEST\\\'c3O - \\f1\\par\r\n}\r\n\0','I'),(39,'J',NULL,'07259796000140','POSTO GODOY FILHO LTDA',NULL,'S','N','N',NULL,'A'),(40,'J',NULL,'05656928000142','POSTO GUILHERME LTDA EPP',NULL,'S','N','N',NULL,'A'),(41,'J',NULL,'36398436000128','POSTO IMIGRANTES LTDA',NULL,'S','N','N',NULL,'A'),(42,'J',NULL,'08581195000112','POSTO RIOS LTDA',NULL,'S','N','N',NULL,'A'),(43,'J',NULL,'28022195000190','POSTO STIEG LTDA ME',NULL,'S','N','N',NULL,'I'),(44,'J',NULL,'27147867000120','AUTO POSTO INDEPENDENCIA LTDA',NULL,'S','N','N','{\\rtf1\\ansi\\ansicpg1252\\deff0{\\fonttbl{\\f0\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16\\par\r\n}\r\n\0','A'),(46,'J',NULL,'12248053000105','POSTO DOS JAPONESES LTDA',NULL,'S','N','N',NULL,'A'),(47,'J',NULL,'03454983000124','POSTO JARDIM DA MONTANHA LTDA',NULL,'S','N','N',NULL,'A'),(48,'J',NULL,'04792829000125','L.A.S. AUTO SERVICO LTDA',NULL,'S','N','N',NULL,'A'),(49,'J',NULL,'13384335000100','POSTO LIDER ALEGRE EIRELI',NULL,'S','N','N','{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Tahoma;}{\\f1\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16 - N\\\'c3O FAZ GEST\\\'c3O - \\f1\\par\r\n}\r\n\0','I'),(50,'J',NULL,'05221164000162','AUTO POSTO LIDER LTDA',NULL,'S','N','N','{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Tahoma;}{\\f1\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16 - N\\\'c3O FAZ GEST\\\'c3O - \\f1\\par\r\n}\r\n\0','I'),(51,'J',NULL,'21563491000159','AUTO POSTO LAMPIER LTDA ME',NULL,'S','N','N',NULL,'A'),(52,'J',NULL,'08801267000190','LOVEL COMBUSTIVEIS LTDA - EPP',NULL,'S','N','N',NULL,'A'),(53,'J',NULL,'02189919000109','POSTO MALACARNE LTDA',NULL,'S','N','N',NULL,'A'),(54,'J',NULL,'39277771000166','POSTO PAI E FILHA LTDA','MALACARNE FILIAL','S','N','N',NULL,'A'),(55,'J',NULL,'00235579000171','MARMORES E GRANITOS QUATRO IRMAOS LTDA ME',NULL,'S','N','N',NULL,'A'),(57,'J',NULL,'39385059000180','POSTO MARLIN LTDA',NULL,'S','N','N',NULL,'A'),(58,'J',NULL,'23305603000105','POSTO MARLIM BRANCO LTDA',NULL,'S','N','N',NULL,'A'),(59,'J',NULL,'08471100000108','POSTO MCLAREN LTDA','904','S','N','N',NULL,'I'),(60,'J',NULL,'04400307000130','POSTO MOXUARA LTDA',NULL,'S','N','N',NULL,'A'),(61,'J',NULL,'20329254000165','POSTO DE COMBUSTIVEL MUNDIAL LTDA',NULL,'S','N','N',NULL,'A'),(62,'J',NULL,'07585620000189','POSTO DE COMBUSTIVEL PAI E FILHOS LTDA',NULL,'S','N','N',NULL,'A'),(63,'J',NULL,'32616007000129','AUTO POSTO PARAISO LTDA',NULL,'S','N','N',NULL,'A'),(64,'J',NULL,'27152628000401','PIANNA VEICULOS LTDA','PIANNA SAO MATEUS','S','N','N',NULL,'I'),(65,'J',NULL,'27152628000169','PIANNA VEICULOS LTDA','PIANNA LINHARES','S','N','N',NULL,'I'),(66,'J',NULL,'28385235000168','AUTO POSTO PARAJU LTDA',NULL,'S','N','N',NULL,'A'),(67,'J',NULL,'27926384000124','PETROVERA - POSTO DE PRODUTOS DE PETROLEO E TRANSPORTES LTDA',NULL,'S','N','N',NULL,'I'),(68,'J',NULL,'30869047000157','ABT COMÉRCIO DE COMBUSTÍVEIS LTDA',NULL,'S','N','N',NULL,'A'),(69,'J',NULL,'25068068000133','ATUAL PETROLEO LTDA',NULL,'S','N','N','{\\rtf1\\ansi\\deff0{\\fonttbl{\\f0\\fnil\\fcharset0 Tahoma;}{\\f1\\fnil Tahoma;}}\r\n\\viewkind4\\uc1\\pard\\lang1046\\f0\\fs16 N\\\'c3O FAZ GEST\\\'c3O \\f1\\par\r\n}\r\n\0','I'),(70,'J',NULL,'07371930000109','POSTO PIO XII COMERCIO DE COMBUSTIVEIS EIRELI',NULL,'S','N','N',NULL,'A'),(71,'J',NULL,'31895433000186','POSTO FLORA LTDA',NULL,'S','N','N',NULL,'A'),(72,'J',NULL,'28059632000140','A.B.C. AUTO SERVICOS LTDA',NULL,'S','N','N',NULL,'A'),(73,'J',NULL,'17753176000117','AUTO POSTO BOULEVARD LTDA ME',NULL,'S','N','N',NULL,'A'),(75,'J',NULL,'13814642000176','POSTO BR 31 AUTO SERVICOS LTDA',NULL,'S','N','N',NULL,'A'),(76,'J',NULL,'07841097000104','POSTO DE COMBUSTIVEIS CELSAO LTDA ME',NULL,'S','N','N',NULL,'I'),(77,'J',NULL,'11339901000129','FORMULA 1 AUTO SERVICOS LTDA',NULL,'S','N','N',NULL,'A'),(78,'J',NULL,'27056647000191','POSTO MOSCOSO LTDA',NULL,'S','N','N',NULL,'A'),(79,'J',NULL,'15010530000198','AUTO POSTO R M LTDA',NULL,'S','N','N',NULL,'A'),(80,'J',NULL,'28037679000102','POSTO TUBARÃO COMÉRCIO DE DERIVADOS DE PETRÓLEO LTDA',NULL,'S','N','N',NULL,'A'),(81,'J',NULL,'31717226000131','POSTO CHEGADA LTDA',NULL,'S','N','N',NULL,'A'),(82,'J',NULL,'02877155000136','POSTO KADILLAC LTDA',NULL,'S','N','N',NULL,'A'),(83,'J',NULL,'09291784000129','POSTO SOLIPETRO GAS LTDA',NULL,'S','N','N',NULL,'A'),(84,'J',NULL,'27732460000160','DIRCEU COMERCIO E REPRESENTACOES LTDA','','S','N','N',NULL,'A'),(85,'J',NULL,'27732460000241','DIRCEU COMERCIO E REPRESENTACOES LTDA','DIRCEU FLAP','S','N','N',NULL,'A'),(86,'J',NULL,'01557127000179','AUTO POSTO ILHA DAS GARCAS LTDA',NULL,'S','N','N',NULL,'A'),(87,'J',NULL,'05863148000173','BOA ESPERANCA COMERCIO DE COMBUSTIVEIS LTDA',NULL,'S','N','N',NULL,'I'),(88,'J',NULL,'30783856000141','POSTO FERRARI SANTA TERESA LTDA',NULL,'S','N','N',NULL,'I'),(89,'J',NULL,'29507807000105','POSTO FERRARI BSF LTDA. EPP',NULL,'S','N','N',NULL,'I'),(90,'J',NULL,'09369995000137','POSTO DE COMBUSTIVEIS FERRARI SAO MATEUS LTDA','FERRARI SÃO MATEUS','S','N','N',NULL,'I'),(91,'J',NULL,'17286059000190','AUTO POSTO FIORANO EIRELI EPP',NULL,'S','N','N',NULL,'I'),(92,'J',NULL,'20213103000147','G. AVELINO QUEIROZ POSTO DE COMBUSTIVEL LTDA.',NULL,'S','N','N',NULL,'I'),(93,'J',NULL,'12382635000180','POSTO GENTIL SAO DOMINGOS LTDA',NULL,'S','N','N',NULL,'I'),(94,'J',NULL,'32439853000110','IRMAOS BIS LTDA',NULL,'S','N','N',NULL,'I'),(95,'J',NULL,'19766058000179','AUTO POSTO ITALIA LTDA. EPP',NULL,'S','N','N',NULL,'I'),(96,'J',NULL,'31815194000107','POSTO MINEIRO LTDA',NULL,'S','N','N',NULL,'I'),(97,'J',NULL,'09566492000151','POSTO DE COMBUSTIVEL PAVAO LTDA-EPP',NULL,'S','N','N',NULL,'I'),(98,'J',NULL,'31690779000148','POSTO E AUTO SERVICO PINHO EIRELI EPP',NULL,'S','N','N',NULL,'I'),(99,'J',NULL,'32475147000205','ROELWA COMBUSTIVEIS E LUBRIFICANTES LTDA',NULL,'S','N','N',NULL,'I'),(100,'J',NULL,'32475147000124','ROELWA COMBUSTIVEIS E LUBRIFICANTES LTDA','MATRIZ','S','N','N',NULL,'I'),(101,'J',NULL,'07494435000189','POSTO DE COMBUSTIVEIS SAO MARCOS LTDA',NULL,'S','N','N',NULL,'I'),(102,'J',NULL,'07885299000158','POSTO DE COMBUSTIVEIS FERRARI BRACO DO RIO LTDA',NULL,'S','N','N',NULL,'I'),(103,'J',NULL,'05892261000187','AUTO POSTO VALE ENCANTADO LTDA',NULL,'S','N','N',NULL,'I'),(104,'J',NULL,'12656675000172','COMERCIO DE COMBUSTIVEIS JOAO NEIVA LTDA',NULL,'S','N','N',NULL,'I'),(105,'J',NULL,'27985174000107','POSTO FERRARI LINHARES LTDA.',NULL,'S','N','N',NULL,'I'),(106,'J',NULL,'05609081000145','AUTO SERVICO FLORESTA LTDA',NULL,'S','N','N',NULL,'I'),(107,'J',NULL,'28048312000194','AUTO SERVICO CANAA LTDA',NULL,'S','N','N',NULL,'A'),(108,'J',NULL,'01823633000162','POSTO METROPOLITANO LTDA',NULL,'S','N','N',NULL,'A'),(109,'J',NULL,'36336386000154','POSTO TRES COQUEIROS LTDA',NULL,'S','N','N',NULL,'A'),(110,'J',NULL,'30564108000178','AUTO POSTO ARACAS LTDA',NULL,'S','N','N',NULL,'I'),(111,'J',NULL,'04850382000101','POSTO ARIBIRI DOS GAS LTDA',NULL,'S','N','N',NULL,'I'),(112,'J',NULL,'04128897000194','AUTO POSTO BELO LTDA',NULL,'S','N','N',NULL,'I'),(113,'J',NULL,'31709116000128','POSTO CAMBURI DOS GAS LTDA',NULL,'S','N','N',NULL,'I'),(114,'J',NULL,'22356015000120','CENTRAL COMERCIO DE COMBUSTIVEIS LTDA',NULL,'S','N','N',NULL,'I'),(115,'J',NULL,'39285176000172','COMERCIO PIONEIRO DO GAS LIMITADA',NULL,'S','N','N',NULL,'I'),(116,'J',NULL,'16577742000114','AUTO POSTO ESCOLA COMERCIO DE COMBUSTIVEIS, LUBRIFICANTES E SERVICOS LTDA',NULL,'S','N','N',NULL,'I'),(117,'J',NULL,'01503536000192','POSTO MARCELA LIMIDATA',NULL,'S','N','N',NULL,'I'),(118,'J',NULL,'03455936000103','POSTO JARDIM AMERICA DO GAS LTDA',NULL,'S','N','N',NULL,'I'),(119,'J',NULL,'28402584000140','POSTO EUCALIPTO LIMITADA',NULL,'S','N','N',NULL,'I'),(120,'J',NULL,'05904268000171','POSTO MEDITERRANEO LTDA',NULL,'S','N','N',NULL,'I'),(121,'J',NULL,'32492498000143','AUTO SERVICO OLIVA LTDA',NULL,'S','N','N',NULL,'I'),(122,'J',NULL,'03028906000102','POLUS COMERCIO E SERVICOS LTDA',NULL,'S','N','N',NULL,'I'),(123,'J',NULL,'01514752000133','POSTO THIAGO LIMITADA',NULL,'S','N','N',NULL,'I'),(124,'J',NULL,'18046725000186','RM 1 - COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES LTDA',NULL,'S','N','N',NULL,'I'),(125,'J',NULL,'34806805000149','AUTO POSTO SANTANA EIRELI',NULL,'S','N','N',NULL,'A'),(126,'J',NULL,'30737746000143','AUTO POSTO 2001 LTDA',NULL,'S','N','N',NULL,'A'),(127,'J',NULL,'39383377000102','AUTO POSTO VILA VELHA LTDA',NULL,'S','N','N',NULL,'A'),(128,'J',NULL,'26593333000165','DOIS IRMAOS DISTRIBUIDORA DE PETROLEO LTDA',NULL,'S','N','N',NULL,'I'),(129,'J',NULL,'03077545000194','IRMAOS PIANZOLI LTDA',NULL,'S','N','N',NULL,'A'),(130,'J',NULL,'27656438000189','ALVINO PIANZOLI & IRMAO LTDA',NULL,'S','N','N',NULL,'I'),(131,'J',NULL,'27656438000260','ALVINO PIANZOLI & IRMAO LTDA',NULL,'S','N','N',NULL,'I'),(132,'J',NULL,'01874385000189','JORGE PIANZOLI & IRMAO LTDA',NULL,'S','N','N',NULL,'A'),(133,'J',NULL,'14957748000191','POSTO ESPIRITO SANTO LTDA - ME',NULL,'S','N','N',NULL,'I'),(134,'J',NULL,'31439012000140','POSTO CRISTAL LTDA',NULL,'S','N','N',NULL,'I'),(135,'J',NULL,'27434000000237','IRMAOS VARGAS LTDA',NULL,'S','N','N',NULL,'A'),(136,'J',NULL,'12920664000158','REDE SHOW AUTO POSTO LTDA',NULL,'S','N','N',NULL,'A'),(137,'J',NULL,'22607264000140','REDE SHOW AUTO POSTO II EIRELI ME',NULL,'S','N','N',NULL,'A'),(138,'J',NULL,'10201220000137','AUTO POSTO ALEGRE LTDA',NULL,'S','N','N',NULL,'A'),(139,'J',NULL,'03058196000163','AUTO POSTO DANTAS LTDA ME',NULL,'S','N','N',NULL,'I'),(140,'J',NULL,'31488331000146','AUTO POSTO IBITIRAMA LTDA EPP',NULL,'S','N','N',NULL,'A'),(141,'J',NULL,'01066061000114','POSTO MORGADO LTDA EPP',NULL,'S','N','N',NULL,'A'),(142,'J',NULL,'10985327000113','AUTO POSTO SAO LOURENCO LTDA',NULL,'S','N','N',NULL,'A'),(143,'J',NULL,'18366697000184','POSTO RIO MARINHO COMERCIO DE DERIVADOS DE PETROLEO EIRELI EPP',NULL,'S','N','N',NULL,'A'),(144,'J',NULL,'33675152000143','RODEIO COMERCIO DE COMBUSTIVEIS LTDA',NULL,'S','N','N',NULL,'A'),(145,'J',NULL,'30694875000100','R K DERIVADOS DE PETROLEO LTDA',NULL,'S','N','N',NULL,'A'),(146,'J',NULL,'11054206000110','R K REVENDA DE PETROLEO LTDA',NULL,'S','N','N',NULL,'A'),(147,'J',NULL,'27130574000130','COMBUSTIVEIS STA HELENA LTDA',NULL,'S','N','N',NULL,'A'),(148,'J',NULL,'27062307000173','POSTO RR LTDA',NULL,'S','N','N',NULL,'A'),(149,'J',NULL,'21147684000129','POSTO SANTA HELENA EIRELI ME',NULL,'S','N','N',NULL,'A'),(150,'J',NULL,'26136757000109','POSTO SAPUCAIA DE COMBUSTIVEIS LTDA EPP',NULL,'S','N','N',NULL,'A'),(151,'J',NULL,'39318639000155','AUTO SERVICO TREVILIN LTDA',NULL,'S','N','N',NULL,'I'),(152,'J',NULL,'05926008000105','POSTO SERRA VERDE LTDA EPP',NULL,'S','N','N',NULL,'A'),(153,'J',NULL,'21927608000136','POSTO TRILHA LTDA',NULL,'S','N','N',NULL,'A'),(154,'J',NULL,'30564280000121','UNI POSTO LTDA','UNI POSTO','S','N','N',NULL,'I'),(162,'J',NULL,'27571111000104','ABS COMERCAL DE COMBUSTÍVEIS',NULL,'S','N','N',NULL,'A'),(184,'J',NULL,'36232085000180','POSTO ITAPARICA F1 LTDA','F1','S','N','N',NULL,'A'),(185,'J',NULL,'28413219000131','COMERCIAL NORTE SUL LTDA',NULL,'S','N','N',NULL,'A'),(190,'J',NULL,'07571908000102','AUTO POSTO CORAL LTDA',NULL,'S','N','N',NULL,'A'),(192,'J',NULL,'04228463000166','AUTO POSTO MARLIN LTDA',NULL,'S','N','N',NULL,'A'),(193,'J',NULL,'10569345000114','POSTO CRISTÓVÃO COLOMBO LTDA',NULL,'S','N','N',NULL,'A'),(194,'J',NULL,'34309213000111','AUTO POSTO DE COMBUSTÍVEL SÃO JOSÉ LTDA',NULL,'S','N','N',NULL,'I'),(197,'J',NULL,'08052109000184','POSTO DE COMBUSTÍVEL GOLFINHO LTDA',NULL,'S','N','N',NULL,'I'),(198,'J',NULL,'29545989000109','AUTO POSTO NOVA MARCA LTDA',NULL,'S','N','N',NULL,'I'),(202,'J',NULL,'12998987000164','AUTO POSTO SAPAVINI LTDA','POSTO SAPAVINI','S','N','N',NULL,'A'),(203,'J',NULL,'28413664000100','POSTO SANTA JOANA LTDA EPP',NULL,'S','N','N',NULL,'A'),(204,'J',NULL,'05534879000175','POSTO MILENIUM LTDA',NULL,'S','N','N',NULL,'A'),(205,'J',NULL,'30456018000163','ALTERNATO COMERCIO DE COMBUSTÍVEIS LTDA',NULL,'S','N','N',NULL,'I'),(206,'J',NULL,'15003120000110','POSTO LM EIRELI',NULL,'S','N','N',NULL,'A'),(207,'J',NULL,'27976620000117','CORDEIRO E FILHOS LTDA',NULL,'S','N','N',NULL,'A'),(208,'J',NULL,'08581195000201','POSTO RIOS LTDA','POSTO VARZEA ALEGRE','S','N','N',NULL,'A'),(209,'J',NULL,'32417685000162','GLOBAL INDÚSTRIA E COMÉRCIO LTDA',NULL,'S','N','N',NULL,'I'),(210,'J',NULL,'04310842000109','AUTO POSTO SÃO JOSÉ',NULL,'S','N','N',NULL,'A'),(211,'J',NULL,'38530950000109','POSTO CAPUABA LTDA',NULL,'S','N','N',NULL,'A'),(212,'J',NULL,'23753739000170','POSTO PAIS E FILHAS LTDA',NULL,'S','N','N',NULL,'A'),(213,'F','03474916777',NULL,'LAUSEMIR GONÇALVEZ ',NULL,'S','N','N',NULL,'A'),(225,'J',NULL,'08645978000112','AUTO POSTO CENA LTDA- EPP',NULL,'S','N','N',NULL,'I'),(232,'J',NULL,'35798964000101','S.A.BIAZUTTI LEITE - AUTO POSTO REDE SHOW EIRELI',NULL,'S','N','N',NULL,'A'),(234,'J',NULL,'10197775000152','REDE DE POSTOS SAGUI LTDA',NULL,'S','N','N',NULL,'I'),(236,'J',NULL,'28666395000185','POSTO PORTAL DA ENSEADA LTDA',NULL,'S','N','N',NULL,'A'),(237,'J',NULL,'39688883000100','VIA PETRÓLEO LTDA',NULL,'S','N','N',NULL,'A'),(238,'J',NULL,'31775281000773','ESTRELA H MOTOS LTDA',NULL,'S','N','N',NULL,'A'),(239,'J',NULL,'31775281000188','ESTRELA H MOTOS LTDA','MATRIZ','S','N','N',NULL,'A'),(240,'J',NULL,'05200898000165','PLANETA H VEICULOS LTDA',NULL,'S','N','N',NULL,'A'),(241,'J',NULL,'04632839000101','POSTO SW LTDA',NULL,'S','N','N',NULL,'A'),(242,'F','09211270731',NULL,'RICARDO FRANCISCO DE SOUZA JUNIOR',NULL,'S','N','N',NULL,'A'),(243,'J',NULL,'39270509000190','MAMPRIM COMERCIAL DE COMBUSTÍVEL EIRELI',NULL,'S','N','N',NULL,'A'),(244,'J',NULL,'03356662000197','COMERCIAL DE COMBUSTÍVEL IBATIBENSE LTDA',NULL,'S','N','N',NULL,'A'),(245,'J',NULL,'03461876000123','ITACAR VENDA NOVA MOTOS LTDA','ESTRELA H VENDA NOVA','S','N','N',NULL,'A'),(246,'J',NULL,'27303411000374','AUTO POSTO DADINHO LTDA','POSTO DADINHO FILIAL','S','N','N',NULL,'A'),(247,'J',NULL,'27303411000102','AUTO POSTO DADINHO LTDA','MATRIZ','S','N','N',NULL,'A'),(248,'J',NULL,'04960337000100','RENOVA COMERCIO COMBUSTÍVEL E SERVIÇOS LTDA',NULL,'S','N','N',NULL,'A'),(249,'F','09352078721',NULL,'EDSON STIEG',NULL,'S','N','N',NULL,'A'),(250,'J',NULL,'32787058000113','AUTO POSTO NOVA ZELANDIA LTDA',NULL,'S','N','N',NULL,'A'),(251,'J',NULL,'04165053000113','GLORIA POSTOS E SERVIÇOS LTDA',NULL,'S','N','N',NULL,'A'),(252,'J',NULL,'31775281001664','ESTRELA H MOTOS LTDA','BOM JESUS DO NORTE','S','N','N',NULL,'A'),(253,'J',NULL,'44461982000194','POSTO GUMS LTDA',NULL,'S','N','N',NULL,'A'),(254,'J',NULL,'31772304000109','POSTO COSTA AZUL LTDA',NULL,'S','N','N',NULL,'A'),(255,'J',NULL,'35058363000162','J V E CERQUEIRA COMBUSTIVEIS',NULL,'S','N','N',NULL,'A'),(256,'J',NULL,'41184832000192','POSTO NOSSA SENHORA DAS GRAÇAS LTDA',NULL,'S','N','N',NULL,'A'),(257,'J',NULL,'31775281001150','ESTRELA H MOTOS LTDA',NULL,'S','N','N',NULL,'A'),(258,'J',NULL,'46400994000134','HELENA MARIA KOSSMANN FUJISAWA 4286306672',NULL,'S','N','N',NULL,'A'),(259,'J',NULL,'11509896000317','COMSAUTO - COMERCIO E SERVIÇOS PARA AUTOMOVEIS LTDA',NULL,'S','N','N',NULL,'A'),(260,'J',NULL,'31038705000121','E.L. CHAVES POSTO DE COMBUSTÍVEL',NULL,'S','N','N',NULL,'A'),(261,'J',NULL,'41391927000187','RK REVENDEDORA DE PETRÓLEO LTDA',NULL,'S','N','N',NULL,'A'),(262,'J',NULL,'24022320000100','FORT LYPTUS EIRELLI',NULL,'S','N','N',NULL,'A'),(263,'J',NULL,'43180360000125','POSTO BENINCA LTDA',NULL,'S','N','N',NULL,'A'),(264,'J',NULL,'29946821000105','PEISINO AUTO POSTO E SERVIÇOS LTDA',NULL,'S','N','N',NULL,'A'),(265,'J',NULL,'27569763000104','PETRO MIMOSO DO SUL LTDA',NULL,'S','N','N',NULL,'A'),(266,'J',NULL,'07883158000104','POSTO DE GASOLINA MOURA LTDA - ME',NULL,'S','N','N',NULL,'A'),(267,'J',NULL,'31775281001826','ESTRELA H MOTOS LTDA',NULL,'S','N','N',NULL,'A'),(268,'J',NULL,'10757820000186','POSTO PRAIA DE SANTA MÔNICA LTDA','POSTO PRAIA DE SANTA MÔNICA','S','N','N',NULL,'A'),(269,'J',NULL,'14096313000108','AUTO POSTO GUARAPARI LTDA',NULL,'S','N','N',NULL,'A'),(270,'J',NULL,'09076862000172','VALOR POSTOS PRAIA DO MORRO LTDA',NULL,'S','N','N',NULL,'A'),(271,'J',NULL,'27020445000190','GUARAVE GUARAPARI VEICULOS LTDA',NULL,'S','N','N',NULL,'A'),(272,'J',NULL,'37663211000114','FAEL PETROLEO TRR LTDA','FAEL PETROLEO','S','N','N',NULL,'A'),(277,'J',NULL,'47882854000102','POSTO PETROTRANS VILA VELHA LTDA',NULL,'S','N','N',NULL,'A'),(278,'J',NULL,'27020445000513','GUARAVE GUARAPARI VEICULOS LTDA','FILIAL','S','N','N',NULL,'A'),(279,'J',NULL,'34196134000141','AUTO POSTO MEAIPE LTDA',NULL,'S','N','N',NULL,'A'),(280,'J',NULL,'36309276000101','AUTO SERVIÇO OURO NEGRO LTDA',NULL,'S','N','N',NULL,'A'),(281,'J',NULL,'32685772000109','YAHOO AUTO POSTO LTDA',NULL,'S','N','N',NULL,'A'),(282,'J',NULL,'38903962000123','AUTO POSTO SOTECO LTDA',NULL,'S','N','N',NULL,'A'),(283,'J',NULL,'06066268000102','AUTO POSTO FASSARELLA',NULL,'S','N','N',NULL,'A'),(286,'J',NULL,'47399659000126','POSTO VILA ISABEL COMERCIO DE DERIVADOS DE PETRÓLEO LTDA',NULL,'S','N','N',NULL,'A'),(287,'J',NULL,'30977938000127','POSTO CANAA LTDA',NULL,'S','N','N',NULL,'A'),(288,'J',NULL,'21286310000194','MOTOBOX 93 LTDA',NULL,'S','N','N',NULL,NULL),(289,'J',NULL,'48651613000115','POSTO PORTAL DO CAPARAO LTDA','POSTO PORTAL DO CAPARAO','S','N','N',NULL,'A');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` char(1) DEFAULT NULL,
  `numero` varchar(11) DEFAULT NULL,
  `tem_whatsapp` char(1) DEFAULT NULL,
  `id_pessoa` int DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pessoa_idx` (`id_pessoa`),
  CONSTRAINT `fk_telefone_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_licenca`
--

DROP TABLE IF EXISTS `tipo_licenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_licenca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `sigla` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_licenca`
--

LOCK TABLES `tipo_licenca` WRITE;
/*!40000 ALTER TABLE `tipo_licenca` DISABLE KEYS */;
INSERT INTO `tipo_licenca` VALUES (1,'LICENÇA MUNICIPAL DE OPERAÇÃO ','LMO'),(2,'LICENÇA MUNICIPAL DE REGULARIZAÇÃO ','LMR'),(3,'LICENÇA MUNICIPAL DE INSTALAÇÃO ','LMI'),(4,'LICENÇA MUNICIPAL PREVIA','LMP'),(5,'LICENÇA MUNICIPAL UNICA ','LMU'),(6,'LICENÇA AMBIENTAL ÚNICA','LAU'),(7,'LICENÇA MUNICIPAL SIMPLIFICADA ','LMS'),(8,'LICENÇA AMBIENTAL DE REGULARIZAÇÃO','LAR'),(9,'LICENÇA DE OPERAÇÃO CORRETIVA','LOC'),(10,'LICENÇA MUNICIPAL AMBIENTAL DE REGULARIZAÇÃO','LMAR'),(11,'LICENÇA DE OPERAÇÃO','LO'),(12,'LICENÇA PARA ATIVIDADES DE IMPACTO DETERMINADO','LID');
/*!40000 ALTER TABLE `tipo_licenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `sigla` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `sigla_UNIQUE` (`sigla`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (1,'Acre','AC'),(2,'Alagoas','AL'),(3,'Amapá','AP'),(4,'Amazonas','AM'),(5,'Bahia','BA'),(6,'Ceará','CE'),(7,'Distrito Federal','DF'),(8,'Espírito Santo','ES'),(9,'Goiás','GO'),(10,'Maranhão','MA'),(11,'Mato Grosso','MT'),(12,'Mato Grosso do Sul','MS'),(13,'Minas Gerais','MG'),(14,'Pará','PA'),(15,'Paraíba','PB'),(16,'Paraná','PR'),(17,'Pernambuco','PE'),(18,'Piauí','PI'),(19,'Rio de Janeiro','RJ'),(20,'Rio Grande do Norte','RN'),(21,'Rio Grande do Sul','RS'),(22,'Rondônia','RO'),(23,'Roraima','RR'),(24,'Santa Catarina','SC'),(25,'São Paulo','SP'),(26,'Sergipe','SE'),(27,'Tocantins','TO');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pessoa` int DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(16) NOT NULL,
  `nome` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  KEY `pk_usuario_pessoa_idx` (`id_pessoa`),
  CONSTRAINT `pk_usuario_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,NULL,'admin','123321','Administrador'),(2,NULL,'luiz','123456','Luiz'),(3,NULL,'lucas','123456','Lucas'),(4,NULL,'mateus','123456','Mateus'),(5,NULL,'patricia','123456','Patrícia'),(6,NULL,'candida','123456','Candida'),(7,NULL,'aline','123456','Aline'),(8,NULL,'amabily','123456','Amabily'),(9,NULL,'jamilly','123456','Jamilly');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ecoplan'
--

--
-- Current Database: `sys`
--

USE `sys`;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((convert(`b`.`trx_id` using utf8mb4) = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((convert(`r`.`trx_id` using utf8mb4) = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`statement_latency`,`progress`,`lock_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `columns`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`columns`.`TABLE_NAME` AS `TABLE_NAME`,`columns`.`COLUMN_NAME` AS `COLUMN_NAME`,`columns`.`DATA_TYPE` AS `DATA_TYPE`,`columns`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`tables`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`tables`.`AUTO_INCREMENT` / ((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`columns`.`TABLE_SCHEMA` = `tables`.`TABLE_SCHEMA`) and (`columns`.`TABLE_NAME` = `tables`.`TABLE_NAME`)))) where ((`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`columns`.`EXTRA` = 'auto_increment')) order by (`tables`.`AUTO_INCREMENT` / ((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `routines`.`ROUTINE_SCHEMA` AS `db`,`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `routines`.`ROUTINE_SCHEMA`,`routines`.`ROUTINE_TYPE` union select `tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `tables`.`TABLE_SCHEMA`,`tables`.`TABLE_TYPE` union select `statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `statistics`.`TABLE_SCHEMA`,`statistics`.`INDEX_TYPE` union select `triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `triggers`.`TRIGGER_SCHEMA` union select `events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = convert(`ibp`.`object_schema` using utf8mb4)) and (`pst`.`OBJECT_NAME` = convert(`ibp`.`object_name` using utf8mb4))))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((convert(`t`.`OBJECT_SCHEMA` using utf8) = `s`.`TABLE_SCHEMA`) and (convert(`t`.`OBJECT_NAME` using utf8) = `s`.`TABLE_NAME`) and (convert(`t`.`INDEX_NAME` using utf8) = `s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`s`.`NON_UNIQUE` = 1) and (`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.1' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((convert(`b`.`trx_id` using utf8mb4) = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((convert(`r`.`trx_id` using utf8mb4) = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`statement_latency`,`progress`,`lock_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`statistics`.`TABLE_NAME` AS `TABLE_NAME`,`statistics`.`INDEX_NAME` AS `INDEX_NAME`,max(`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if((`statistics`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`statistics`.`COLUMN_NAME` order by `statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`statistics`.`INDEX_TYPE` = 'BTREE') and (`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `statistics`.`TABLE_SCHEMA`,`statistics`.`TABLE_NAME`,`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = convert(`ibp`.`object_schema` using utf8mb4)) and (`pst`.`OBJECT_NAME` = convert(`ibp`.`object_name` using utf8mb4))))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `ecoplan`
--

USE `ecoplan`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07  9:41:45