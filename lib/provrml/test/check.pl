:- module(check,[go/1],[]).

:- use_module(library(provrml)).
:- use_module(library(write)).
:- use_module(library(streams)).

get_file(cone, library(provrml/vrml_code/'cone.vrml')).
get_file(kurvan, library(provrml/vrml_code/'kurvan.wrl')).

go(Image) :-
    get_file(Image, File),
    vrml_file_to_terms(File, Terms),
    writeq(Terms),
    nl.
