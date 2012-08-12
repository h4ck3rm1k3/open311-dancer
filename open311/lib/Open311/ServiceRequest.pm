use Moose;

has 'Latitude' => (is => 'rw', isa => 'String'); # Double
has 'Longitude' => (is => 'rw', isa => 'String'); # Double
has 'Address' => (is => 'rw', isa => 'String');
has 'Address_id' => (is => 'rw', isa => 'Int');
has 'Email' => (is => 'rw', isa => 'String');
has 'Device_id' => (is => 'rw', isa => 'String');
has 'Account_id' => (is => 'rw', isa => 'String');
has 'First_name' => (is => 'rw', isa => 'String');
has 'Last_name' => (is => 'rw', isa => 'String');
has 'Phone' => (is => 'rw', isa => 'String');
has 'Description' => (is => 'rw', isa => 'String');
has 'Media_url' => (is => 'rw', isa => 'String');



