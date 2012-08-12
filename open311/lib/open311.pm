package open311;
use Dancer ':syntax';
use Dancer::Plugin::REST;

#prepare_serializer_for_format;

our $VERSION = '0.1';

#my $request_id_re = "[0-9]+|[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}";
my $request_id_re = "[A-Fa-f0-9]+"; # simple test id
#my $token_id_re = "[0-9]+|[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}";
#my $service_id_re = "[0-9]+|[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}";

# requests

# get '/requests:format'     => sub {
# # start_date
# # end_date
# # status
# # jurisdiction_id
# };
#

get '/requests.json'     => sub {
    my $response_body= to_json(	
	{
	    "hello" => 4,
	    'list' => [
		"d",
		"f"
		]
		
	}
	);
    debug "going to return $response_body\n";
    return $response_body;
};

get '/requests.json'     => sub {
# legacy=false
# extensions=true 
    my $response_body= to_json(	
	{
	    "hello" => 1,
	    'list' => [
		"a",
		"b"
		]
		
	}
	);
    debug "going to return $response_body\n";
    return $response_body;
};

get '/requests/('. $request_id_re . '):format'     => sub {
#  jurisdiction_id
    my $response_body= to_json(	
	{
	    "hello" => 10,
	    'this' => [
		"should",
		"be",
		"a",
		"request"
		]
		
	}
	);
    debug "going to return $response_body\n";
    return $response_body;    
};

# # services 
# get '/services:format'     => sub {
# #jurisdiction_id
# };

# get '/services/('. $service_id_re. '):format'  => sub {
# #jurisdiction_id
# };

# # tokens 
# get '/tokens/('. $token_id_re. '):format'     => sub {
# # ?jurisdiction_id=city.gov</nowiki>
# };

# get '/discovery' => sub {   };


# get '/requests:format'    => sub { 
#     1;
# };

# post  '/requests:format'     => sub {};

# get '/' => sub {
#     template 'index';
# };

# get qr/.+requests.json.+/ => sub {
#     return {"hello" => "Hello World!"}
# #    "blah"
# #requests.json?legacy=false&extensions=true
#     };


true;
