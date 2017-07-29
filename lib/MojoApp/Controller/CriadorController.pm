package MojoApp::Controller::CriadorController;
use Mojo::Base 'Mojolicious::Controller';
use MojoApp::Model::Criador;
use JSON;
use JSON::XS 'decode_json';
use Data::Dumper;
use Try::Tiny;
use strict;
use warnings;

sub listar {
    my $self = shift;
    my $model = 'MojoApp::Model::Criador';
    my $criadores = $model->new();
    my @rpta = $criadores->listar();
    my $json_text = to_json \@rpta;

    $self->render(text => ("$json_text"));
}

1;