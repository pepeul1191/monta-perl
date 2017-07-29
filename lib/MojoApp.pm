package MojoApp;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
    my $self = shift;

    #inicio hook CORS
    $self->hook(before_dispatch => sub {
        my $c = shift;
        $c->res->headers->header('Access-Control-Allow-Origin' => '*');
        $c->res->headers->header('x-powered-by' => 'Mojolicious (Perl)');
    });
    #fin hook CORS

    # Documentation browser under "/perldoc"
    $self->plugin('PODRenderer');

    #inicio CORS
    $self->plugin('SecureCORS');
    $self->plugin('SecureCORS', { max_age => undef });
    $self->routes->to('cors.credentials'=>1);
    #fin CORS

    # Router
    my $r = $self->routes;
    # criador
    $r->get('/criador/listar')->to('criador_controller#listar');
    # permiso
    $r->get('/permiso/listar')->to('permiso#listar');
    $r->get('/permiso/listar_asociados/:rol_id')->to('permiso#listar_asociados');
    $r->post('/permiso/guardar')->to('permiso#guardar');
}

1;
