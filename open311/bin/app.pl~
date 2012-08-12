#!/usr/bin/env perl
use Dancer;
use open311;
set serializer => 'JSON';


get qr/.+requests.json.+/ => sub {
    return {"hello" => "Hello World!"}
#    "blah"
#5000/requests.json?legacy=false&extensions=true
    };

dance;
