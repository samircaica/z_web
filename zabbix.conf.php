<?php
// Zabbix GUI configuration file.
global $DB;

$DB['TYPE']				= 'POSTGRESQL';
$DB['SERVER']			= 'pgsqlserver';
$DB['PORT']				= '5432';
$DB['DATABASE']			= 'zabbix_db';
$DB['USER']				= 'zabbix';
$DB['PASSWORD']			= 'zabbix';
// Schema name. Used for IBM DB2 and PostgreSQL.
$DB['SCHEMA']			= '';

$ZBX_SERVER				= 'zabbixserver';
$ZBX_SERVER_PORT		= '10051';
$ZBX_SERVER_NAME		= 'zabbixserver';

$IMAGE_FORMAT_DEFAULT	= IMAGE_FORMAT_PNG;