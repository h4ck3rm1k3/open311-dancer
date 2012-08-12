use Moose;
# parameters to the service request
has 'jurisdiction_id' => (is => 'rw', isa => 'String'); # part of the url
has 'service_request_id' => (is => 'rw', isa => 'String'); # key
has 'service_code' => (is => 'rw', isa => 'String'); #
has 'start_date' => (is => 'rw', isa => 'String');
has 'end_date' => (is => 'rw', isa => 'String');
has 'status' => (is => 'rw', isa => 'String');
