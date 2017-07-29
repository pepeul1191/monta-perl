package MojoApp::Model::Gato;
use MojoApp::Config::Database;

sub new {
    my $class = shift;
    my $db = 'MojoApp::Config::Database';
    my $odb= $db->new();
    my $self = {
        _gatos => $odb->getConnection()->get_collection( 'gatos' )
    };

    bless $self, $class;
    return $self;
}

1;