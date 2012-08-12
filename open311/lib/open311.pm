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

get '/requests/('. $request_id_re . '):format'     => sub {
#  jurisdiction_id
    my $requestid=splat;
    if ($requestid eq "missing")
    {
	return ;
    }
    
    my $response_body= to_json(	
	#array of responses
	[

	 ######################################################
	 # only the first is used
	 {
	     service_request_id => "1234567",
	     service_name => "the name of the service",
	     address => "Title, needs comma? , comma",
	     requested_datetime => "2011-01-31 10:10:10",
	     status => "open",
	     description => "some description",
	     agency_responsible => "agency_responsible",
	     extended_attributes=> {
		 service_request_id => "1234",
		 channel => "Funky!",
	     },
	     notes => [
		 ###NOTE 1 #################
		 {		     
		     datetime => "2011-01-31 10:10:10",
		     text => "A note",
		     summary => "Summary",
		     description=> "Description",
		     type => "no_follow_on",
		     extended_attributes => {
			 service_name => "Service Name",
			 agency_responsible => "agency_responsible",
			 closed_datetime => "2011-01-31 10:10:10",
		     },
		 },		 
		 ###NOTE 2 #################
		 {
		     datetime => "2011-01-31 10:10:10",
		     text => "another one",
		     summary => "Summary",
		     description=> "Description",
		     type => "follow_on",
		     extended_attributes=> {
			 service_request_id => "1234",
			 service_name => "Service Name",
			 agency_responsible => "agency_responsible",
			 closed_datetime => "2011-01-31 10:10:10",			     
		     }
		 }
		 ###END OF NOTES #################
		 ],	     
	 }
	 ## end of request	 
	]
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
