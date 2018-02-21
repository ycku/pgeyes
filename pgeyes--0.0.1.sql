-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pgeyes" to load this file. \quit
CREATE OR REPLACE FUNCTION pgeyes()
RETURNS boolean
LANGUAGE plpgsql IMMUTABLE STRICT
  AS $$
    BEGIN
    RETURN true;
    END;
  $$;