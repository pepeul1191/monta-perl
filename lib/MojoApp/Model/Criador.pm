package MojoApp::Model::Criador;
use MojoApp::Config::Database;

sub new {
    my $class = shift;
    my $db = 'MojoApp::Config::Database';
    my $odb= $db->new();
    my $self = {
        _criadores => $odb->getConnection()->get_collection( 'criadores' )
    };

    bless $self, $class;
    return $self;
}

sub listar {
    my($self) = @_;
    my $docs = $self->{_criadores}->find();
    my @rpta;

    while (my $d = $docs->next) {
        $d->{'_id'} = $d->{'_id'} . '';
        push @rpta, $d;
    }

    return @rpta;
}

1;