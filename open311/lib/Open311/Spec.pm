package Open311::Spec;
use Moose; # automatically turns on strict and warnings
use Text::MediawikiFormat;

sub readSpec {
    my $self=shift;
    my $file=shift;
    my $data="";
    open IN, $file;
    while(<IN>)
    {
	$data .= $_;
    }
    close IN;
    $data;
}

sub writeSpecHTML {
    my $self=shift;
    my $file=shift;
    my $data=shift;
    open OUT, ">$file";
    print OUT $data;
    close OUT;
}

sub parseSpec 
{
    my $self=shift;
    my $file =shift;  
    my $raw = $self->readSpec($file);
    my $html = wikiformat ($raw);
    $self->writeSpecHTML("doc/examples/Spec.html",$html);
}

sub extractRequests(){
    my $self=shift;
}

sub extractResponses(){
    my $self=shift;
}

sub extractDatatypes(){
    my $self=shift;
}

sub extractXML(){
    my $self=shift;
}

sub extractJSON(){
    my $self=shift;
}

sub generateDancer(){
    my $self=shift;
}

sub generateDBIC(){
    my $self=shift;
}

1;
