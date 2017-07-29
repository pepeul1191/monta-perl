package MojoApp::Controller::GatoController;
use Mojo::Base 'Mojolicious::Controller';
use MojoApp::Model::Criador;
use JSON;
use JSON::XS 'decode_json';
use Data::Dumper;
use Try::Tiny;
use strict;
use warnings;

1;