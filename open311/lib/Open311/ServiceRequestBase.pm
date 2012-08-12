use Moose;

has 'jurisdiction_id' => (is => 'rw', isa => 'String'); # part of the url
has 'api_key' => (is => 'rw', isa => 'String'); # key
has 'service_code' => (is => 'rw', isa => 'String'); #
has 'lat' => (is => 'rw', isa => 'String'); # Double
has 'long' => (is => 'rw', isa => 'String'); # Double
has 'address_string' => (is => 'rw', isa => 'Int');
has 'address_id' => (is => 'rw', isa => 'Int');
has 'email' => (is => 'rw', isa => 'String');
has 'device_id' => (is => 'rw', isa => 'String');
has 'account_id' => (is => 'rw', isa => 'String');
has 'first_name' => (is => 'rw', isa => 'String');
has 'last_name' => (is => 'rw', isa => 'String');
has 'phone' => (is => 'rw', isa => 'String');
has 'description' => (is => 'rw', isa => 'String');
has 'media_url' => (is => 'rw', isa => 'String');
