#!/usr/perl/bin

use REST::Client;

my $client = REST::Client->new();

$client->getUseragent()->ssl_opts(verify_hostname => 0);
$client->getUseragent()->ssl_opts(SSL_verify_mode => SSL_VERIFY_NONE);

$client->addHeader('X-DreamFactory-API-Key', 'YOUR_API_KEY');
$client->addHeader('cache-control', 'no-cache');

$client->GET("https://example.com/api/v2/db/_table/contact_info?limit=56");

print $client->responseContent();