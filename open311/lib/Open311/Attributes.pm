use Moose;

has 'start_date' => (is => 'rw', isa => 'String');
has 'end_date' => (is => 'rw', isa => 'String');
has 'status' => (is => 'rw', isa => 'String');
has 'jurisdiction_id' => (is => 'rw', isa => 'String');

