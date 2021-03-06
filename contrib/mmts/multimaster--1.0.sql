-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION multimaster" to load this file. \quit

CREATE FUNCTION mtm.start_replication() RETURNS void
AS 'MODULE_PATHNAME','mtm_start_replication'
LANGUAGE C;

CREATE FUNCTION mtm.stop_replication() RETURNS void
AS 'MODULE_PATHNAME','mtm_stop_replication'
LANGUAGE C;

CREATE FUNCTION mtm.drop_node(node integer, drop_slot bool default false) RETURNS void
AS 'MODULE_PATHNAME','mtm_drop_node'
LANGUAGE C;

CREATE FUNCTION mtm.get_snapshot() RETURNS bigint
AS 'MODULE_PATHNAME','mtm_get_snapshot'
LANGUAGE C;

CREATE TABLE IF NOT EXISTS mtm.ddl_log (issued timestamp with time zone not null, query text);
