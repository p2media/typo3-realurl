#
# Table structure for table 'tx_realurl_pathcache'
#
CREATE TABLE tx_realurl_pathcache (
  cache_id int(11) DEFAULT '0' NOT NULL auto_increment,
  page_id int(11) DEFAULT '0' NOT NULL,
  language_id int(11) DEFAULT '0' NOT NULL,
  hash varchar(10) DEFAULT '' NOT NULL,
  pagepath text NOT NULL,
  expire int(11) DEFAULT '0' NOT NULL,

  PRIMARY KEY (cache_id),
  KEY hash (hash)
);

#
# Table structure for table 'tx_realurl_uniqalias'
#
CREATE TABLE tx_realurl_uniqalias (
  uid int(11) DEFAULT '0' NOT NULL auto_increment,
  tstamp int(11) DEFAULT '0' NOT NULL,
  tablename varchar(30) DEFAULT '' NOT NULL,
  field_alias varchar(30) DEFAULT '' NOT NULL,
  field_id varchar(30) DEFAULT '' NOT NULL,
  value_alias tinytext NOT NULL,
  value_id int(11) DEFAULT '0' NOT NULL,

  PRIMARY KEY (uid),
  KEY tablename (tablename)
);

#
# Table structure for table 'tx_realurl_chashcache'
#
CREATE TABLE tx_realurl_chashcache (
  spurl_hash int(11) DEFAULT '0' NOT NULL,
  chash_string varchar(10) DEFAULT '' NOT NULL,

  PRIMARY KEY (spurl_hash),
  KEY tablename (chash_string)
);
