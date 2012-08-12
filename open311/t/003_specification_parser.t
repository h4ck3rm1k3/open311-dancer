use Open311::Spec;

my $rawurl = "http://wiki.open311.org/index.php?title=GeoReport_v2&action=raw";
#my $datafile = "t/003_specification.wiki";
my $datafile = "t/003_specification_api_method_nowiki.wiki";
my $output_base  = "doc/examples/";
my $requests  = $output_base ."/requests/";
my $responses = $output_base ."/responses/";

my $spec = Open311::Spec->new();
$spec->parseSpec($datafile);
$spec->extractRequests();
$spec->extractResponses();
$spec->extractDatatypes();
$spec->extractXML();
$spec->extractJSON();
$spec->generateDancer();
$spec->generateDBIC();


