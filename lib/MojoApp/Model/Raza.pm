package MojoApp::Model::Raza;
use MojoApp::Config::Database;

sub new {
    my $class = shift;
    my $db = 'MojoApp::Config::Database';
    my $odb= $db->new();
    my $self = {
        _raza => $odb->getConnection()->get_collection( 'razas' )
    };

    bless $self, $class;
    return $self;
}

1;