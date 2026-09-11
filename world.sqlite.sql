-- World SQLite schema
-- Canonical source: world.json

PRAGMA foreign_keys = ON;

CREATE TABLE world (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    thesis TEXT NOT NULL
);

CREATE TABLE ontology (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    definition TEXT
);

CREATE TABLE genesis (
    id INTEGER PRIMARY KEY,
    seq INTEGER NOT NULL,
    step TEXT NOT NULL UNIQUE
);

CREATE TABLE relation (
    id INTEGER PRIMARY KEY,
    subject TEXT NOT NULL,
    predicate TEXT NOT NULL,
    object TEXT NOT NULL
);

CREATE TABLE metadata (
    key TEXT PRIMARY KEY,
    value TEXT NOT NULL
);
