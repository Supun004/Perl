#!/usr/bin/perl

use Log::Log4perl qw(:easy);
Log::Log4perl->easy_init($DEBUG);

Log::Log4perl::Init('log4p.conf');

$logger = Log::Log4perl->get_logger('server_main');

Log::Log4perl.$logger->debug('------------Main server intializing-------------\n');