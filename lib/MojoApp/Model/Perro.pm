package MojoApp::Model::Perro;
use MojoApp::Config::Database;

sub new {
    my $class = shift;
    my $db = 'MojoApp::Config::Database';
    my $odb= $db->new();
    my $self = {
        _perros => $odb->getConnection()->get_collection( 'perros' )
    };

    bless $self, $class;
    return $self;
}

1;